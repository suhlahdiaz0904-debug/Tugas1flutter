import 'package:flutter/material.dart';

class TugasFlutter3 extends StatelessWidget {
  const TugasFlutter3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrasi Pemanjat"),
        backgroundColor: const Color.fromARGB(255, 191, 219, 212),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container utama untuk membungkus form registrasi
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Form Registrasi Pemanjat",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),

                  // TextField 1: Nama Pengguna
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Nama Pengguna",
                      prefixIcon: const Icon(Icons.person),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 253, 247, 247),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // TextField 2: Email Pengguna
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email Pengguna",
                      prefixIcon: const Icon(Icons.email),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 253, 247, 247),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // TextField 3: Telephone Pengguna
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Telephone Pengguna",
                      prefixIcon: const Icon(Icons.phone),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 253, 247, 247),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // TextField 4: Input Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Input Password",
                      prefixIcon: const Icon(Icons.vpn_key),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 253, 247, 247),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // TextField 5: Konfirmasi Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Konfirmasi Password",
                      hintText: "Masukkan Konfirmasi Passw...",
                      suffixIcon: const Icon(Icons.visibility),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 253, 247, 247),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Judul Bagian Bawah
            const Center(
              child: Text(
                "Wilayah Pemanjatan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),

            // Grid / Daftar 6 Item Wilayah
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildWilayahItem("Citatah", "assets/images/citatah.jpg"),
                _buildWilayahItem("Arpam", "assets/images/arpam.jpg"),
                _buildWilayahItem("Parang", "assets/images/parang.jpg"),
                _buildWilayahItem("Hawu", "assets/images/hawu.jpg"),
                _buildWilayahItem("Cilangkang", "assets/images/cilangkang.jpg"),
                _buildWilayahItem("Cidomba", "assets/images/cidomba.jpg"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget Helper untuk item Grid Stack (Image + Text Label)
  Widget _buildWilayahItem(String namaWilayah, String imagePath) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 6),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            namaWilayah,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
