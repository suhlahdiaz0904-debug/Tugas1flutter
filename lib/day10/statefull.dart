class LatihanStatefull extends StatefulWidget {
  const LatihanStatefull({super.key});

  @override
  State<LatihanStatefull> createState() => _LatihanStatefullState();
}

class _LatihanStatefullState extends State<LatihanStatefull> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),

          ElevatedButton(
            onPressed: () {
              debugPrint("Notofikasi Debug Console");
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("Kotak disentuh")));
            },
            child: const Text("Klik Saya"),
          ),

          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              debugPrint(" Ikon diklik");
            },
          ),

          TextButton(
            onPressed: () {
              debugPrint("Text Button");
            },
            child: Text("Batal"),
          ),

          GestureDetector(
            onTap: () {
              debugPrint("Disentuh Sekali");
            },
            onDoubleTap: () {
              debugPrint("Tahan Lama");
            },
            onLongPress: () {
              debugPrint("Tahan Lama");
            },
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8),
              child: Text("Tekan Saya"),
            ),
          ),

          FloatingActionButton(
            onPressed: () {
              debugPrint("FAB di tekan");
            },
            tooltip: "Tambah Data",
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
