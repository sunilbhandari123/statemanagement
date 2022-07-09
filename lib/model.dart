import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Model extends ChangeNotifier {
  String title = 'MAHESH';
  void ChangeValue() {
    title = 'SUNIL';
    notifyListeners();
  }
}
