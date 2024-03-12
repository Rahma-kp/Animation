import 'package:flutter/material.dart';

class SandBoxProvider extends ChangeNotifier {
  double opacity = 1;
  double margin = 0;
  double width = 200;
  Color color = Colors.black;
  void sandBoxChange() {
    margin = 50;
    color = Colors.blue;
    notifyListeners();
  }
}
