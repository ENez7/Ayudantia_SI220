import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'modelo.dart';

class ApiService {
  final link = 'https://magico.azurewebsites.net/magic';

  Future<Modelo> getData() async {
    var response = await http.get(Uri.parse(link), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200)
      return Modelo.fromJSON(json.decode(response.body));

    throw Exception(
        'Error en la respuesta : ' + response.statusCode.toString());
  }
}
