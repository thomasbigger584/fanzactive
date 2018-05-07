import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fanzactive/data/AuthRepository.dart';
import 'package:fanzactive/data/domain/Token.dart';

class AuthNetworkRepository implements AuthRepository {
  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<Token> login(String username, String password) {
    Dio dio = new Dio();
    dio.interceptor.request.onSend = (options) {
      return options;
    };
    var loginData = {
      "username": username,
      "password": password,
      "rememberMe": true
    };
    return dio
        .post("http://api.fanzactive.com/api/authenticate", data: loginData)
        .then((response) {
      print(response);
      return Token.fromMap(response);
    }).catchError((error) {
      print(error);
    });
  }
}
