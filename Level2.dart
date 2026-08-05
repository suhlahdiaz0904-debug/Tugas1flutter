import 'package:flutter/material.dart';

class Level2 extends StatelessWidget {
  Level2({super.key});

  final List<Map<String, dynamic>> peralatanClimbing = [
    {"nama": "Panci Goreng ", "icon": Icons.soup_kitchen},
    {"nama": "Sutil", "icon": Icons.flatware},
    {"nama": "Pisau Dapur", "icon": Icons.restaurant},
    {"nama": "Blender", "icon": Icons.blender},
    {"nama": "Talenan", "icon": Icons.kitchen},
    {"nama": "Piring Makan", "icon": Icons.dinner_dining},
    {"nama": "Mangkuk", "icon": Icons.ramen_dining},
    {"nama": "Gelas Kaca", "icon": Icons.local_bar},
    {"nama": "Talas", "icon": Icons.grid_view},
    {"nama": "Rice Cooker", "icon": Icons.electric_bolt},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: peralatanClimbing.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(peralatanClimbing[index]["icon"], color: Colors.teal),
            title: Text(peralatanClimbing[index]["nama"]),
          );
        },
      ),
    );
  }
}
