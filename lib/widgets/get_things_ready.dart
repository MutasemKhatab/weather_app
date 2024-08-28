import 'package:flutter/material.dart';
import 'package:some_random_design1/screens/home.dart';

import '../helpers/location_permission_handler.dart';
import '../providers/forecast/weather.dart';

class GetThingsReady extends StatelessWidget {
  const GetThingsReady({super.key});

  //make a future builder to fetch the data once and get location permission then use the data in widgets
  Future<void> future(BuildContext context) async {
    final locationPermission = LocationPermissionHandler(context);

    await locationPermission.request;
    await Weather.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }
        return const Home();
      },
    );
  }
}
