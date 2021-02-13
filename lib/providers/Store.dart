import 'package:flutter/material.dart';

class Store with ChangeNotifier {
  int sumPrice = 107;
  Store() {}
  void updateSum(int price) {
    sumPrice += price;
    notifyListeners();
  }

  get getSum => sumPrice;
}
