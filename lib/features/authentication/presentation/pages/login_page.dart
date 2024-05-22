import 'package:blog_app/core/theme/app_color_pallete.dart';
import 'package:blog_app/features/authentication/presentation/pages/signup_page.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_gradient_button.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  static route() {
    return MaterialPageRoute(
      builder: (context) {
        return const LoginPage();
      },
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  //final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    //nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthenticationField(
                  hintText: 'Correo electrónico', controller: emailController),
              const SizedBox(height: 15),
              AuthenticationField(
                hintText: 'Contraseña',
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              const AuthenticationGradientButton(
                buttonText: 'Ingresar',
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    SignUpPage.route(),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: '¿No tiene una cuenta?. ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Crear cuenta',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppColorPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
