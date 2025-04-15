import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.jumlah, required this.nama});

  final String nama;
  final int jumlah;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late TextEditingController namacontroller;

  @override
  void initState() {
    super.initState();
    namacontroller = TextEditingController(text: widget.nama); 
  }

  @override
  void dispose() {
    namacontroller.dispose(); 
    super.dispose();
  }

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
            TextField(
              controller: namacontroller,
              decoration: const InputDecoration(
                labelText: "Nama Barang",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Jumlah Barang: ${widget.jumlah}",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Kembali",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}