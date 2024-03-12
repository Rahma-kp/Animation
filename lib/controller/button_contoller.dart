import 'package:flutter/material.dart';

class ButtonProider extends ChangeNotifier{
  bool isLoding =false;
  void changes (){
    isLoding=!isLoding;
    notifyListeners();
  }
}