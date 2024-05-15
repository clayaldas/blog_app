import 'package:blog_app/core/theme/app_color_pallete.dart';
import 'package:flutter/material.dart';

class AuthenticationGradientButton extends StatelessWidget {
  const AuthenticationGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColorPallete.gradient1,
          AppColorPallete.gradient2,
        ]),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(400, 50),
        ),
        onPressed: null,
        child: const Text(
          'Registrarse',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
