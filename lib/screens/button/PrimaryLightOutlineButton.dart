import 'package:fanzactive/colors.dart';
import 'package:flutter/material.dart';

class PrimaryLightOutlineButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const PrimaryLightOutlineButton({Key key, this.onPressed, this.text})
      : super(key: key);

  @override
  PrimaryLightOutlineState createState() {
    return new PrimaryLightOutlineState(onPressed, text);
  }
}

class PrimaryLightOutlineState extends State<PrimaryLightOutlineButton> {
  bool isPressed = false;

  final VoidCallback onPressed;
  final String text;

  PrimaryLightOutlineState(this.onPressed, this.text);

  @override
  Widget build(BuildContext context) {
    Color buttonBackgroundColor =
        (isPressed) ? colorPrimaryLight : colorTransparent;
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Container(
          height: 50.0,
          decoration: new BoxDecoration(
            border: new Border.all(color: colorWhite, width: 0.3),
          ),
          child: new GestureDetector(
            onTapDown: onTapDown,
            onTapUp: onTapUp,
            onTapCancel: onTapCancel,
            child: new FlatButton(
              color: buttonBackgroundColor,
              highlightColor: buttonBackgroundColor,
              splashColor: buttonBackgroundColor,
              textColor: colorWhite,
              onPressed: () => {},
              child: new Text(text),
            ),
          ),
        ),
      ],
    );
  }

  void onTapDown(TapDownDetails details) {
    setState(() {
      isPressed = true;
    });
  }

  void onTapUp(TapUpDetails details) {
    setState(() {
      isPressed = false;
    });
  }

  void onTapCancel() {
    setState(() {
      isPressed = false;
    });
  }
}
