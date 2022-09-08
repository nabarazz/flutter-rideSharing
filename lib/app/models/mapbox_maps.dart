import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';

class maps extends StatefulWidget {
  const maps({Key? key}) : super(key: key);

  @override
  State<maps> createState() => _mapsState();
}

class _mapsState extends State<maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(37.42796133580664, -122.085749655962),
          zoom: 14.4746,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://api.mapbox.com/styles/v1/nabrazbh995/cl6ykspyf001015r0qcq2gbal/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibmFicmF6Ymg5OTUiLCJhIjoiY2w2eWprZXZ4MHc5dDNjcGR3NHhsYnliaCJ9.YrC-YFkMAP6mTf3dABhHxA',
            additionalOptions: {
              'accessToken': 'pk.eyJ1IjoibmFicmF6Ymg5OTUiLCJhIjoiY2w2eWprZXZ4MHc5dDNjcGR3NHhsYnliaCJ9.YrC-YFkMAP6mTf3dABhHxA',
              'id': 'mapbox.mapbox-streets-v8',
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(37.42796133580664, -122.085749655962),
                builder: (ctx) => Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on),
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
}
