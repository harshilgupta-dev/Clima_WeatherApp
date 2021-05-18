import 'package:clima_weather_app/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';

class NetworkHelper {
  NetworkHelper({@required this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;

      int condition = jsonDecode(data)['weather'][0]['id'];
      print(condition);

      double temperature = jsonDecode(data)['main']['temp'];
      print(temperature);

      String cityName = jsonDecode(data)['name'];
      print(cityName);
    } else {
      print("Can't get data from link plz re-check it");
    }
  }
}
