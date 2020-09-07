import 'package:geolocator/geolocator.dart';
String country;
class Location{
  Future<Position> getLocation() async{
    //code to get current location
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      return position;
  }
}