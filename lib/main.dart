import 'package:fanzactive/colors.dart';
import 'package:fanzactive/screens/loginsplash/loginsplash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FanzActive',
      theme: new ThemeData(
        primaryColor: colorPrimary,
        accentColor: colorAccent,
        primarySwatch: Colors.blue,
      ),
      home: new LoginSplash(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{},
    );
  }
}
