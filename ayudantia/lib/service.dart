import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'response.dart';

class ApiService {
  final String url = 'https://jsonplaceholder.typicode.com/users/';

  // GET FUNCTION
  Future<Response> getResponse(int id) async {
    var response = await http.get(Uri.parse(url + id.toString()), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    });

    if (response.statusCode == 200) {
      Response resp = Response.fromJSON(json.decode(response.body));
      return resp;
    }
    throw Exception('Respuesta incorrecta');
  }
}
