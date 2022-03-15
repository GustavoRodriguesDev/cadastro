import 'package:flutter/services.dart';

class CpfMask extends TextInputFormatter {
  @override
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String cpf = newValue.text;
    if (cpf.length > 14) {
      return oldValue;
    }
    cpf = cpf.replaceAll(RegExp(r'\D'), '');

    final caracteres = cpf.split('');
    String formatado = '';

    for (var i = 0; i < caracteres.length; i++) {
      if (i == 3) {
        formatado += '.';
        formatado += caracteres[i];
      } else if (i == 6) {
        formatado += '.';
        formatado += caracteres[i];
      } else if (i == 9) {
        formatado += '-';
        formatado += caracteres[i];
      } else {
        formatado += caracteres[i];
      }
    }

    return newValue.copyWith(
      text: formatado,
      selection: TextSelection.fromPosition(
        TextPosition(offset: formatado.length),
      ),
    );
  }
}
