import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const TextFieldWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(text),
        labelStyle: const TextStyle(
            //color: Colors.red,
            ),
        suffixIcon: Icon(icon),
      ),
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
