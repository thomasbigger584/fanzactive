import 'package:fanzactive/screens/login/LoginContract.dart';
import 'package:fanzactive/screens/login/LoginPresenter.dart';
import 'package:fanzactive/screens/login/LoginView.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login> {
  LoginView view;
  LoginPresenter presenter;

  @override
  void initState() {
    super.initState();
    view = new LoginViewImpl();
    presenter = new LoginPresenterImpl(view);
    presenter.initView(this);
  }

  @override
  Widget build(BuildContext context) {
    return view.buildContent();
  }
}
