import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier{
    bool isLoading = true;
     void islodingchange(){
       isLoading = false;
       notifyListeners();
     }
}