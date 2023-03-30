import 'package:cestile_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:cestile_app/screens/home/home_screen.dart';
import 'package:cestile_app/screens/login/login_screen.dart';
import 'package:cestile_app/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final bool isLogged = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: isLogged ? HomeScreen() : ForgotPasswordScreen(),
    );
  }
}
