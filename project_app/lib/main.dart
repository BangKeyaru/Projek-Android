import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'list_view.dart';
import 'profile_stack_login.dart';
import 'login_screen.dart';
import 'cart_screen.dart';
import 'home_cart.dart';

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
      home: const LoginFormScreen(),
      routes: {
        '/home': (context) => const HomeSreen(
          email: "nur@gmail.com",
          imagePath: "assets/images/nur.png", 
        ),
        '/friends': (context) => FriendsListScreen(),
        '/profile': (context) => ProfileStackScreen(),
        '/login': (context) => const LoginFormScreen(),
        '/cart': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map?;
          return args != null
              ? CartScreen(
                  nama: args['nama'] ?? "Produk Dummy", 
                  jumlah: args['jumlah'] ?? 0,         
                )
              : const CartScreen(); 
        },
        '/home_cart': (context) => const HomeCart(),
      },
    );
  }
}