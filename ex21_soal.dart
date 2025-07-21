class Location {
  double _latitude;
  double _longitude;

  Location(this._latitude, this._longitude);

  void setLocation(double latitude, double longitude) {
    _latitude = latitude;
    _longitude = longitude;
  }

  set latitude(double value) => _latitude = value;
  set longitude(double value) => _longitude = value;

  double get latitude => _latitude;
  double get longitude => _longitude;

  void printLocation() {
    print('Latitude : $latitude, longitude : $longitude');
  }
}

void main(List<String> args) {
  Location myLocation = Location(1.23456789, 127.987654321);
  myLocation.printLocation();
  myLocation.setLocation(3.123456789, 100.123456789);
  myLocation.printLocation();
  myLocation.latitude = 4.123456789;
  myLocation.longitude = 101.123456789;
  myLocation.printLocation();
}
