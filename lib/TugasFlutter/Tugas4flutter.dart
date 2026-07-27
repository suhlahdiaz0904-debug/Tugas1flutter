import 'package:flutter/material.dart';

class Tugasflutter4 extends StatelessWidget {
  const Tugasflutter4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laporan & Riwayat Tebing"),
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
                    "Laporan Kondisi Tebing",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),

                  // TextField 1: Nama Pengguna dengan prefixIcon
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Titik Lokasi / Koordinat ",
                      prefixIcon: const Icon(Icons.map_outlined),
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
                      hintText: "Nama Tebing",
                      prefixIcon: const Icon(Icons.local_activity_rounded),
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
                      hintText: "Nama Pelapor",
                      prefixIcon: const Icon(Icons.person),
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
                      hintText: "Catatan Tambahan",
                      prefixIcon: const Icon(Icons.description),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 253, 247, 247),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // TextField 5: Konfirmasi Password dengan label/suffixIcon mata
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Judul Bagian Bawah
            const Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Text(
                "Riwayat Laporan Terakhir",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 12),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 249),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 1),
                ],
              ),

              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                title: Text(
                  "Suhlah",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tebing Citatah"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 249),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 1),
                ],
              ),

              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                title: Text(
                  "Livia",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tebing Parang"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 249),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 1),
                ],
              ),

              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                title: Text(
                  "Tisan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tebing Arpam"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 249),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 1),
                ],
              ),

              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                title: Text(
                  "Mirza",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tebing Hawu"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 249),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 1),
                ],
              ),

              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                title: Text(
                  "Riby",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tebing Cidomba"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 249),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 1),
                ],
              ),

              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                title: Text(
                  "Widlis",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tebing Jeger"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
