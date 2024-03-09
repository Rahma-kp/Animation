import 'package:flutter/material.dart';

class IconAnimationProvider extends ChangeNotifier{
   bool _isPlaying = false; // Renamed variable for better readability
  late AnimationController _controller;

    void _toggleAnimation() {
    if (_isPlaying) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
      _isPlaying = !_isPlaying;
      notifyListeners();
  }
}