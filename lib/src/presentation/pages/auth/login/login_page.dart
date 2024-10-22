import 'package:blog_app/src/presentation/pages/auth/login/login_provider_view_model.dart';
import 'package:blog_app/src/presentation/pages/auth/login/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginProviderViewModel viewModel =
        Provider.of<LoginProviderViewModel>(context);

    // utilizar el manejador de estados: provider

    return Scaffold(
      body: LoginBody(
        viewModel: viewModel,
      ),
    );
  }
}
