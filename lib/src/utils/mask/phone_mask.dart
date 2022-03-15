import 'package:flutter/services.dart';

class PhoneMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String phone = newValue.text;
    if (phone.length > 15) {
      return oldValue;
    }
    phone = phone.replaceAll(RegExp(r'\D'), '');
    final character = phone.split('');
    String format = '';
    for (var i = 0; i < character.length; i++) {
      if (i == 0) {
        format += '(';
      }
      if (i == 2) {
        format += ') ';
      } else if (i == 7) {
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
