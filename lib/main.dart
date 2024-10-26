import 'package:blog_app/src/presentation/pages/auth/login/login_page.dart';
import 'package:blog_app/src/presentation/pages/auth/login/login_provider_view_model.dart';
import 'package:blog_app/src/presentation/pages/auth/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // escuchar los cambios  realizados en la clase heredada de: ChangeNotifier
        ChangeNotifierProvider(create: (context) => LoginProviderViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const LoginPage(),
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => const LoginPage(),
          'register': (BuildContext context) => const RegisterPage(),
        },
      ),
    );
  }
}
