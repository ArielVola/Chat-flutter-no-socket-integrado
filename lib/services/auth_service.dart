import 'dart:convert';

import 'package:chat/global/environment.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService with ChangeNotifier {

  // Usuario usuario 

  Future login( String email, String password) async {

    final data = {
      'email': email,
      'password': password
    };

    final resp = await http.post(new Uri.http('192.168.0.8:3000', '/api/login'),
    body: jsonEncode(data),
    headers: {
      'Content-Type': 'application/json'
    }
    );

    print(resp.body);

  }

}