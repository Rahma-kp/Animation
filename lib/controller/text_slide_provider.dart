import 'package:flutter/material.dart';

class TextSlideProvider extends ChangeNotifier{
   bool selected = false;
  void textSlide(){
    selected=!selected;
    notifyListeners();
   }
}