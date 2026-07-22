import 'package:flutter/material.dart';

class ImageCountainerDay6 extends StatelessWidget {
  const ImageCountainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar buat header atau paling atas
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 253, 232), //warna
        title: Text('Image Countainer Day 6'), //kalimat apa yangmau ada
        centerTitle: false, //naro text dmna mau nya
        actions: [Text("bar")], //buat yang dikanan atas
        //Image(gambar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, //buat kekiri kekanan
        children: [
          Text("Uzimaki Naruto", style: TextStyle(fontSize: 20)),
          Container(
            height: 200,
            width: 900,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/Images/Naruto_Uzumaki21.webp"),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
