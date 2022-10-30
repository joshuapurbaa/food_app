import 'package:flutter/material.dart';

class SizeAndQuantityProvider extends ChangeNotifier {
  final List<String> _size = ['S', 'M', 'L'];
  List<String> get size => _size;

  int _quantity = 0;
  int get quantity => _quantity;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void onSelected(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void increment() {
    _quantity += 1;
    notifyListeners();
  }

  void decrement() {
    _quantity -= 1;
    notifyListeners();
  }
}
