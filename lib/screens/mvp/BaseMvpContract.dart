import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract class View {
  Widget buildContent();
}

abstract class Presenter<S extends State<StatefulWidget>> {
  @protected
  S state;

  VoidCallback initView(S state) {
    this.state = state;
    return initView(state);
  }

  @protected
  VoidCallback onInitView(S state);

  @protected
  void reState(VoidCallback callback) {
    // ignore: invalid_use_of_protected_member
    this.state.setState(callback);
  }
}
