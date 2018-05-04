import 'package:fanzactive/colors.dart';
import 'package:flutter/material.dart';

BoxDecoration buildLoginBackgroundGradient() {
  return new BoxDecoration(
      gradient: new RadialGradient(
          colors: [colorPrimary, colorPrimaryDark], radius: 0.8));
}
