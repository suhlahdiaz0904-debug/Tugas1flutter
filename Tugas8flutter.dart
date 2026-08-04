import 'package:belajar_flutter/TugasFlutter/Tugas2flutter.dart';
import 'package:belajar_flutter/TugasFlutter/Tugas7flutter.dart';
import 'package:flutter/material.dart';

class Tugasflutter8 extends StatefulWidget {
  const Tugasflutter8({super.key});

  @override
  State<Tugasflutter8> createState() => _Tugasflutter8State();
}

class _Tugasflutter8State extends State<Tugasflutter8> {
  int selectedBottom = 0;

  void changeBottom(int index) {
    selectedBottom = index;
    print("ini adalah value dari $selectedBottom");
    setState(() {});
  }

  final List<Widget> widgetOption = [
    Tugasflutter7(),
    Tugas2flutter(),
    // Center(child: Text("Home")),
    // Center(child: Text("School")),
    // Center(child: Text("Business")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        ],
      ),
      body: widgetOption.elementAt(selectedBottom),
    );
  }
}
