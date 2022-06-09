import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:runiverse/config/palette.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class runningVer2 extends StatefulWidget {
  const runningVer2({Key? key}) : super(key: key);

  @override
  State<runningVer2> createState() => _runningVer2State();
}

class _runningVer2State extends State<runningVer2> {

  late GoogleMapController googleMapController;

  static const CameraPosition initialCameraPosition = CameraPosition(
      target: LatLng(37.528067, 127.036326),
      zoom: 14
  );

  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        markers: markers,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller){
          googleMapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
            Position position = await _determinePosition();
            googleMapController.animateCamera(
                CameraUpdate.newCameraPosition(
                    CameraPosition(
                        target: LatLng(position.latitude, position.longitude))));

            markers.clear();
            markers.add(
                Marker(
                    markerId: const MarkerId('currentLocation'),
                    position: LatLng(position.latitude, position.longitude)));

            setState((){});
          },
        label: const Text("Start Running"),
        icon: Icon(Icons.run_circle_outlined),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if(!serviceEnabled) {
      return Future.error('Location Services are Disabled!');
    }

    permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if(permission == LocationPermission.denied) {
        return Future.error('Location Permissions are Disabled!');
      }
    }

    if(permission == LocationPermission.deniedForever) {
      return Future.error('Location Permissions are Permanently denied!');
    }

    Position position = await Geolocator.getCurrentPosition();
    return position;

  }
}
