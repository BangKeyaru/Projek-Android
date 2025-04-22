import 'package:flutter/material.dart';
import 'cart_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  TextEditingController jmlController = TextEditingController();
  TextEditingController namaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Kembali'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => CartScreen(
                        nama: namaController.text,
                        jumlah: jmlController.text,
                      ),
                ),
              );
            },
            child: Text('Cart Screen'),
          ),
          TextField(
            controller: namaController,
            decoration: InputDecoration(label: Text('Masukan Nama Barang')),
          ),
          TextField(
            controller: jmlController,
            decoration: InputDecoration(label: Text('Masukan Jumlah Barang')),
          ),
        ],
      ),
    );
  }
}