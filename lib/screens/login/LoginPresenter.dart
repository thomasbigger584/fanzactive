import 'package:fanzactive/data/AuthRepository.dart';
import 'package:fanzactive/data/exception/FetchDataException.dart';
import 'package:fanzactive/di/Injector.dart';
import 'package:fanzactive/screens/login/LoginContract.dart';

class LoginPresenter {
  LoginContract view;
  AuthRepository authRepository;

  LoginPresenter(this.view) {
    authRepository = new Injector().authRepository;
  }

  void login(String username, String password) {
    authRepository
        .login(username, password)
        .then(
          (token) => view.loginSuccessful(),
        )
        .catchError((FetchDataException error) {
      view.loginFailed(error.toString());
    });
  }
}
