import 'package:flutter/material.dart';

class MainScreenProvider extends ChangeNotifier{
  Locale? locale = const Locale('en');
    setLocale(Locale newlocale) {
     locale = newlocale;
     notifyListeners();
  }

}