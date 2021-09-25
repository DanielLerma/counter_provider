import 'package:flutter/cupertino.dart';

class ColorProvider with ChangeNotifier {
  String _color = ''; // == privado
  int get color => color;

  void blackColor() {
    _color = 'black';
    // manda notificación
    notifyListeners();
  }

  void redColor() {
    _color = 'red';
    // manda notificación
    notifyListeners();
  }

  void blueColor() {
    _color = 'blue';
    // manda notificación
    notifyListeners();
  }

  void greenColor() {
    _color = 'green';
    // manda notificación
    notifyListeners();
  }
}
