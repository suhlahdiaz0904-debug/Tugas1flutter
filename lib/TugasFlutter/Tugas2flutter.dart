
import 'package:flutter/material.dart';

class Tugas2flutter extends StatelessWidget {
  const Tugas2flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 95, 65),
        title: const Text("Detail Toko"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 16,
          children: [
            // 1. Judul Toko
            const Text(
              "Cliff & Cave Shop",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

            // 2. Profil KONTAK brand tsb 
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 208, 193),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  )
                ],
              ),
              child: Row(
                children: const [
                  Icon(Icons.mail),
                  SizedBox(width: 12),
                  Text("Cliff&Cave@gmail.com", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),

            // 3. Kontak Hubung si brand
            Row(
              children: const [
                Icon(Icons.phone, size: 18),
                SizedBox(width: 6),
                Text("081617850906"),
                Spacer(),
                Icon(Icons.location_on, size: 18),
                SizedBox(width: 6),
                Text("Jakarta, Indonesia"),
              ],
            ),

            // 4. Omset/penjualan & rating brand (Dengan Shadow Hitam)
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 208, 193),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 8,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: const Text(
                      "300+ Terjual",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 208, 193),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 8,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: const Text(
                      "4.8 / 5 Rating",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),

            // 5. Deskripsi mengenai brand
            const Text(
              "Cliff & Cave Shop ini adalah dimana brand ini menjuall beberapa alat-alat",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.black87),
            ),

            // 6. Logo menggunakan DecorationImage & AssetImage sesuai referensi
            Container(
              height: 300,
              width: 350 ,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 197, 146, 98),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 8,
                    offset: Offset(3, 3),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage("assets/images/cliff.png"), //
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

