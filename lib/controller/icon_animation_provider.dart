import 'package:flutter/material.dart';

class IconAnimationProvider extends ChangeNotifier{
   bool isPlaying = false; 
  late AnimationController controller;

    toggleAnimation() {
    if (isPlaying) {
      controller.reverse();
    } else {
      controller.forward(); 
    }
      isPlaying = !isPlaying;
      notifyListeners();
  }
}