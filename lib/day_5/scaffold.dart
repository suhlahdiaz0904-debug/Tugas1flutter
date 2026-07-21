import 'package:flutter/material.dart';

class ScaffoldDay5 extends StatelessWidget {
  const ScaffoldDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 168, 187, 197),
        title: Text("Cliff Map"),
        centerTitle: true,
        actions: [Text("1"), Text("2")],
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          Text("Rangkings"),
          Text("Rangkings"),
          Text("Rangkings"),
          Text("Rangkings"),
        ],
      ),
    );
  }
}