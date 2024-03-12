import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier{
    bool isLoading = true;
     void isLodingChange(){
       isLoading = false;
       notifyListeners();
     }
}