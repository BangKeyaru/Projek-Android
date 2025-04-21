import 'package:flutter/material.dart';

class HomeCart extends StatefulWidget {
  const HomeCart({super.key});

  @override
  State<HomeCart> createState() => _HomeCartState();
}

class _HomeCartState extends State<HomeCart> {
  final TextEditingController namacontroller = TextEditingController();
  final TextEditingController jumlahcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Cart"),
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
            TextField(
              controller: jumlahcontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Jumlah Barang",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                final nama = namacontroller.text;
                final jumlah = int.tryParse(jumlahcontroller.text) ?? 0;

                Navigator.pushNamed(
                  context,
                  '/cart',
                  arguments: {'nama': nama, 'jumlah': jumlah},
                );
              },
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}