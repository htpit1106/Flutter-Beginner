import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_register_form/screens/login.dart';
import 'package:login_register_form/screens/register.dart';
import 'package:login_register_form/screens/welcome.dart';

final _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => WelcomeScreen(), routes: [
        GoRoute(path: '/login', name: 'login', builder: (context, state) => LoginScreen()),
        GoRoute(path:'/register', name: 'register', builder: (context, state) => RegisterScreen())
      ]),

    ]
);

class LoginRegisterForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',

      routerConfig: _router ,
      theme: _buildThemData()
    );
  }
}

ThemeData _buildThemData() {
  ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Color(0xFF1F41BB)),
      ),
    ),
    textTheme: _buildTextThem(base.textTheme)
  );
}

TextTheme _buildTextThem(TextTheme base) {
  return base.copyWith(
    headlineSmall: base.headlineSmall!.copyWith(fontWeight: FontWeight.w500),
    titleLarge: base.titleLarge!.copyWith(
      color: Color(0xFF1F41BB),
      fontSize: 35,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: base.labelSmall!.copyWith(
      fontSize: 15,
      color: Color(0xFF1F41BB),
      fontWeight: FontWeight.w600
    ) ,
    bodySmall: base.bodySmall!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyLarge: base.bodyLarge!.copyWith(
      fontWeight: FontWeight.w500,

      fontSize: 20.0,
    ),
  );
}
