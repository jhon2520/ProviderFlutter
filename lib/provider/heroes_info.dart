import 'package:flutter/material.dart';

class HeroeInfo extends ChangeNotifier{

  String _nombreHeroe = "Boyacoman";
  Color _color = Colors.blue;

  String get nombreHeroe => _nombreHeroe;

  set nombreHeroe(String value){
    this._nombreHeroe = value;
    notifyListeners();
  }

  Color get color => _color;

  set color(Color color){
    this._color = color;
    notifyListeners();
  }


}