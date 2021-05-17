import 'package:geolocator/geolocator.dart';

class Location{
   double latitude;
   double longitude;



  void getCurrentPosition() async{
    Position position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }

}
