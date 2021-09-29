import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0; // == privado
  int get count => _count;
  late Color _color = Colors.red; // == privado
  Color get color => _color;

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

  void reset() {
    _count = 0;
    // manda notificación
    notifyListeners();
  }

  void blackColor() {
    _color = Colors.black;
    // manda notificación
    notifyListeners();
  }

  void redColor() {
    _color = Colors.red;
    // manda notificación
    notifyListeners();
  }

  void blueColor() {
    _color = Colors.blue;
    // manda notificación
    notifyListeners();
  }

  void greenColor() {
    _color = Colors.green;
    // manda notificación
    notifyListeners();
  }
}
