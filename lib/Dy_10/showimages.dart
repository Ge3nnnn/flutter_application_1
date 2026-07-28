import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class TestCounterDay10 extends StatefulWidget {
  @override
  MyCounterState createState() => MyCounterState();
}

class MyCounterState extends State<TestCounterDay10> {
  bool showImage = true;
  // Langkah 2: Buat variabel state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sho image Day 10"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          showImage
              ? Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjhXcm23Ubb93PY5sNnv20qVB2IhN0qZ2OZR7_mhlq0w&s=10",
                  height: 200,
                )
              : Container(color: Colors.amber, height: 100, width: 100),
          showImage
              ? Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjhXcm23Ubb93PY5sNnv20qVB2IhN0qZ2OZR7_mhlq0w&s=10",
                  height: 200,
                )
              : Shimmer(
                  child: Container(
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                  ),
                ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              setState(() {});
              showImage = !showImage;
              // buat nambahin notif
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  content: Text(
                    showImage ? "Ada gambar" : "Tidak ada gambar",
                    style: TextStyle(fontSize: 50),
                  ),
                  leading: Icon(Icons.wifi_off),
                  backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(
                          context,
                        ).hideCurrentMaterialBanner();
                      },
                      child: Text("oke"),
                    ),
                  ],
                ),
              );
            },
            child: Text(
              showImage ? "Sembunyikan" : "Tampilkan",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
