import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ElevatedButtonWidget(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // onPressed: () {},
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              // 'Iniciar sesión',
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 16,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
