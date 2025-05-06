import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_app/profile_stack_login.dart';
import 'login_screen.dart';
import 'package:get_storage/get_storage.dart';

class Spalshscreen extends StatefulWidget {

  const Spalshscreen({super.key, });

  @override
  State<Spalshscreen> createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Spalshscreen> {

@override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {

      final box = GetStorage();
      final statusemail = box.read('gmail');

      if (statusemail == null) {
        Get.off(() => LoginFormScreen());
      } else {
        Get.off(() => ProfileStackLogin(email: statusemail));
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