import 'dart:async';
import 'dart:convert';

import 'package:fanzactive/data/AuthRepository.dart';
import 'package:fanzactive/data/domain/Token.dart';
import 'package:fanzactive/data/exception/FetchDataException.dart';

class AuthNetworkRepository implements AuthRepository {
  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<Token> login(String username, String password) {
    print("Username: " + username + " , " + password);
    var completer = new Completer<Token>();
    completer.completeError(new FetchDataException("Error occured"));
    return completer.future;

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
