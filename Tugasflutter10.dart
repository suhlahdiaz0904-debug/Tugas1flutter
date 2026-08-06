import 'package:belajar_flutter/extention/Navigator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HasilPendaftaranPage extends StatelessWidget {
  final String namaLengkap;
  final String email;
  final String nomorHp;
  final String instansi;

  const HasilPendaftaranPage({
    super.key,
    required this.namaLengkap,
    required this.email,
    required this.nomorHp,
    required this.instansi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hasil Pendaftaran"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama Lengkap: $namaLengkap"),
            SizedBox(height: 8),
            Text("Email: $email"),
            SizedBox(height: 8),
            Text("Nomor HP: $nomorHp"),
            SizedBox(height: 8),
            Text("Instansi: $instansi"),
          ],
        ),
      ),
    );
  }
}

class TugasFlutter10 extends StatefulWidget {
  const TugasFlutter10({super.key});

  @override
  State<TugasFlutter10> createState() => _TugasFlutter10State();
}

class _TugasFlutter10State extends State<TugasFlutter10> {
  final TextEditingController namaLengkapController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nomorHpController = TextEditingController();
  final TextEditingController instansiController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    namaLengkapController.dispose();
    emailController.dispose();
    nomorHpController.dispose();
    instansiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulir Pendaftaran"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: namaLengkapController,
                decoration: InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Nama lengkap wajib diisi";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Email wajib diisi";
                  } else if (!value.contains('@')) {
                    return "Email tidak valid (harus mengandung karakter '@')";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              TextFormField(
                controller: nomorHpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Nomor HP ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 16),

              TextFormField(
                controller: instansiController,
                decoration: InputDecoration(
                  labelText: "Instansi / Kota Asal",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Instansi atau Kota Asal wajib diisi";
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.grey[150],
                        title: Text(
                          "Pendaftaran Berhasil",
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 120,
                              child: Lottie.asset(
                                "assets/animation/berhasil.json", // Pastikan file Lottie sukses sudah ada
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Data pendaftaran berhasil divalidasi dan dikirim!",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HasilPendaftaranPage(
                                    namaLengkap: namaLengkapController.text,
                                    email: emailController.text,
                                    nomorHp: nomorHpController.text,
                                    instansi: instansiController.text,
                                  ),
                                ),
                              );
                            },
                            child: Text("OK"),
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.grey[150],
                        title: Text(
                          "Peringatan Validasi",
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 120,
                              child: Lottie.asset(
                                "assets/animation/gagal.json",
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Mohon lengkapi semua data wajib dengan format yang benar!",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: Text("Kembali"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text("Daftar", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
