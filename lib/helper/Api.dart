import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headers = {
      /*'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded'*/
    };
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there is an error${response.statusCode}');
    }
  }
}
