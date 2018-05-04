import 'dart:ui';

import 'package:fanzactive/screens/login/LoginContract.dart';
import 'package:fanzactive/screens/login/LoginScreen.dart';

class LoginPresenterImpl extends LoginPresenter {
  LoginState state;
  LoginView view;

  LoginPresenterImpl(this.view);

  @override
  VoidCallback onInitView(LoginState state) => () {
        this.state = state;
        view.loginCallback = login;
      };

  @override
  void login(String username, String password) {
    reState(() {
      print("Username: " + username + " Password: " + password);
    });
  }
}
