import 'package:clima_weather_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'dart:convert';

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

    http.Response response= await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=27.8941111&lon=78.101502&appid=2e865217e441d180a435b0901bc84401'));

    if(response.statusCode==200){
      String data=response.body;

      var id=jsonDecode(data)['weather'][0]['id'];
      print(id);

      var temperature=jsonDecode(data)['main']['temp'];
      print(temperature);

    }else {
      print("Can't get data from link plz re-check it");
    }

  }

  @override
  Widget build(BuildContext context) {
    print('App is building now');
    getData();
    return Scaffold();
  }

  @override
  void deactivate() {
    super.deactivate();
    print('App deactivate '); //when one screen close(Navigator.pop(context))
  }
}
