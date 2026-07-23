import 'package:flutter/material.dart';

class Containerday6 extends StatelessWidget {
  const Containerday6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container day 6"),
        backgroundColor: const Color.fromARGB(255, 191, 173, 219),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              height: 100,
              width: 400,
              color: const Color.fromARGB(255, 205, 227, 245),
            ),
          ),
          Container(
            height: 100,
            width: 200,
            color: const Color.from(
              alpha: 1,
              red: 0.533,
              green: 0.871,
              blue: 0.914,
            ),
            child: Column(
              children: [
                Text("Nama: Windah"),
                Text("Hobi: Bermain Game"),
                Text("Alamat: Jl. Papanggo"),
              ],
            ),
          ),

          //2
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(16),
            height: 100,
            width: 200,
            color: const Color.from(
              alpha: 1,
              red: 0.533,
              green: 0.871,
              blue: 0.914,
            ),
            child: Column(
              children: [
                Text("Nama: Ajeng"),
                Text("Hobi: Scroll Instagram"),
                Text("Alamat: Jl. Sunter Muara"),
              ],
            ),
          ),
          //3
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(12),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: const Color.from(
                alpha: 1,
                red: 0.533,
                green: 0.871,
                blue: 0.914,
              ),
              border: Border.all(
                color: Colors.black,
                width: 2,
                strokeAlign: 10,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  offset: Offset(10, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                Text("Nama: Xiumin"),
                Text("Hobi: Makan"),
                Text("Alamat: Korea"),
              ],
            ),
          ),
          //4
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(12),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: const Color.from(
                alpha: 1,
                red: 0.533,
                green: 0.871,
                blue: 0.914,
              ),
              border: Border.all(
                color: Colors.black,
                width: 2,
                strokeAlign: 10,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  offset: Offset(10, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                Text("Nama: Seungmin"),
                Text("Hobi: Makan"),
                Text("Alamat: Korea"),
              ],
            ),
          ),
          //5
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(12),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: const Color.from(
                alpha: 1,
                red: 0.533,
                green: 0.871,
                blue: 0.914,
              ),
              border: Border.all(
                color: Colors.black,
                width: 2,
                strokeAlign: 10,
              ),
              borderRadius: BorderRadius.vertical(top: .circular(20)),
              gradient: LinearGradient(
                colors: [Colors.amberAccent, Colors.cyan, Colors.greenAccent],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  offset: Offset(10, 20),
                ),
              ],
            ),
            child: Column(
              children: [
                Text("Nama: Apo"),
                Text("Hobi: Makan"),
                Text("Alamat: Thai"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}