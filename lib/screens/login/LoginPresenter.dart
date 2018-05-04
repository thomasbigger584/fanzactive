import 'dart:ui';

import 'package:fanzactive/screens/login/LoginContract.dart';
import 'package:fanzactive/screens/login/LoginScreen.dart';

class LoginPresenterImpl extends LoginPresenter {
  LoginState state;
  LoginView view;

  LoginPresenterImpl(this.view);

  @override
  VoidCallback initView(LoginState state) => () {
        this.state = state;
      };
}
