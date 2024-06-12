import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CartNotifier extends ChangeNotifier {
  void shouldRefresh(){
    notifyListeners();
  }
}