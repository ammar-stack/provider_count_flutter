import 'package:flutter/material.dart';

class Counterprovider extends ChangeNotifier{
  int value = 0;

  void increment(){
    value ++;
    notifyListeners();
  }

  void decrement(){
    value --;
    notifyListeners();
  }
}