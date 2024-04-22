import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

import '../../model/button_click.dart';

class CalculatorStore extends ChangeNotifier {
  String display = '';

  void onButtonClick(ButtonClick click) {
    if (display == '0') display = '';

    if (click is ClearButtonClick) {
      display = '0';
    } else if (click is BackSpaceButtonClick) {
      if (display.isEmpty) {
        display = '0';
      } else {
        display = display.substring(0, display.length - 1);
        if (display.isEmpty) display = '0';
      }
    } else if (click is CommonButtonClick) {
      display += click.value;
    } else if (click is EqualsButtonClick) {
      final value = replaceValues(display).interpret();
      display = '$value';
    }
    notifyListeners();
  }

  String replaceValues(String value) {
    return value.replaceAll('x', '*').replaceAll('÷', '/');
  }
}
