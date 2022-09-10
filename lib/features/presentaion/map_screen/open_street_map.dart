import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:ridesharingv1/app/local_db/local_db_notifier.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_response.dart';
import 'package:ridesharingv1/features/presentaion/settings/seting_screen.dart';

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
  final _searchedLController = TextEditingController();
  final _currentLController = TextEditingController();
  ValueNotifier<String> _currentAddress = ValueNotifier('');

  @override
  void initState() {
    _currentAddress = ValueNotifier('');
    fetchData();
    super.initState();
  }

  void fetchData() async {
    await getLoc();
    await getAddress();
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
  void dispose() {
    _searchedLController.dispose();
    _currentLController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ride Sharing'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const SettingScreen(),
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
                  Text(
                    _currentAddress.value,
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.red,
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
                                currentL: _currentLController,
                                searchL: _searchedLController,
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
                      const Icon(Icons.local_taxi),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShowBSheet extends ConsumerStatefulWidget {
  const ShowBSheet({
    Key? key,
    required this.currentL,
    required this.searchL,
    required this.userCurrentL,
  }) : super(key: key);

  final TextEditingController currentL;
  final TextEditingController searchL;
  final String userCurrentL;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ShowBSheetState();
}

class _ShowBSheetState extends ConsumerState<ShowBSheet> {
  late String _currentLocation;
  @override
  void initState() {
    _currentLocation = widget.userCurrentL;
    widget.currentL.text = _currentLocation;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
                controller: widget.currentL,
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
              ),
              const SizedBox(height: 15),
              TextFormField(
                autofocus: true,
                style: const TextStyle(fontSize: 12),
                controller: widget.searchL,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Searched Location',
                  labelStyle: TextStyle(fontSize: 14),
                  isDense: true,
                  contentPadding: EdgeInsets.all(18),
                ),
                onEditingComplete: () {
                  FocusScope.of(context).unfocus();
                },
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Searched location is empty';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: size.width * 0.62,
                  child: ElevatedButton(
                    onPressed: () {},
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
    );
  }
}
