import 'package:flutter/material.dart';

class Tugasflutter4 extends StatelessWidget {
  const Tugasflutter4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrasi"),
        backgroundColor: const Color.fromARGB(255, 195, 214, 212),
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Form Registrasi",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),

                  // TextField 1: Nama Pengguna dengan prefixIcon
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

                  // TextField 2: Email Pengguna dengan prefixIcon
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

                  // TextField 3: Telephone Pengguna dengan prefixIcon
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

                  // TextField 4: Input Password dengan prefixIcon
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

                  // TextField 5: Konfirmasi Password dengan label/suffixIcon mata
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
            Center(
              child: const Text(
                "Wilayah Pemanjatan",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),

            // Grid / Daftar Wilayah Gambar
          ],
        ),
      ),
    );
  }
}
