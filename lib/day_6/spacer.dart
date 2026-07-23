import 'package:flutter/material.dart';

class Spacerday6 extends StatelessWidget {
  const Spacerday6({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer day 6"),
        backgroundColor: const Color.fromARGB(255, 238, 231, 210),
      ),
      body: Column(
        children: [
          // 1. Menggunakan Spacer di dalam Row (Horizontal)
          // Spacer di sini menyisipkan ruang kosong di antara container merah, kuning, dan hijau.
          // Secara internal, Spacer adalah widget Expanded kosong dengan flex default = 1.
          Row(
            children: [
              Expanded(
                // flex: 2,
                child: Container(height: 200, color: const Color.fromARGB(255, 141, 194, 191)),
              ),
              Spacer(), // Mengambil sisa ruang kosong secara merata untuk memisahkan container merah dan kuning
              Expanded(child: Container(height: 200, color: const Color.fromARGB(255, 224, 223, 211))),
              Spacer(), // Mengambil sisa ruang kosong secara merata untuk memisahkan container kuning dan hijau
              Expanded(child: Container(height: 200, color: const Color.fromARGB(255, 167, 224, 235))),
            ],
          ),
          Center(child: Text("Haloha")),
          SizedBox(height: 10),
          
          // 2. Menggunakan Expanded di dalam Column (Vertikal)
          Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 194, 241, 241))),
          Expanded(child: Container(color: const Color.fromARGB(255, 224, 223, 210))),
          Expanded(child: Container(color: const Color.fromARGB(255, 152, 185, 196))),
        ],
      ),
    );
  }
}