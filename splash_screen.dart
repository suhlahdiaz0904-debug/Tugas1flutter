import 'package:belajar_flutter/TugasFlutter/Tugasflutter10.dart';
import 'package:belajar_flutter/extention/Navigator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreenDay17 extends StatefulWidget {
  const SplashScreenDay17({super.key});

  @override
  State<SplashScreenDay17> createState() => _SplashScreenDay17State();
}

class _SplashScreenDay17State extends State<SplashScreenDay17> {
  @override
  void initState() {
    super.initState();
    // Memanggil fungsi goToLogin() segera setelah widget diinisialisasi.
    goToLogin();
  }

  // Fungsi untuk menangani alur perpindahan halaman dari splash screen.
  void goToLogin() async {
    // Memberikan penundaan (delay) selama 3 detik untuk menampilkan animasi splash screen.
    await Future.delayed(Duration(seconds: 3));

    // Pastikan widget masih aktif sebelum melakukan navigasi
    if (!mounted) return;

    // Langsung arahkan ke halaman TugasFlutter10 menggunakan template asli Anda
    context.push(TugasFlutter10());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menampilkan animasi Lottie di tengah layar sebagai visual splash screen.
      body: Center(child: Lottie.asset("assets/animation/icon.json")),
    );
  }
}
