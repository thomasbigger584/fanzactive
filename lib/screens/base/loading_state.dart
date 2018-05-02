import 'package:flutter/material.dart';

abstract class LoadingBaseState<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {

    /*
     * Widget indicating a circular progress bar or else the content in the child class
     */
    Widget body = isLoading()
        ? new Center(child: new CircularProgressIndicator())
        : content();


    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title()),
      ),
      body: body,
    );
  }

  Widget content();

  String title();

  bool isLoading();
}
