import 'package:fanzactive/feature/login/LoginView.dart';
import 'package:fanzactive/feature/loginsplash/LoginSplashScreen.dart';
import 'package:fanzactive/feature/ui/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(new FanzActiveApplication());
}

class FanzActiveApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FanzActive',
      theme: new ThemeData(
        primaryColor: colorPrimary,
        accentColor: colorAccent,
        fontFamily: 'Roboto',
      ),
      home: new LoginSplash(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        LoginView.ROUTE_NAME: (context) => new LoginView(),
      },
    );
  }
}
