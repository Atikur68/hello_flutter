import 'package:flutter/material.dart';

class ProviderDataClassSecond extends ChangeNotifier{
  int data=0;
  Increments(){
    data++;
    debugPrint(data.toString());
    notifyListeners();
  }
  Decrements(){
    data--;
    debugPrint(data.toString());
    notifyListeners();
  }
  Resets(){
    data=0;
    debugPrint(data.toString());
    notifyListeners();
  }
}