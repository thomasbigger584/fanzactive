import 'package:fanzactive/colors.dart';
import 'package:fanzactive/screens/button/PrimaryLightOutlineButton.dart';
import 'package:flutter/material.dart';

class LoginSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: buildBackgroundGradient(),
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buildLogo(),
            buildButton(),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBackgroundGradient() {
    return new BoxDecoration(
        gradient: new RadialGradient(
            colors: [colorPrimary, colorPrimaryDark], radius: 1.8));
  }

  Widget buildLogo() {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 90.0),
      child: new Image.asset(
        "res/assets/images/fanzactiveLightAlt-lg.png",
        gaplessPlayback: true,
      ),
    );
  }

  Widget buildButton() {
    return new Container(
      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
      child: new LoginSplashButton(
        text: "Login",
        onPressed: onLoginButtonPress,
      ),
    );
  }

  void onLoginButtonPress() {
    print("Login Button press");
  }
}
