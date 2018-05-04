import 'package:fanzactive/screens/ui/res/colors.dart';
import 'package:flutter/material.dart';

BoxDecoration get buildLoginBackgroundGradient {
  return new BoxDecoration(
      gradient: new RadialGradient(
          colors: [colorPrimary, colorPrimaryDark], radius: 0.8));
}
