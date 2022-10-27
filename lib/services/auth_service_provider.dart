
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthServiceProvider extends ChangeNotifier{
  String _base_url = "api-mediacion.onrender.com";

Future<dynamic>  loginUser(String user, String pass)async{
    final Map<String, dynamic> authData = {
      "user": user,
      "password": pass
    };
    //final url = Uri.https(this._base_url, "/auth/login?user=32505430&password=123456");
    final url = Uri.https(this._base_url, "/auth/login");

    print(url);
    //final response = await http.post(url);
    //final response = await http.post(url, body: json.encode(authData));
    final response = await http.post(url, body: {'user': '32505430', 'password': '123456'});
    print(response.statusCode);
    print(response.body);
    
    final Map<String, dynamic> responseDecoded = json.decode(response.body);
    print(responseDecoded);
    return responseDecoded;
  }




}