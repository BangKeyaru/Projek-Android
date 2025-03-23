import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FriendsListScreen extends StatelessWidget {
  final List<String> friends = [
    "Adi Tegar Setiawan",
    "Afiq Muhammad Nur Marzuki",
    "Aji Kia Ramadhani",
    "Alfi Fadli",
    "Alif Akbar Andriyansyah",
    "Amanda Aditama Nurani",
    "Andri Khoirul Manaf",
    "Atik Setyaningsih",
    "Claudea Cahaya Cinta",
    "Devan Vidhel Azadan",
    "Dina Asritama Wulandari",
    "Dyah Purwaningsih",
    "Elsa Oktawiyani",
    "Faizal Wiyatnodito",
    "Febrian Maulana",
    "Haffiant Resditya Akbar",
    "Ilham Khoiri",
    "Jenniva Retno Nuryuansyah",
    "Maheswara Hani R.K.",
    "Muchamad Syarif Hidayatullah",
    "Muhammad Amir",
    "Muhammad Noviyanto",
    "Muhammad Zulfa",
    "Nabilah Junita Eka Putri",
    "Raply Fediansyah",
    "Rizal Diaz Reihan Saputra",
    "Satria Abdul",
    "Sultan Syah",
    "Valen Purwaixna Saputra",
    "Vhereyga Putra Pradana",
    "Waras Tri Wijaya",
    "Yola Aulia Wanergi"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Teman"),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(friends[index]),
          );
        },
      ),
    );
  }
}