import 'package:flutter/material.dart';

class GridView8 extends StatelessWidget {
  const GridView8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Day8"),
        backgroundColor: const Color.fromARGB(255, 170, 221, 206),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 2,
        children: <Widget>[
          Container(color: const Color.fromARGB(255, 255, 68, 68)),
          Container(color: const Color.fromARGB(255, 251, 255, 0)),
          Container(color: const Color.fromARGB(255, 17, 143, 0)),
          Container(color: Colors.blueAccent),
        ],
      ),
    );
  }
}
