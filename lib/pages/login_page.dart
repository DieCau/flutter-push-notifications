import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routename = 'Login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 100,
                child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue, 
                      Colors.purple
                    ]),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 70,
                child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple, 
                      Colors.blue
                    ]),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                right: 150,
                child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple, 
                      Colors.blue
                    ]),
                  ),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    emailField(),
                    passwordField(),
                    forgotPassword(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.0),
      child: TextField(
        style: TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(minWidth: 24),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.email, 
              color:Colors.white70, 
              size: 20,
            ),
          ),
          hintText: 'Enter e-mail...',
          hintStyle: TextStyle(
            color: Colors.white70, 
            fontSize: 14
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.4
            )
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white70,
              width: 0.4
            )
          ),
        ),
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0).copyWith(top: 12),
      child: TextField(
        obscureText: showPassword ? false : true,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIconConstraints: const BoxConstraints(minWidth: 24),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.lock, 
              color:Colors.white70, 
              size: 20,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  showPassword = !showPassword;
                });
              },
              child: Icon(
                showPassword ? Icons.visibility : Icons.visibility_off, 
                color:Colors.white70, 
                size: 20,
              ),
            ),
          ),
          hintText: 'Enter password...',
          hintStyle: const TextStyle(
            color: Colors.white70, 
            fontSize: 14
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.4
            )
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white70,
              width: 0.4
            )
          ),
        ),
      ),
    );
  }

  Widget forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,      
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, right: 60, bottom: 100),
        child: InkWell(
          onTap: (){},
          child: const Text(
            'Forgot password?...',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}