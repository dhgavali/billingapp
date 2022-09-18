import 'package:flutter/material.dart';
//for navigation
class Routes {
  void push(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}