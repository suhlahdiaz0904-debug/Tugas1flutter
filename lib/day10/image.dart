import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class LatihanImages extends StatefulWidget {
  const LatihanImages({super.key});

  @override
  State<LatihanImages> createState() => _LatihanImagesState();
}

class _LatihanImagesState extends State<LatihanImages> {
  bool showImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Day 10"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/citatah.jpg", height: 200),
          showImage
              ? Image.network(
                  "https://preloved.co.id/_ipx/f_webp/https://assets.preloved.co.id/products/398074/0a20ef41-7c3c-4568-97bc-15705911066c.jpg",
                  height: 200,
                )
              : Container(
                  color: const Color.fromARGB(255, 249, 250, 250),
                  height: 200,
                  width: 200,
                ),
          showImage
              ? Image.network(
                  "https://preloved.co.id/_ipx/f_webp/https://assets.preloved.co.id/products/398074/0a20ef41-7c3c-4568-97bc-15705911066c.jpg",
                  height: 200,
                )
              : Shimmer(
                  child: Container(
                    color: const Color.fromARGB(255, 171, 202, 202),
                    height: 200,
                    width: 200,
                  ),
                ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
              showImage = !showImage;
            },
            child: Text(showImage ? "Sembunyikan" : "Tampilkan"),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: showImage ? Colors.amberAccent : Colors.black,
            ),
            onPressed: () {
              setState(() {});
              showImage = !showImage;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    showImage ? "Gambar Ditampilkan" : "Gambar Disembunyikan",
                  ),
                ),
              );
            },
            child: Text(showImage ? "Sembunyikan" : "Tampilkan"),
          ),
        ],
      ),
    );
  }
}
