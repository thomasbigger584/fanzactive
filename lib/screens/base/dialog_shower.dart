import 'package:flutter/material.dart';

AlertDialog buildDialog(
    {title, message, confirm, cancel, confirmFn, cancelFn}) {

  /*
   * Widgets for title and message
   */
  Widget titleWidget = title != null ? new Text(title) : null;
  Widget messageWidget = message != null ? new Text(message) : null;

  /*
   * Confirm and cancel buttons for alert dialog
   */
  Widget confirmWidget = confirmFn != null
      ? new FlatButton(onPressed: confirmFn, child: new Text(confirm))
      : null;
  Widget cancelWidget = cancelFn != null
      ? new FlatButton(onPressed: cancelFn, child: new Text(cancel))
      : null;

  return new AlertDialog(
    title: titleWidget,
    content: messageWidget,
    actions: <Widget>[confirmWidget, cancelWidget],
  );
}
