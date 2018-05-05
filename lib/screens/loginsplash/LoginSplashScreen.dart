import 'package:fanzactive/screens/login/LoginView.dart';
import 'package:fanzactive/screens/ui/LoginBackgroundGradient.dart';
import 'package:fanzactive/screens/ui/button/PrimaryLightOutlineButton.dart';
import 'package:flutter/material.dart';

class LoginSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: buildLoginBackgroundGradient,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buildLogo(),
            buildButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildLogo() {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 90.0),
      child: new Image.asset(
        "res/assets/images/fanzactiveDarkAlt-lg.png",
        gaplessPlayback: true,
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
      child: new PrimaryLightOutlineButton(
        text: "Login",
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new LoginView()));
        },
      ),
    );
  }
}
