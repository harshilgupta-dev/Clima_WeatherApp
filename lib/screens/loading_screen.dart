import 'package:clima_weather_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
    getLocation();
  }

  void getLocation() async{
    Location location=Location();
    await location.getCurrentPosition();
    print(location.longitude);
    print(location.latitude);
  }

  void getData() async {
    http.Response response= await http.get(Uri.parse('http://api.openweathermap.org/data/2.5/weather?lat=27.8941111&lon=78.101502&appid=2e865217e441d180a435b0901bc84401'));
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
