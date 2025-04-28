import 'package:flutter/material.dart';
import 'profile_stack_login.dart';

class LoginFormScreen extends StatefulWidget {
  final VoidCallback toggleTheme;

  const LoginFormScreen({super.key, required this.toggleTheme});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passwordtertutup = true;

  void tampilkanPassword() {
    setState(() {
      passwordtertutup = !passwordtertutup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Login')),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
            ),
          ),
          TextField(
            controller: passwordController,
            obscureText: passwordtertutup,
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.lock),
              suffix: TextButton(
                onPressed: tampilkanPassword,
                child: passwordtertutup
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String email = emailController.text;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileStackLogin(email: email,toggleTheme: widget.toggleTheme,),
                ),
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}