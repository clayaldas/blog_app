import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            child: const TextField(
              decoration: InputDecoration(
                label: Text('Correo electrònico'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const TextField(
              decoration: InputDecoration(
                label: Text('Constraseña'),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Iniciar sesiòn'),
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
      ),
    );
  }
}
