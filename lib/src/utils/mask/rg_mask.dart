import 'package:flutter/services.dart';

class RgMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String rg = newValue.text;
    if (rg.length > 11) {
      return oldValue;
    }
    rg = rg.replaceAll(RegExp(r'\D'), '');
    final character = rg.split('');
    String format = '';
    for (var i = 0; i < character.length; i++) {
      if (i == 2) {
        format += '.';
      }
      if (i == 5) {
        format += '.';
      } else if (i == 8) {
        format += '-';
      }
      format += character[i];
    }

    return newValue.copyWith(
      text: format,
      selection: TextSelection.fromPosition(
        TextPosition(offset: format.length),
      ),
    );
  }
}
