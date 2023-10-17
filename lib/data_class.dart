import 'package:flutter/material.dart';

class ProviderDataClass extends ChangeNotifier{
  int value=0;
  Increment(){
    value++;
    debugPrint(value.toString());
    notifyListeners();
  }
  Decrement(){
    value--;
    debugPrint(value.toString());
    notifyListeners();
  }
  Reset(){
    value=0;
    debugPrint(value.toString());
    notifyListeners();
  }
}