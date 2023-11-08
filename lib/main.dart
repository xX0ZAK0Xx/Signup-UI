import 'package:flutter/material.dart';
import 'package:signup_page/screens/sign-up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'Create Account',
      home: const SignupPage(),
    );
  }
}