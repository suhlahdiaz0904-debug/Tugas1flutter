import 'package:flutter/material.dart';

class StackDay8 extends StatelessWidget {
  const StackDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Day 8"),
        backgroundColor: const Color.fromARGB(255, 233, 230, 221),
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(
                color: const Color.fromARGB(255, 179, 201, 219),
                height: 400,
                width: 400,
              ),
              Container(
                color: const Color.fromARGB(255, 238, 232, 224),
                height: 300,
                width: 300,
              ),
              Container(
                color: const Color.fromARGB(255, 223, 226, 185),
                height: 200,
                width: 200,
              ),
            ],
          ),

          Stack(
            alignment: AlignmentGeometry.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                color: const Color.fromARGB(255, 179, 201, 219),
                height: 200,
                width: 200,
              ),
              Container(
                color: const Color.fromARGB(255, 238, 232, 224),
                height: 100,
                width: 100,
              ),
              Container(
                color: const Color.fromARGB(255, 223, 226, 185),
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
