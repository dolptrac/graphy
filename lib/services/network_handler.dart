import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHandler {
  NetworkHandler({this.apiKey});

  final String? apiKey;

  Future<dynamic>? getRequest(String url) async {
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        "Authorization": "Bearer $apiKey",
        "Accept": "Application/json",
      },
    );

    try {
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data);
        return data;
      }
    } catch (e) {
      print(response.statusCode);
    }
  }
}
