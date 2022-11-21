// To parse this JSON data, do
//
//     final apiResponseDemo = apiResponseDemoFromJson(jsonString);

import 'dart:convert';

List<ApiResponseDemo> apiResponseDemoFromJson(String str) =>
    List<ApiResponseDemo>.from(
        json.decode(str).map((x) => ApiResponseDemo.fromJson(x)));

String apiResponseDemoToJson(List<ApiResponseDemo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiResponseDemo {
  ApiResponseDemo({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  ApiResponseDemo copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      ApiResponseDemo(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory ApiResponseDemo.fromJson(Map<String, dynamic> json) =>
      ApiResponseDemo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
