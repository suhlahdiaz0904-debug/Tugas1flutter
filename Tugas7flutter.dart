import 'package:belajar_flutter/TugasFlutter/Category.dart';
import 'package:belajar_flutter/TugasFlutter/CheckboxTugas7Flutter.dart';
import 'package:belajar_flutter/TugasFlutter/Reminder.dart';
import 'package:belajar_flutter/TugasFlutter/SwitchTugas7.dart';
import 'package:belajar_flutter/TugasFlutter/widgets.dart';
import 'package:flutter/material.dart';

class Tugasflutter7 extends StatefulWidget {
  const Tugasflutter7({super.key});

  @override
  State<Tugasflutter7> createState() => _Tugasflutter7State();
}

class _Tugasflutter7State extends State<Tugasflutter7> {
  int selectedBottom = 0;

  void changeBottom(int index) {
    selectedBottom = index;
    print("ini adalah value dari $selectedBottom");
    setState(() {});
  }

  List<Widget> widgetOptions = [
    CheckBoxTugas7(),
    SwitchTugas7(),
    Category7(),
    Widgets7(),
    Reminder7(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Interaktif"), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(child: Text("TugasFlutter7 - Menu Input")),
            ),
            ListTile(
              leading: Icon(Icons.rule),
              title: Text("Syarat & Ketentuan"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.mode),
              title: Text("Mode Tampilan"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Kategori Produk"),
              onTap: () {
                changeBottom(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Widgets"),
              onTap: () {
                changeBottom(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.punch_clock),
              title: Text("Atur Pengingat"),
              onTap: () {
                changeBottom(4);
              },
            ),
          ],
        ),
      ),
      body: widgetOptions.elementAt(selectedBottom),
    );
  }
}
