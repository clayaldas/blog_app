import 'package:blog_app/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:blog_app/src/presentation/pages/auth/login/components/login_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginViewModel viewModel = Provider.of<LoginViewModel>(context);

    // utilizar el manejador de estados: provider

    return Scaffold(
      body: LoginBody(
        viewModel: viewModel,
      ),
    );
  }
}
