import 'dart:async';
import 'dart:convert';

import 'package:fanzactive/data/AuthRepository.dart';
import 'package:fanzactive/data/domain/Token.dart';
import 'package:fanzactive/data/exception/FetchDataException.dart';
import 'package:http/http.dart' as http;

class AuthNetworkRepository implements AuthRepository {
  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<Token> login(String username, String password) {
    return null;
//
//    var httpClient = createHttpClient();
//
//
//
//    return http
//        .post(
//      "http://api.fanzactive.com/api/authenticate", body:
//    )
//        .then((http.Response response) {
//      final String jsonBody = response.body;
//      final statusCode = response.statusCode;
//
//      if (statusCode < 200 || statusCode >= 300 || jsonBody == null) {
//        throw new FetchDataException(
//            "Error while logging in [StatusCode:$statusCode, Error:${response.reasonPhrase}]");
//      }
//
//      final tokenContainer = _decoder.convert(jsonBody);
//      final List contactItems = tokenContainer['results'];
//
//      return contactItems
//          .map((contactRaw) => new Contact.fromMap(contactRaw))
//          .toList();
//    });
  }
}
