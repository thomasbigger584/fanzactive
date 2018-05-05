import 'package:fanzactive/data/AuthRepository.dart';
import 'package:fanzactive/data/network/AuthNetworkRepository.dart';

class Injector {
  static final Injector _singleton = new Injector._internal();

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  AuthRepository get authRepository {
    return new AuthNetworkRepository();
  }
}
