import 'dart:async';
import 'dart:convert';
import 'model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final url = 'https://jsonplaceholder.typicode.com/photos/';

  Future<Model> getData(int id) async {
    var response = await http.get(
      Uri.parse(url + id.toString()),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
    );

    if (response.statusCode == 200)
      return Model.fromJson(json.decode(response.body));

    throw Exception('Falla');
  }
}
