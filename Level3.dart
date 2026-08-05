import 'package:flutter/material.dart';

class PeralatanDapur {
  final String nama;
  final String gambar;
  final String deskripsi;

  PeralatanDapur({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });
}

class Level3 extends StatelessWidget {
  Level3({super.key});

  final List<PeralatanDapur> dataPeralatanDapur = [
    PeralatanDapur(
      nama: "Kompor",
      gambar: "assets/images/kompor.jpg",
      deskripsi:
          "Kompor gas dengan api stabil dan efisiensi tinggi untuk memasak.",
    ),
    PeralatanDapur(
      nama: "Wajan",
      gambar: "assets/images/wajan.jpg",
      deskripsi:
          "Wajan anti lengket yang aman dan nyaman digunakan sehari-hari.",
    ),
    PeralatanDapur(
      nama: "Panci",
      gambar: "assets/images/panci.jpg",
      deskripsi:
          "Panci stainless steel tahan karat untuk merebus dan membuat sup.",
    ),
    PeralatanDapur(
      nama: "Blender",
      gambar: "assets/images/blender.jpg",
      deskripsi: "Blender bertenaga kuat untuk menghaluskan buah dan bumbu.",
    ),
    PeralatanDapur(
      nama: "Rice Cooker",
      gambar: "assets/images/rice_cooker.jpg",
      deskripsi: "Penanak nasi serbaguna untuk memasak nasi dan menghangatkan.",
    ),
    PeralatanDapur(
      nama: "Sutil",
      gambar: "assets/images/sutil.jpg",
      deskripsi:
          "Sutil tahan panas yang aman digunakan pada wajan anti lengket.",
    ),
    PeralatanDapur(
      nama: "Pisau",
      gambar: "assets/images/pisau.jpg",
      deskripsi:
          "Set pisau tajam dan anti karat untuk memotong berbagai bahan.",
    ),
    PeralatanDapur(
      nama: "Talenan",
      gambar: "assets/images/talenan.jpg",
      deskripsi: "Alas potong bahan makanan yang kokoh dan higienis.",
    ),
    PeralatanDapur(
      nama: "Mangkuk",
      gambar: "assets/images/mangkuk.jpg",
      deskripsi: "Mangkuk saji berbahan keramik tebal dengan desain elegan.",
    ),
    PeralatanDapur(
      nama: "Piring",
      gambar: "assets/images/piring.jpg",
      deskripsi:
          "Piring makan berkualitas yang tahan panas dan mudah dibersihkan.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter 9"), centerTitle: true),
      body: ListView.builder(
        itemCount: dataPeralatanDapur.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  dataPeralatanDapur[index].gambar,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                dataPeralatanDapur[index].nama,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(dataPeralatanDapur[index].deskripsi),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
