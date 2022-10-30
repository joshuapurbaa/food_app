import 'package:flutter/cupertino.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void onSelected(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
