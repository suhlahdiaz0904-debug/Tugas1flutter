import 'package:flutter/material.dart';

class StylingDay5 extends StatelessWidget {
  const StylingDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 216, 216),

        title: const Text("Hello Batch 7"),
        centerTitle: true,
        actions: [Text("1"), Text("2")],
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          Text(
            "Hello Batch 7",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 182, 204, 241),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: const Color.fromARGB(255, 185, 176, 146),
              backgroundColor: const Color.fromARGB(255, 230, 212, 158),

            ),
          ),
        ],
      ),
    );
  }
}