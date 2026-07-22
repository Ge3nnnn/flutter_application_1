import 'package:flutter/material.dart';

class ImageCountainerDay6 extends StatelessWidget {
  const ImageCountainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar buat header atau paling atas
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 135, 1), //warna
        title: Text('Image Countainer Day 6'), //kalimat apa yangmau ada
        centerTitle: false, //naro text dmna mau nya
        actions: [Text("bar")], //buat yang dikanan atas
        //Image(gambar
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            width: 540,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Images/LOLO.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
