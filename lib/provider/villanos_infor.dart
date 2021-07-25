import 'package:flutter/material.dart';

class VillanoInfo extends ChangeNotifier{

  String _nombreVillano = "Agua potable";

  String get nombreVillano => _nombreVillano;

  set nombreVillano(String value){
    this._nombreVillano = value;
    notifyListeners();
  }

}