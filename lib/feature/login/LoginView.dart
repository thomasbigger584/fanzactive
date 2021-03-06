import 'package:fanzactive/feature/login/LoginContract.dart';
import 'package:fanzactive/feature/login/LoginPresenter.dart';
import 'package:fanzactive/feature/ui/LoginBackgroundGradient.dart';
import 'package:fanzactive/feature/ui/button/PrimaryLightOutlineButton.dart';
import 'package:fanzactive/feature/ui/res/colors.dart';
import 'package:fanzactive/feature/ui/textbox/LoginTextBox.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  static const String ROUTE_NAME = "/login";

  @override
  LoginViewState createState() => new LoginViewState();
}

class LoginViewState extends State<LoginView> implements LoginContract {
  LoginPresenter presenter;

  LoginViewState() {
    presenter = new LoginPresenter(this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar,
      body: new Container(
        decoration: buildLoginBackgroundGradient,
        child: new Container(
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
          child: new Column(
            children: <Widget>[
              new LoginTextBox(
                controller: presenter.loginTextEditController,
                hintText: "Username",
                keyboardType: TextInputType.text,
              ),
              new Container(
                margin: EdgeInsets.only(top: 20.0),
                child: new LoginTextBox(
                  controller: presenter.passwordTextEditController,
                  hintText: "Password",
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new PrimaryLightOutlineButton(
                  onPressed: () => presenter.login(),
                  text: "Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar get buildAppBar {
    return new AppBar(
      title: new Text("Login"),
      textTheme: new TextTheme(
        title: new TextStyle(
            inherit: true,
            color: colorWhite,
            fontSize: 18.0,
            fontWeight: FontWeight.bold),
      ),
      iconTheme: new IconThemeData(color: colorWhite),
    );
  }

  @override
  void onLoginFailed(String message) {
    print("Error: " + message);
  }

  @override
  void onLoginSuccessful() {
    print("Successful");
  }
}
