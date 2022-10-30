import 'package:flutter/cupertino.dart';

class HeartAndBasketIconProvider extends ChangeNotifier {
  bool _heartSelect = false;
  bool get heartSelect => _heartSelect;

  bool _basketSelect = false;
  bool get basketSelect => _basketSelect;

  void hearSelected() {
    _heartSelect = !_heartSelect;
    notifyListeners();
  }

  void basketSelected() {
    _basketSelect = !_basketSelect;
    notifyListeners();
  }
}
