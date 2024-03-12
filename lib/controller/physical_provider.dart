import 'package:flutter/material.dart';

class PhysicalProvider extends ChangeNotifier{
   bool isElevated = false;
   void physicalChange(){
    isElevated = !isElevated;
    notifyListeners();
   }
}