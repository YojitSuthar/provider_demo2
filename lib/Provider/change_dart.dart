import 'package:flutter/foundation.dart';

class ChangeColor with ChangeNotifier{

  double _value=1.0;
  double get value=>_value;

  void change(double value){
    _value=value;
    notifyListeners();
  }

}