import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final String error;
  final Function(String text) onChanged;
  final bool obscureText;

  const TextFieldWidget(
      {super.key,
      required this.text,
      required this.icon,
      required this.onChanged,
      this.error = '',
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Text(text),
        labelStyle: const TextStyle(
            //color: Colors.red,
            ),
        errorText: error,
        suffixIcon: Icon(icon),
      ),
      style: const TextStyle(
          //color: Colors.white,
          ),
      obscureText: obscureText,
    );
  }
}
