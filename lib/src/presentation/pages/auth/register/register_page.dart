import 'package:blog_app/src/presentation/pages/auth/register/components/register_body.dart';
import 'package:blog_app/src/presentation/pages/auth/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterViewModel viewModel = Provider.of<RegisterViewModel>(context);

    return Scaffold(
      body: RegisterBody(viewModel: viewModel),
    );
  }
}
