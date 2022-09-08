import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

// void main() {
//   runApp(const OpenStressMap());
// }

class OpenStressMap extends StatefulWidget {
  const OpenStressMap({Key? key}) : super(key: key);

  @override
  _OpenStressMapState createState() => _OpenStressMapState();
}

final LatLng nepal = LatLng(28.3949, 84.1240);

class _OpenStressMapState extends State<OpenStressMap> {
  late final MapController _mapController;
  final double _rotation = 0;
  late LocationData _currentPosition;

  Location location = Location();
  LatLng _initialcameraposition = LatLng(0.5937, 0.9629);

  @override
  void initState() {
    super.initState();
    getLoc();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Map'),
      ),
      body: FlutterMap(
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
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: _initialcameraposition,
                builder: (ctx) => Container(
                  child: IconButton(
                    icon: const Icon(Icons.location_on),
                    color: Colors.red,
                    iconSize: 45.0,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  getLoc() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _currentPosition = await location.getLocation();
    print(_currentPosition);
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
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
}
