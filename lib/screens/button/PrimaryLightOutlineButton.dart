import 'package:fanzactive/colors.dart';
import 'package:flutter/material.dart';

class LoginSplashButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const LoginSplashButton({Key key, this.onPressed, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Container(
          height: 50.0,
          decoration: new BoxDecoration(
            border: new Border.all(color: colorWhite, width: 0.3),
          ),
          child: new FlatButton(
            color: colorTransparent,
            highlightColor: colorTransparent,
            splashColor: colorPrimary,
            colorBrightness: Brightness.light,
            textColor: colorWhite,
            onPressed: onPressed,
            child: new Text(text),
          ),
        )
      ],
    );
  }
}
