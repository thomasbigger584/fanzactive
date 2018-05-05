import 'package:fanzactive/feature/ui/res/colors.dart';
import 'package:flutter/material.dart';

class LoginTextBox extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  const LoginTextBox({
    Key key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50.0,
      child: new TextFormField(
        controller: controller,
        style: new TextStyle(color: colorWhite),
        decoration: new InputDecoration(
          labelText: hintText,
          labelStyle: new TextStyle(
            color: colorWhite,
          ),
          prefixIcon: new Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: new Icon(
              Icons.supervised_user_circle,
              color: colorWhite,
            ),
          ),
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        obscureText: obscureText,
        keyboardType: keyboardType,
      ),
    );
  }
}
