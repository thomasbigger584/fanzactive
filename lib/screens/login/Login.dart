import 'package:fanzactive/colors.dart';
import 'package:fanzactive/screens/ui/LoginBackgroundGradient.dart';
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
        child: new Column(
          children: <Widget>[




            new TextFormField(
              decoration: new InputDecoration(labelText: 'Username'),
            ),

          ],
        ),
      ),
    );
  }
}
