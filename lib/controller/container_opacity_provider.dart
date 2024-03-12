import 'package:flutter/material.dart';

class ContainerOpacityProvider extends ChangeNotifier{
    double opacityLevel = 1;
   void opacityChange(){
     opacityLevel = opacityLevel == 0 ? 1 : 0;
     notifyListeners();
    }
}