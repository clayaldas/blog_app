import 'package:flutter/material.dart';

class AuthenticationField extends StatelessWidget {
  final String hintText;

  const AuthenticationField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
