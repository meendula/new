import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTab extends StatefulWidget {
  @override
  _MapTabState createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {
  late GoogleMapController _controller;

  final List<Marker> _markers = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(45.523064, -122.676483), // Example coordinates
      infoWindow: InfoWindow(title: 'The Cathedral'),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(45.5155, -122.6856), // Example coordinates
      infoWindow: InfoWindow(title: 'Oregon Zoo'),
    ),
    // Add more markers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(45.523064, -122.676483), // Example coordinates
        zoom: 12,
      ),
      markers: Set.from(_markers),
      onMapCreated: (controller) {
        _controller = controller;
      },
    );
  }
}
