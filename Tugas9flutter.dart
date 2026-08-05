import 'package:belajar_flutter/Tugas9/Level1.dart';
import 'package:belajar_flutter/Tugas9/Level2.dart';
import 'package:belajar_flutter/Tugas9/Level3.dart';
import 'package:flutter/material.dart';

class Tugasflutter9 extends StatefulWidget {
  const Tugasflutter9({super.key});

  @override
  State<Tugasflutter9> createState() => _Tugasflutter9State();
}

class _Tugasflutter9State extends State<Tugasflutter9> {
  int selected = 0;

  void changeBottom(int index) {
    selected = index;
    print("ini adalah value dari $selected");
    setState(() {});
  }

  List<Widget> widgetOptions = [ListLevel1(), Level2(), Level3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Isi"), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.task),
              title: Text("Level 1"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text("Level 2"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text("Level 3"),
              onTap: () {
                changeBottom(2);
              },
            ),
          ],
        ),
      ),
      body: widgetOptions.elementAt(selected),
    );
  }
}
