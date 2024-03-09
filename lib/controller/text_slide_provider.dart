import 'package:flutter/material.dart';

class TextSlideProvider extends ChangeNotifier{
   bool selected = false;
  void textslide(){
    selected=!selected;
    notifyListeners();
   }
}