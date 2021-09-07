import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'info.dart';

class ApiService {
  final String url = "https://api.publicapis.org/random"; // Public API

  // GET FUNCTION
  Future<List<Info>> getInfo() async {
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse['entries'][0]['API']);

      return (jsonResponse['entries'] as List)
          .map((e) => Info.fromJSON(e))
          .toList();
    }
    throw Exception('Failed to load Info from API');
  }
}
