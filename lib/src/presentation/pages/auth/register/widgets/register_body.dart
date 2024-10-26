import 'package:blog_app/src/presentation/widgets/elevated_button_widget.dart';
import 'package:blog_app/src/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 25, left: 7),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 34,
                    ),
                  ),
                ),
                Row(
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
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: const Text(
            'Continúa con tu',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: const Text(
            'Registro',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFieldWidget(
            text: 'Nombre de usuario',
            icon: Icons.person_outline,
            onChanged: (value) {},
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFieldWidget(
            text: 'Correo electrónico',
            icon: Icons.email_outlined,
            onChanged: (value) {},
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFieldWidget(
            text: 'Contraseña',
            icon: Icons.lock_outline,
            onChanged: (value) {},
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFieldWidget(
            text: 'Confirmar contraseña',
            icon: Icons.lock_open,
            onChanged: (value) {},
          ),
        ),
        Container(
          width: double.infinity,
          margin:
              const EdgeInsets.only(right: 15, left: 15, bottom: 10, top: 10),
          child: ElevatedButtonWidget(
            text: 'Registrarse',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
