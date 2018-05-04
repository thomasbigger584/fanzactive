import 'package:fanzactive/screens/login/LoginContract.dart';
import 'package:fanzactive/screens/ui/LoginBackgroundGradient.dart';
import 'package:fanzactive/screens/ui/button/PrimaryLightOutlineButton.dart';
import 'package:fanzactive/screens/ui/res/colors.dart';
import 'package:fanzactive/screens/ui/textbox/LoginTextBox.dart';
import 'package:flutter/material.dart';

class LoginViewImpl implements LoginView {
  BuildContext context;
  LoginCallback _loginCallback;

  LoginViewImpl(this.context);

  @override
  Widget buildContent() {
    return new Scaffold(
      appBar: buildAppBar,
      body: new Container(
        decoration: buildLoginBackgroundGradient,
        child: new Container(
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
          child: new Column(
            children: <Widget>[
              new LoginTextBox(
                hintText: "Username",
                keyboardType: TextInputType.text,
              ),
              new Container(
                margin: EdgeInsets.only(top: 20.0),
                child: new LoginTextBox(
                  hintText: "Password",
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new PrimaryLightOutlineButton(
                  onPressed: () => loginCallback(),
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
  // ignore: unnecessary_getters_setters
  set loginCallback(LoginCallback loginCallback) {
    _loginCallback = loginCallback;
  }

  @override
  // ignore: unnecessary_getters_setters
  get loginCallback => _loginCallback;
}
