import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardNumberField extends StatelessWidget {
  final TextEditingController controller;

  CardNumberField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        fontSize: 22,
        letterSpacing: 1.2,
      ),
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Enter card number',
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.credit_card,
            size: 40,
            color: Colors.grey,
          ),
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(19),
        FilteringTextInputFormatter.digitsOnly,
        CardNumberInputFormatter(),
      ],
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final String newText = newValue.text.replaceAll(RegExp(r'\D'), '');
    final StringBuffer buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      if (i > 0 && i % 4 == 0) buffer.write(' ');
      buffer.write(newText[i]);
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
