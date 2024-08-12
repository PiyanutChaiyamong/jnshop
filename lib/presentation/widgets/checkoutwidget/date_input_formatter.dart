import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final String newText = newValue.text.replaceAll(RegExp(r'\D'), '');
    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < newText.length; i++) {
      if (i == 2) buffer.write('/'); // เพิ่ม '/' หลังจาก 2 ตัวเลข
      buffer.write(newText[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
