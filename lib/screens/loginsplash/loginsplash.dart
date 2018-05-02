import 'package:flutter/material.dart';

class LoginSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildLogo;
  }

  Padding get buildLogo {
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

  void _loginPressed() {}
}
