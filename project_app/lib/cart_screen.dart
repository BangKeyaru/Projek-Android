import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
    this.nama = "Kosong", 
    this.jumlah = 0,          
  });

  final String nama;
  final int jumlah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama Barang: $nama",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Jumlah Barang: $jumlah",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}