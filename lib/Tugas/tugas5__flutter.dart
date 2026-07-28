import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  bool _ifKeliatan = false;
  bool _belumDisukai = false;
  bool _belumKeliatan = false;
  bool _tekanan = false;
  int _angkaGesture = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaksi Flutter", style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        actions: [Icon(Icons.favorite_border)],
        leading: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Elevated Buttom:", style: TextStyle(fontSize: 20)),
            if (_ifKeliatan)
              Text("Halo Saya Developer!!", style: TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _ifKeliatan = !_ifKeliatan;
                });
              },
              child: Text(
                _ifKeliatan ? "Kamu Sudah Menekan" : "Jangan Dipencet!!",
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            Text("Icon Button:"),

            IconButton(
              iconSize: 100,
              onPressed: () {
                setState(() {
                  _belumDisukai = !_belumDisukai;
                });
              },
              icon: Icon(
                _belumDisukai ? Icons.favorite : Icons.favorite,
                color: _belumDisukai ? Colors.red : Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(_belumDisukai ? "Sudah Suka" : "Belum Suka"),
            SizedBox(height: 10),
            Text("Teks Button:"),
            if (_belumKeliatan)
              Text(
                "Satu langkah kecil hari ini lebih baik daripada seribu rencana esok hari",
              ),
            TextButton(
              onPressed: () {
                setState(() {
                  _belumKeliatan = !_belumKeliatan;
                });
              },
              child: Text(
                _belumKeliatan ? "Perpendek Desripsi" : "Jngan dilihat",
              ),
            ),
            SizedBox(height: 10),
            Text("Tentang InkWelllll:"),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 204, 255),
                border: Border.all(color: Colors.black, width: 5),
                borderRadius: BorderRadius.circular(50),
              ),

              margin: EdgeInsets.all(9),
              height: 50,
              width: 500,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint("klick gambar");
                      setState(() {
                        _tekanan = !_tekanan;
                      });
                    },
                    child: Text(
                      _tekanan
                          ? "Tekanan terdeteksi"
                          : "Tekanan Tidak terdetaksi",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text("tentang Gesture Detector"),

            GestureDetector(
              onTap: () {
                setState(() {
                  _angkaGesture++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  _angkaGesture += 2;
                });
              },
              onLongPress: () {
                setState(() {
                  _angkaGesture += 3;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 204, 255),
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 150,
                height: 50,
                padding: EdgeInsets.all(8),
                child: Text(
                  "ANGKA :$_angkaGesture",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("-SIngele Tap= +1"),
                  Text("-Double Tap= +2"),
                  Text("-Hold= +3"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _angkaGesture--;
                          });
                        },
                        child: Text("-", style: TextStyle(fontSize: 40)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
