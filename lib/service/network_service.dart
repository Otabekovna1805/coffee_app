import 'dart:convert';
import 'package:coffee_app/model/model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

sealed class Network {
  static const String baseUrl = "fakestoreapi.com";

  static Future<String?> methodGet({String api = "/products", Object? id, String baseUrl = baseUrl}) async {
    try {
      Uri url = Uri.https(baseUrl, "$api${id != null ? "/$id" : ""}");
      final response = await http.get(url);
      if(response.statusCode == 200) {
        // return response.body;
        return utf8.decoder.convert(response.bodyBytes);
      }
    } catch(e) {
      return null;
    }
    return null;
  }

  static List<Coffee> parseMovieList(String data) {
    final json = jsonDecode(data) as List; /// String => json(Map, List, ...)
    return json.map((item) => Coffee.fromJson(item)).toList(); /// json => object
  }
}