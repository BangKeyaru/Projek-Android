import 'package:flutter/material.dart';

class Login3Screen extends StatefulWidget {
  const Login3Screen({super.key});

  @override
  State<Login3Screen> createState() => _Login3ScreenState();
}

class _Login3ScreenState extends State<Login3Screen> {
  bool passwordtertutup = true;

  tampilkanpasword() {
    setState(() {
      passwordtertutup = !passwordtertutup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: passwordtertutup ? Colors.red : Colors.yellow,
      appBar: AppBar(title: Text("Menu Login")),
      body: Column(
        children: [
          TextField(),
          TextField(
            obscureText: passwordtertutup,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your Password",
              prefixIcon: Icon(Icons.lock),
              suffix: TextButton(
                onPressed: () {
                  tampilkanpasword();
                },
                child:
                    passwordtertutup
                        ? Icon(Icons.visibility, color: Colors.yellow)
                        : Icon(Icons.visibility_off, color: Colors.red),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              tampilkanpasword();
            },
            child: Text("tampilkan password"),
          ),
        ],
      ),
    );
  }
}