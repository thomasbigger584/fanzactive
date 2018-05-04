import 'package:flutter/material.dart';

abstract class View {
  Widget buildContent();
}

abstract class Presenter<State> {
  VoidCallback initView(State state);
}
