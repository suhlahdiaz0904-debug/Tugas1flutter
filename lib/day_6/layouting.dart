import 'package:flutter/material.dart';

class LayoutingDay6 extends StatelessWidget {
  const LayoutingDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 166, 196, 192),
        title: const Text("LayoutingDay6"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Text("Hello Batch 7"),
          SizedBox(height: 20),
          Text("Hello Batch 7"),


          Row(children: [
              Text("Hello Batch 7"),
            ],
          ),

          
          SizedBox(
            height: 20,
            child: Row(
              children: [Icon(Icons.star),Text("Hello Batch 7"),
            SizedBox(
              height: 20,
              child: Row(children: [Icon(Icons.star),Text("Hello Batch 7")],),
            )
              ],
            ),
          ),


          //Penggunaan Padding
          Row(
            children: [
            Icon(Icons.star),Text("Dibawah Penggunaan Padding"),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              ],
            )
            ),

Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              ],
            )
            ),



            ],
      ),
    );
  }
}