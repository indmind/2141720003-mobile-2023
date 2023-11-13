import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationS extends StatefulWidget {
  const LocationS({super.key});

  @override
  State<LocationS> createState() => _LocationSState();
}

class _LocationSState extends State<LocationS> {
  String myPosition = "";

  @override
  void initState() {
    super.initState();

    getPosition().then((value) {
      setState(() {
        myPosition =
            "Latitude: ${value.latitude}, Longitude: ${value.longitude}";
      });
    });
  }

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();

    Position? position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location Tio'),
      ),
      body: Center(
        child: Text(myPosition),
      ),
    );
  }
}
