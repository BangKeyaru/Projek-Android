import 'package:flutter/material.dart';
import 'package:project_app/login_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
import 'list_view.dart';

class ProfileStackLogin extends StatefulWidget {
  final String email;

  const ProfileStackLogin({super.key, required this.email});

  @override
  State<ProfileStackLogin> createState() => _ProfileStackLoginState();
}

class _ProfileStackLoginState extends State<ProfileStackLogin> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/nur.png'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Login Berhasil',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  widget.email,
                  style: TextStyle(
                    color: isDarkMode ? Colors.white70 : Colors.black87,
                  ),
                ),
                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => HomeScreens());
                    },
                    child: Text('Home Screen'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => FriendsListScreen());
                    },
                    child: Text('List Teman'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final box = GetStorage();
                      box.remove('email');
                      Get.off(() => LoginFormScreen());
                    },
                    child: Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}