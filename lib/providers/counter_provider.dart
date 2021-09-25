import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0; // == privado
  int get count => _count;

  void increment() {
    _count++;
    // manda notificación
    notifyListeners();
  }

  void decrement() {
    _count--;
    // manda notificación
    notifyListeners();
  }
}
