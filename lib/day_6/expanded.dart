import 'package:flutter/material.dart';

class Expandedday6 extends StatelessWidget {
  const Expandedday6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Day 6"),
        backgroundColor: const Color.fromARGB(255, 180, 209, 235),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                // flex: 2,
                child: Container(height: 200, color: const Color.fromARGB(255, 207, 195, 194)),
              ),
              Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 248, 238, 209))),
              Expanded(child: Container(color: const Color.fromARGB(255, 145, 145, 158))),
              Expanded(child: Container(color: const Color.fromARGB(255, 53, 49, 40))),
            ],
          ),
          Expanded(flex: 2, child: Container(color: const Color.fromARGB(255, 248, 238, 209))),
          Expanded(child: Container(color: const Color.fromARGB(255, 145, 145, 158))),
          Expanded(child: Container(color: const Color.fromARGB(255, 53, 49, 40)))
        ],
      ),
    );
  }
}