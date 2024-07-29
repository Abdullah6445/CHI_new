import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CounterVM extends BaseViewModel {
  int count = 0;

  String appbarTitle = "Counter VUVM";
  IconData floatingButtonIcon = Icons.add;

  void onAdd() {
    count++;
    debugPrint("$count");
    notifyListeners();
  }
}
