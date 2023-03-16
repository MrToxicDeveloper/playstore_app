import 'package:flutter/material.dart';

class PlayPro extends ChangeNotifier{
  int i = 0;

  void change(int value){
    i = value;
     notifyListeners();
  }
}