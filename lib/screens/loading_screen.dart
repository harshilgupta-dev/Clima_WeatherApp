import 'package:clima_weather_app/services/location.dart';
import 'package:clima_weather_app/services/networking.dart';
import 'package:flutter/material.dart';

const apiKey = '2e865217e441d180a435b0901bc84401';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentPosition();
    latitude = location.latitude;
    longitude = location.latitude;

    NetworkHelper networkHelper = NetworkHelper(
        url:
            'https://api.openweathermap.org/data/2.5/weather?lat=27.8941111&lon=78.101502&appid=2e865217e441d180a435b0901bc84401');
    var weatherData = await networkHelper.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
