import 'package:ayudantia/address.dart';
import 'package:ayudantia/company.dart';
import 'package:ayudantia/geo.dart';

class Response {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? link;
  Company? company;

  Response(int id, String name, String username, String email, Address address,
      String phone, String link, Company company) {
    this.id = id;
    this.name = name;
    this.username = username;
    this.email = email;
    this.address = address;
    this.phone = phone;
    this.link = link;
    this.company = company;
  }

  Response.newCons({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.link,
    this.company,
  });

  factory Response.fromJSON(Map<dynamic, dynamic> json) {
    Geo geo = Geo(
      json['address']['geo']['lat'],
      json['address']['geo']['lng'],
    );

    Address add = Address(
      json['address']['street'],
      json['address']['suite'],
      json['address']['city'],
      json['address']['zipcode'],
      geo,
    );

    Company comp = Company(
      json['company']['name'],
      json['company']['catchPhrase'],
      json['company']['bs'],
    );

    return Response.newCons(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: add,
      phone: json['phone'] as String,
      link: json['website'] as String,
      company: comp,
    );
  }
}
