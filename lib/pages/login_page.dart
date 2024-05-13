import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const String routename = 'Login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page'), centerTitle: true,),
      body: const Center(
        child: Text('Hola Diego'),
      ),
    );
  }
}