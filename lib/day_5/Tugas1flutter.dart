import 'package:flutter/material.dart';

class Tugas1flutter extends StatelessWidget {
  const Tugas1flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 216, 216),
        title: const Text("Profil Saya"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        // Ditambahin paddingnya agar tidak menempel di "Profil Saya
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 12,
          children: [
            Text(
              "Farhiyah Suhlah Diaz",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 75, 151, 182),
                decorationColor: const Color.fromARGB(255, 185, 176, 146),
                //Ini adalah objek pertama "Farhiyah Suhlah Diaz"
              ),
            ),
            
            // Ini objek Keduakk yang JAKARDAHHHH
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 20,
                ),
                SizedBox(width: 6),
                Text(
                  "Jakarta", 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            
            // inihhhh objek ketigas deskripsi
            const Text(
              "Seorang peserta pelatihan yang antusias belajar Flutter di PPKD Jakarta Pusat.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}