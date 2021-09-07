import 'package:ayudantia/geo.dart';

class Address {
  String? street;
  String? suite;
  String? city;
  String? zip;
  Geo? geo;

  Address(String street, String suite, String city, String zip, Geo geo) {
    this.street = street;
    this.suite = suite;
    this.city = city;
    this.zip = zip;
    this.geo = geo;
  }
}
