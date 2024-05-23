import 'package:blog_app/core/secrets/app_secrets.dart';
import 'package:blog_app/core/theme/app_theme.dart';
import 'package:blog_app/features/authentication/presentation/pages/login_page.dart';
//import 'package:blog_app/features/authentication/presentation/pages/signup_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:flutter/material.dart';

void main() async {
  // inicializar la conexion con Supabase
  final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      // home: const SignUpPage(),
      home: const LoginPage(),
    );
  }
}
