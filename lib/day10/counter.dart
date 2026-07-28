import 'package:flutter/material.dart';

class Latihancounter extends StatefulWidget {
  const Latihancounter({super.key});

  @override
  State<Latihancounter> createState() => _LatihancounterState();
}

class _LatihancounterState extends State<Latihancounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Day 10"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(), style: TextStyle(fontSize: 100)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Klik Saya!"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Back To Zero")),
              ElevatedButton(onPressed: () {}, child: Text("Tambah")),
            ],
          ),
        ],
      ),
    );
  }
}
