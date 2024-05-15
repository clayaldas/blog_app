import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Crear una cuenta',
              style: TextStyle(
                fontSize: 51,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            AuthenticationField(hintText: 'Nombre'),
            SizedBox(height: 15),
            AuthenticationField(hintText: 'Correo electrónico'),
            SizedBox(height: 15),
            AuthenticationField(hintText: 'Contraseña'),
            SizedBox(height: 20),
            AuthenticationGradientButton(),
          ],
        ),
      ),
    );
  }
}
