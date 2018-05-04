import 'package:fanzactive/colors.dart';
import 'package:flutter/material.dart';

class LoginTextBox extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  const LoginTextBox(
      {Key key, this.hintText, this.keyboardType, this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50.0,
      child: new TextFormField(
        decoration: new InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(color: colorWhite),
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.circular(1.0),
            borderSide: new BorderSide(color: colorWhite, width: 0.3),
          ),
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
      ),
    );
  }
}
