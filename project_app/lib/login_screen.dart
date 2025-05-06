import 'package:flutter/material.dart';
import 'profile_stack_login.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginFormScreen extends StatefulWidget {

  const LoginFormScreen({super.key,});

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
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              String email = emailController.text;
              if (email.isEmpty) {
              }
              else {
              final box = GetStorage();
              box.write('gmail', TextEditingController().text);
              Get.off(() => ProfileStackLogin(email: email,));
              }
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}