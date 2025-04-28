import 'package:flutter/material.dart';
import 'home_screen.dart';

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

              // Tombol ke Home
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreens()),
                    );
                  },
                  icon: Icon(Icons.home),
                  label: Text('Home Screen'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}