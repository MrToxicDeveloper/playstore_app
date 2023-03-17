import 'package:flutter/material.dart';

class PlayPro extends ChangeNotifier{
  int i = 0;
  int ind = 0;

  bool game = true;
  bool app = false;

  void changeBottom(int value){
    i = value;
    game = !game;
    app = !app;
    notifyListeners();
  }
  void changeTab(int value){
    ind = value;
     notifyListeners();
  }

}