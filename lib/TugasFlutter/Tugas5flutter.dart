import 'package:flutter/material.dart';

class Tugasflutter5 extends StatefulWidget {
  const Tugasflutter5({super.key});

  @override
  State<Tugasflutter5> createState() => _Tugasflutter5State();
}

class _Tugasflutter5State extends State<Tugasflutter5> {
  int counter = 10;

  bool showSecretTest = false;
  bool isFavorite = false;
  bool showDescription = false;
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaksi Flutter"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Dibawah Wujud Elevated"),
            SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showSecretTest = !showSecretTest;
                });
                debugPrint("Elevatednya dipencet");
              },
              child: Text("KLIK DISINI "),
            ),

            if (showSecretTest)
              Padding(
                padding: EdgeInsetsGeometry.only(top: 7),
                child: Text("Halo, Saya Sulaaaa"),
              ),

            const SizedBox(height: 25),

            Text("Dibawah Wujud Icon Button"),

            IconButton(
              iconSize: 40,
              icon: Icon(
                Icons.favorite,
                color: isFavorite
                    ? const Color.fromARGB(255, 255, 81, 0)
                    : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
                debugPrint("Icon Button Ditekan");
              },
            ),
            Text(isFavorite ? "Tersimpan di Favorit" : "Belum Disukai"),
            SizedBox(height: 25),

            //2Text Button
            Text("Dibawah Wujud Text Button"),
            TextButton(
              onPressed: () {
                setState(() {
                  showDescription = !showDescription;
                });
                debugPrint("Text Button Ditekan");
              },
              child: Text(
                showDescription
                    ? "Sembunyikan Deskripsi"
                    : "Tampilkan Deskripsi",
              ),
            ),

            Center(
              child: Text(
                showDescription ? "KEPO" : "",
                textAlign: TextAlign.center,
              ),
            ),

            Text("Dibawah Wujud Inkwell"),
            SizedBox(height: 8),

            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    showMessage = true;
                  });
                  debugPrint("Inkwell Ditekan");

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sentuhan Diditeksi!")),
                  );
                },
                child: Container(
                  width: 300,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Klik Kotak Ini",
                    style: TextStyle(
                      color: const Color.fromARGB(137, 15, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            if (showMessage) Center(child: Text("Sentukan Berhasil!")),

            Text("Dibawah Wujud Gesture Detector"),
            SizedBox(height: 8),

            GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                });
                debugPrint("Tap");
              },
              onDoubleTap: () {
                setState(() {
                  counter += 2;
                });
                debugPrint("Double Tap");
              },
              onLongPress: () {
                setState(() {
                  counter += 3;
                });
                debugPrint("Long Press");
              },
              child: Container(
                height: 100,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Angka: $counter",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 15, 15, 15),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),

            Center(
              child: Text(
                "- Tap = +1\n"
                "-Double Tap = +2\n"
                "- Long Tap = +3",
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
