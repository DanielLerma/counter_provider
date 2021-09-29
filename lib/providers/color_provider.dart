import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  late Color _color = Colors.red; // == privado
  Color get color => _color;

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
