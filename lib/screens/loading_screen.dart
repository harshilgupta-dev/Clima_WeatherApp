import 'package:clima_weather_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:clima_weather_app/services/location.dart';

class LoadingScreen extends StatefulWidget {



  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            Location location=Location();
            await location.getCurrentPosition();
            print(location.longitude);
            print(location.latitude);
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
