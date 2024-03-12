import 'package:flutter/material.dart';

class TextOpacityprovider extends ChangeNotifier{
    double opacityLevel = 1;
    void textOpacityChange(){
      opacityLevel = opacityLevel == 0 ? 1 : 0;
      notifyListeners();
    }
}