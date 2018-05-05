import 'dart:async';

import 'package:fanzactive/data/domain/Token.dart';

abstract class AuthRepository {
  Future<Token> login(String username, String password);
}
