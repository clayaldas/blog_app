import 'package:blog_app/src/presentation/widgets/elevated_button_widget.dart';
import 'package:blog_app/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.30,
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/gamepad.png',
                  height: 100,
                  width: 150,
                ),
                const Text(
                  'App Blog',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Text(
            'Continua con el',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const TextFieldWidget(
              text: 'Correo electrónico',
              icon: Icons.email_outlined,
            )),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const TextFieldWidget(
            text: 'Contraseña',
            icon: Icons.lock_clock_outlined,
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ElevatedButtonWidget(
            text: 'Iniciar sesión',
            onPressed: () {},
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 46),
          child: const Text(
            'No tienes una cuenta?',
          ),
        )
      ],
    );
  }
}
