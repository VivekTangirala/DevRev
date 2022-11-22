import 'dart:developer';
import 'dart:io';

import '../file_exporter.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static String baseUrl =
      "http://localhost:8000/"; //for api calls using local host localhost:8000/user/
  static Future<List<ApiResponseDemo>> getApiResponseDemo(
      String extension) async {
    var uri = Uri.parse(baseUrl);
    var response;
    try {
      response = await http.get(uri, headers: {
        HttpHeaders.authorizationHeader:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MTIxMjQ5LCJpYXQiOjE2NjkxMjA5NDksImp0aSI6IjBlNzliMTM1NWRkNjRlZTI5MmVmNmRlMGQ4MjcwNDliIiwidXNlcl9pZCI6MX0.V7xDKV4-k9xPtWtt5ASJFKs3hdzxvG9GZ-SLL76jrMg'
      });
    } catch (e) {
      log("Caught exception $e");
    }
    String body = "";
    if (response.statusCode == 200 || response.statusCode == 201) {
      body = response.body;
    }
    return apiResponseDemoFromJson(body);
  }
}
