import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'list_view.dart';
import 'profile_stack_login.dart';
import 'login_screen.dart';
import 'cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeSreen(),
      routes: {
        '/friends': (context) => FriendsListScreen(),
        '/profile': (context) => ProfileStackScreen(),
        '/login': (context) => LoginFormScreen(),
        '/cart': (context) => CartScreen(jumlah: 5, nama: "vallen",),
      },
    );
  }
}
