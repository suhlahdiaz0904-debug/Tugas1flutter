import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListLevel1 extends StatelessWidget {
  ListLevel1({super.key});

  // Menggunakan variabel 'kategori' sesuai deklarasi di atas
  final List<String> peralatandapur = [
    "Kompor",
    "Wajan",
    "Panci",
    "Blender",
    "Rice Cooker",
    "Sutil",
    "Pisau Dapur",
    "Talenan",
    "Mangkuk",
    "Piring",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 1 - Peralatan Dapur'),
        backgroundColor: Colors.red[300],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8);
        },
        itemCount: peralatandapur.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            tileColor: index % 2 == 0 ? Colors.red[200] : Colors.grey[200],
            title: Text(peralatandapur[index]),
          );
        },
      ),
    );
  }
}
