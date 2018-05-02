import 'package:fanzactive/colors.dart';
import 'package:flutter/material.dart';

class LoginSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: buildBackgroundGradient(),

    );
  }

  BoxDecoration buildBackgroundGradient() {
    return new BoxDecoration(
        gradient: new RadialGradient(
            colors: [colorPrimary, colorPrimaryDark], radius: 1.8));
  }

  Padding buildLogo() {
    return new Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
      child: new DecoratedBox(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.fitWidth,
            image:
                new AssetImage("res/assets/images/fanzactiveLightAlt-lg.png"),
          ),
        ),
      ),
    );
  }
}
