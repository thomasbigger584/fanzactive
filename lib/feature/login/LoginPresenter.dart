import 'package:fanzactive/data/AuthRepository.dart';
import 'package:fanzactive/di/Injector.dart';
import 'package:fanzactive/feature/login/LoginContract.dart';
import 'package:flutter/material.dart';

class LoginPresenter {
  LoginContract view;
  AuthRepository authRepository;

  final TextEditingController loginTextEditController =
      new TextEditingController();
  final TextEditingController passwordTextEditController =
      new TextEditingController();

  LoginPresenter(this.view) {
    authRepository = new Injector().authRepository;
  }

  void login() {
    String username = loginTextEditController.text;
    String password = passwordTextEditController.text;
    authRepository
        .login(username, password)
        .then((token) => view.onLoginSuccessful())
        .catchError((error) => view.onLoginFailed(error.toString()));
  }
}
