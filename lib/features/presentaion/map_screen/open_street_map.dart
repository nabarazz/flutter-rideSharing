import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:ridesharingv1/app/local_db/local_db_notifier.dart';
import 'package:ridesharingv1/core/base_state/base_state.dart';
import 'package:ridesharingv1/core/extension/snack_bar_extension.dart';
import 'package:ridesharingv1/features/application/ride_sharing_controller.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_response.dart';
import 'package:ridesharingv1/features/infrastructure/entities/ride_request/ride_request.dart';
import 'package:ridesharingv1/features/presentaion/settings/seting_screen.dart';

final _rideRequestController = StateNotifierProvider<AuthController, BaseState>(
  authController,
);

class OpenStreetMapScreen extends ConsumerStatefulWidget {
  const OpenStreetMapScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OpenStreetMapScreenState();
}

class _OpenStreetMapScreenState extends ConsumerState<OpenStreetMapScreen> {
  late final MapController _mapController;
  final double _rotation = 0;
  late LocationData _currentPosition;

  Location location = Location();
  LatLng _initialcameraposition = LatLng(0.5937, 0.9629);

  late LoginResponse loginResponse;
  ValueNotifier<String> _currentAddress = ValueNotifier('');
  final _formKey = GlobalKey<FormState>();
  late LatLng destinationLatLng = LatLng(0.0, 0.0);

  var destinationAddress = '';
  var priceAmount = '';

  @override
  void initState() {
    _currentAddress = ValueNotifier('');
    fetchData();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void fetchData() async {
    await getLoc();
    await getAddress();
  }

  void getLatLng(String destinationLocation) async {
    List<geocoding.Location> locations =
        await geocoding.locationFromAddress(destinationLocation);
    destinationLatLng = LatLng(locations[0].latitude, locations[0].longitude);
    log('destination location lat $destinationLatLng');
  }

  Future<void> getAddress() async {
    List<geocoding.Placemark> placemarks =
        await geocoding.placemarkFromCoordinates(
      _currentPosition.latitude ?? 0.0,
      _currentPosition.longitude ?? 0.0,
    );
    final userCL = placemarks[0];
    final userCurrentAddress =
        '${userCL.thoroughfare}, Street:${userCL.street}, ${userCL.locality}-${userCL.country}.';
    log(userCurrentAddress);
    _currentAddress.value = userCurrentAddress;
  }

  void _onMapCreated(MapController controller) {
    _mapController = controller;
    location.onLocationChanged.listen((LocationData currentLocation) {
      setState(() {
        _currentPosition = currentLocation;
        _initialcameraposition =
            LatLng(_currentPosition.latitude!, _currentPosition.longitude!);
        _mapController.move(_initialcameraposition, _mapController.zoom);
      });
    });
  }

  void getUserData() async {
    final localStorage =
        await ref.read(localDataSourceNotifier).getAuthResponse();
    loginResponse = localStorage!;
  }

  Future<void> getLoc() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _currentPosition = await location.getLocation();
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          _initialcameraposition =
              LatLng(_currentPosition.latitude!, _currentPosition.longitude!);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    ref.listen<BaseState<dynamic>>(_rideRequestController, (oldState, state) {
      state.maybeWhen(
        loading: () {},
        success: (_) async {
          getLatLng(destinationAddress);
        },
        error: (fail) {},
        orElse: () {},
      );
    });
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Ride Sharing'),
          actions: [
            IconButton(
              onPressed: () async {
                final userData =
                    await ref.read(localDataSourceNotifier).getAuthResponse();
                // ignore: use_build_context_synchronously
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SettingScreen(userData: userData!),
                  ),
                );
              },
              icon: const Icon(Icons.settings),
            )
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            FlutterMap(
              options: MapOptions(
                center: _initialcameraposition,
                zoom: 13.0,
                maxZoom: 18.0,
                minZoom: 5.0,
                rotation: _rotation,
                onMapCreated: _onMapCreated,
              ),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: _initialcameraposition,
                      builder: (ctx) => IconButton(
                        icon: const Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize: 45.0,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                if (destinationLatLng.latitude != 0.0 &&
                    destinationLatLng.latitude != 0.0)
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: destinationLatLng,
                        builder: (ctx) => IconButton(
                          icon: const Icon(Icons.location_on),
                          color: Colors.green,
                          iconSize: 45.0,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            Container(
              height: 130,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
                child: Column(
                  children: [
                    if (_currentAddress.value.isNotEmpty)
                      Text(
                        'From: ${_currentAddress.value}',
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            Text(
                              'From',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              barrierColor: Colors.transparent,
                              context: context,
                              elevation: 10,
                              isScrollControlled: true,
                              builder: (context) {
                                return ShowBSheet(
                                  userCurrentL: _currentAddress.value,
                                  currentLOnChanged: (currL) {
                                    if (currL.isNotEmpty &&
                                        _currentAddress.value != currL) {
                                      _currentAddress.value = currL;
                                    }
                                  },
                                  destinationLOnChanged: (desL) {
                                    destinationAddress = desL;
                                  },
                                  priceLOnChanged: (price) {
                                    priceAmount = price;
                                  },
                                  onConfirmed: () async {
                                    final price = double.parse(priceAmount);
                                    final data = RideRequest(
                                      pick_up_address: _currentAddress.value,
                                      drop_off_address: destinationAddress,
                                      price: price.toString(),
                                      status: 'REQUESTED',
                                    );
                                    log(data.toString());
                                    ref
                                        .read(_rideRequestController.notifier)
                                        .requestRide(rideRequest: data);
                                  },
                                );
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: mediaQuery.width / 7,
                                vertical: 12,
                              ),
                              child: const Text(
                                'Search Destination',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                            Text(
                              'To',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    if (destinationAddress.isNotEmpty)
                      Text(
                        'To: $destinationAddress',
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowBSheet extends ConsumerStatefulWidget {
  const ShowBSheet({
    Key? key,
    required this.userCurrentL,
    this.destinationLOnChanged,
    this.currentLOnChanged,
    this.priceLOnChanged,
    required this.onConfirmed,
  }) : super(key: key);

  final String userCurrentL;
  final Function(String)? destinationLOnChanged;
  final Function(String)? currentLOnChanged;
  final Function(String)? priceLOnChanged;
  final VoidCallback onConfirmed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShowBSheetState();
}

class _ShowBSheetState extends ConsumerState<ShowBSheet> {
  late String _currentLocation;
  final currentL = TextEditingController();
  final searchL = TextEditingController();
  final priceAmount = TextEditingController();
  final currentLFn = FocusNode();
  final searchLFn = FocusNode();
  final priceFn = FocusNode();

  final _formKey = GlobalKey<FormState>();
  ValueNotifier<String> _errorNotifier = ValueNotifier('');
  @override
  void initState() {
    _currentLocation = widget.userCurrentL;
    currentL.text = _currentLocation;
    _errorNotifier = ValueNotifier('');
    super.initState();
  }

  @override
  void dispose() {
    currentL.dispose();
    searchL.dispose();
    priceAmount.dispose();
    currentLFn.dispose();
    searchLFn.dispose();
    priceFn.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ref.listen<BaseState<dynamic>>(_rideRequestController, (oldState, state) {
      state.maybeWhen(
        loading: () async {
          await showDialog(
            context: context,
            builder: (context) => Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            ),
          );
        },
        success: (_) async {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        },
        error: (fail) {
          _errorNotifier.value = fail.errorMessage;
          context.showSnackBar(
            context,
            fail.errorMessage,
            Icons.error,
            Colors.red,
          );
          Navigator.of(context).pop();
        },
        orElse: () {},
      );
    });
    return Form(
      key: _formKey,
      child: Container(
        height: size.height * 0.8,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                      SizedBox(width: size.width / 4.3),
                      Text(
                        'Select Location'.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  style: const TextStyle(fontSize: 12),
                  controller: currentL,
                  focusNode: currentLFn,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Current Location',
                    labelStyle: TextStyle(fontSize: 14),
                    isDense: true,
                    contentPadding: EdgeInsets.all(18),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Current location is empty';
                    }
                    return null;
                  },
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(searchLFn);
                  },
                  onChanged: widget.currentLOnChanged,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  focusNode: searchLFn,
                  autofocus: true,
                  style: const TextStyle(fontSize: 12),
                  controller: searchL,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Destination Location',
                    labelStyle: TextStyle(fontSize: 14),
                    isDense: true,
                    contentPadding: EdgeInsets.all(18),
                  ),
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(priceFn);
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Searched location is empty';
                    }
                    return null;
                  },
                  onChanged: widget.destinationLOnChanged,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  focusNode: priceFn,
                  autofocus: true,
                  style: const TextStyle(fontSize: 12),
                  controller: priceAmount,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Price',
                    labelStyle: TextStyle(fontSize: 14),
                    isDense: true,
                    contentPadding: EdgeInsets.all(18),
                  ),
                  onEditingComplete: () {
                    FocusScope.of(context).unfocus();
                  },
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Amount is empty';
                    }
                    return null;
                  },
                  onChanged: widget.priceLOnChanged,
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    _errorNotifier.value,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: size.width * 0.62,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _errorNotifier.value = '';
                          widget.onConfirmed();
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Confirm Location'.toUpperCase(),
                            ),
                            const SizedBox(width: 10),
                            const Icon(Icons.location_on)
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
