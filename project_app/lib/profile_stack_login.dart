import 'package:flutter/material.dart';
import 'package:project_app/login_screen.dart';
import 'home_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ProfileStackLogin extends StatelessWidget {
  final String email;
  final VoidCallback toggleTheme;

  const ProfileStackLogin({super.key, required this.email, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: toggleTheme
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto Profil
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/nur.png'),
              ),
              const SizedBox(height: 20),

              // Email
              Text(
                'Login Berhasil',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                email,
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(() => HomeScreens(toggleTheme: toggleTheme,));
                  },
                  child: Text('Home screen'),
                  ),
                ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                  final box = GetStorage();
                  box.remove('email');
                  Get.off(() => LoginFormScreen(toggleTheme: toggleTheme,));
                }, 
                child: Text('Logout')),
              )
            ],
          ),
        ),
      ),
    );
  }
}