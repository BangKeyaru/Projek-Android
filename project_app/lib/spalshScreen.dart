import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/profile_stack_login.dart';
import 'login_screen.dart';
import 'package:get_storage/get_storage.dart';

class Spalshscreen extends StatefulWidget {
  final VoidCallback toggleTheme;

  const Spalshscreen({super.key, required this.toggleTheme});

  @override
  State<Spalshscreen> createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Spalshscreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {

      final box = GetStorage();
      final statusemail = box.read('email');

      if (statusemail == null) {
        Get.off(() => LoginFormScreen(toggleTheme: widget.toggleTheme,));
      } else {
        Get.off(() => ProfileStackLogin(email: statusemail, toggleTheme: widget.toggleTheme,));
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Logo App'),
            CircularProgressIndicator(),
          ],
        )          
      )
    );
  }
}