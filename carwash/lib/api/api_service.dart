import 'dart:developer';
import 'dart:io';

import '../file_exporter.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static String baseUrl =
      "http://localhost:8000/"; //for api calls using local host localhost:8000/user/
  static Future<String> getApiResponseDemo(String extension) async {
    var uri = Uri.parse(baseUrl + extension);
    http.Response? response;
    log("Inside make api call");
    try {
      response = await http.get(uri, headers: {
        HttpHeaders.authorizationHeader:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY5MTI2MDM2LCJpYXQiOjE2NjkxMjU3MzYsImp0aSI6IjM0MWIyNGViMDg5ZDRmOWY5ZTFmZmUwZWI4YTAxNzc1IiwidXNlcl9pZCI6MX0.y2sHbI20GgVCK4q9KF3JWwnhuVA81x3EquI5rLKkwvQ'
      });
    } catch (e) {
      log("Caught exception $e");
    }
    String body = "";
    if (response?.statusCode == 200 || response?.statusCode == 201) {
      body = response?.body ?? "";
    }
    log("Status code is ${response?.statusCode}");
    return body;
  }
}
