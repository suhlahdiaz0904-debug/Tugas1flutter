import 'package:belajar_flutter/Dokumen%20Pendukung%20TUGAS/extention/Navigator.dart';
import 'package:belajar_flutter/day16/home_abal_abal.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TextFromField12 extends StatefulWidget {
  const TextFromField12({super.key});

  @override
  State<TextFromField12> createState() => _TextFromField12State();
}

class _TextFromField12State extends State<TextFromField12> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Menambahkan GlobalKey untuk validasi Form
  final formKey = GlobalKey<FormState>();

  final Color naraGreen = const Color(0xFF29563E);

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              style: const TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email / Username',
                hintStyle: const TextStyle(color: Colors.black54),
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: Colors.black54,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.black12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.black12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: naraGreen, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.red, width: 1.5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.red, width: 2),
                ),
              ),
              // Logika Validasi Email
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email tidak boleh kosong";
                } else if (!value.contains('@')) {
                  return "Email tidak valid";
                } else if (!value.contains('ppkd.com')) {
                  return "Email bukan email ppkd";
                }
                return null;
              },
            ),

            const SizedBox(height: 16),

            // Mengubah TextField menjadi TextFormField untuk Password
            TextFormField(
              controller: passwordController,
              obscureText: true,
              style: const TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.black54),
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.black54,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.black12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.black12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: naraGreen, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.red, width: 1.5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.red, width: 2),
                ),
              ),
              // Logika Validasi Password
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password tidak boleh kosong";
                } else if (value.length < 8) {
                  return "Password kurang dari 8 karakter";
                }
                return null;
              },
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);

                  // Menjalankan Validasi
                  if (formKey.currentState!.validate()) {
                    // Jika form tervalidasi, navigasi ke halaman Home
                    context.push(
                      HomeAbalAbalDay16(email: emailController.text),
                    );
                  } else {
                    // Jika form tidak tervalidasi, munculkan dialog
                    print("Belum tervalidasi");
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Info"),
                        content: Column(
                          mainAxisSize: MainAxisSize
                              .min, // Agar dialog tidak memenuhi layar
                          children: [
                            Lottie.asset("assets/animation/icon.json"),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: const Text("Baiklah"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Mulai Petualangan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 32),
            const Divider(color: Colors.white24, thickness: 1),
            const SizedBox(height: 24),

            // Tautan Daftar & Lupa Password
            GestureDetector(
              onTap: () {},
              child: Text(
                'Daftar Akun Baru',
                style: TextStyle(
                  color: Colors.greenAccent.shade200,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Lupa Password',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
