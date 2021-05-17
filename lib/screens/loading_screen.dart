import 'package:clima_weather_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:clima_weather_app/services/location.dart';
import 'package:http/io_client.dart';

class LoadingScreen extends StatefulWidget {



  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    print('App starts');
  }

  @override
  Widget build(BuildContext context) {
    print('App is building now');
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

  @override
  void deactivate() {
    super.deactivate();
    print('App deactivate');
  }
}
