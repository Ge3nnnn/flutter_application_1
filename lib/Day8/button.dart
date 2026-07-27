import 'package:flutter/material.dart';

class IconButtonDay8 extends StatefulWidget {
  const IconButtonDay8({super.key});

  @override
  State<IconButtonDay8> createState() => _IconButtonDay8State();
}

bool showImage = false;

class _IconButtonDay8State extends State<IconButtonDay8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 253, 232), //warna
        title: Text('ICON BUTTON'), //kalimat apa yangmau ada
        centerTitle: false, //naro text dmna mau nya
        actions: [Text("bar")], //buat yang dikanan atas
        //Image(gambar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(width: 20),

            // tombol
            ElevatedButton(
              onPressed: () {
                debugPrint("sadasd");
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("kelik saya!!")));
              },
              child: Text("klik akuu"),
            ),

            // text button
            TextButton(
              onPressed: () {
                print("asdassd");
              },
              child: Text("Selengkapnya"),
            ),

            // icon button
            IconButton(
              onPressed: () {
                debugPrint("sadasdsa");
              },
              icon: Icon(Icons.favorite),
            ),
            InkWell(
              onTap: () {
                debugPrint("klick gambar");
              },
              child: Text("asddasasddasasd"),
            ),

            // gesture Detector
            GestureDetector(
              onTap: () {
                debugPrint("klick  se kai");
              },
              onDoubleTap: () {
                debugPrint("klick  se kai");
              },
              onLongPress: () {
                debugPrint("klick  se kai");
              },
              child: Container(
                width: 500,
                height: 50,
                color: Colors.amber,
                padding: EdgeInsets.all(8),
                child: Text("klik saya"),
              ),
            ),
            // floating button
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                debugPrint("FAB ditekan");
              },
              tooltip: "tambah data",
              child: Icon(Icons.thumb_up),
            ),
          ],
        ),
      ),
    );
  }
}
