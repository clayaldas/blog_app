import 'package:blog_app/src/presentation/pages/auth/register/widgets/register_body.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterBody(),
    );
  }
}
