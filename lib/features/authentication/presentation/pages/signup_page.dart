import 'package:blog_app/core/theme/app_color_pallete.dart';
import 'package:blog_app/features/authentication/presentation/pages/login_page.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_gradient_button.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();

  static route() {
    return MaterialPageRoute(
      builder: (context) {
        return const SignUpPage();
      },
    );
  }

  // static route() {
  //   return MaterialPageRoute(builder: (context) => const SignUpPage());
  // }
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Crear una cuenta',
                style: TextStyle(
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthenticationField(
                  hintText: 'Nombre', controller: nameController),
              const SizedBox(height: 15),
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
                buttonText: 'Registrarse',
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    LoginPage.route(),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: '¿Tiene una cuenta?. ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Iniciar sesion',
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
