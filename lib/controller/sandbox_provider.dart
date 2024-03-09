import 'package:flutter/material.dart';

class SandBoxProvider extends ChangeNotifier {
  double opacity = 1;
  double margin = 0;
  double width = 200;
  Color color = Colors.black;
  void sandboxchange() {
    margin = 50;
    color = Colors.blue;
    notifyListeners();
  }
}
