import 'package:flutter/material.dart';

class Navigation {
  static void push(Widget widget, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static void pushReplacement(Widget widget, BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
