
import 'package:flutter/cupertino.dart';

class NumberData extends ChangeNotifier {
  int value = 0;

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    value--;
    notifyListeners();
  }
}
