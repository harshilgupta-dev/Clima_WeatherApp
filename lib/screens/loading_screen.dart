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

  void getLocation() async{
    Location location=Location();
    await location.getCurrentPosition();
    print(location.longitude);
    print(location.latitude);
  }

  void getData(){

  }

  @override
  Widget build(BuildContext context) {
    print('App is building now');
    return Scaffold();
  }

  @override
  void deactivate() {
    super.deactivate();
    print('App deactivate '); //when one screen close(Navigator.pop(context))
  }
}
