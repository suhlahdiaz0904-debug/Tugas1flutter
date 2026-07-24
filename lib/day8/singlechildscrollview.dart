import 'package:flutter/material.dart';

class SingleChildDay8 extends StatelessWidget {
  const SingleChildDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Child Day 8"),
        backgroundColor: const Color.fromARGB(255, 211, 204, 185),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    color: const Color(0xff326792),
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: const Color(0xffdad9d6),
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 248, 238, 238),
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),

            Container(color: const Color(0xff326792), width: 400, height: 400),
            Container(color: const Color(0xffdad9d6), width: 300, height: 300),
            Container(color: const Color(0xff000000), width: 200, height: 200),
          ],
        ),
      ),
    );
  }
}
