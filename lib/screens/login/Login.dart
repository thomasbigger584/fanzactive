import 'package:fanzactive/colors.dart';
import 'package:fanzactive/screens/ui/LoginBackgroundGradient.dart';
import 'package:fanzactive/screens/ui/button/PrimaryLightOutlineButton.dart';
import 'package:fanzactive/screens/ui/textbox/LoginTextBox.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        textTheme: new TextTheme(
          title: new TextStyle(
              inherit: true,
              color: colorWhite,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
        iconTheme: new IconThemeData(color: colorWhite),
      ),
      body: new Container(
        decoration: buildLoginBackgroundGradient(),
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
                  onPressed: () {},
                  text: "Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
