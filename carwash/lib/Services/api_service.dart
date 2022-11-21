import 'dart:convert';

import '../file_exporter.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<ApiResponseDemo>> getApiResponseDemo() async {
    var uri = Uri.parse("http://jsonplaceholder.typicode.com/posts");
    var response = await http.get(uri);
    String body = "";
    if (response.statusCode == 200 || response.statusCode == 201) {
      body = response.body;
    }
    return apiResponseDemoFromJson(body);
  }
}
