import 'package:flutter/services.dart';

class NameMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (RegExp(r'^([a-zA-Z ]+)?$').hasMatch(newValue.text)) {
      return newValue;
    }
    return oldValue;
  }
}
