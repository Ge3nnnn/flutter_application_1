import 'package:flutter/material.dart';

class ListDay15 extends StatelessWidget {
  const ListDay15({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> namaBuah = [
      "Apel",
      "Jeruk",
      "Mangga",
      "Tomat",
      "Pisang",
      "Jeruk",
      "Anggur",
      "Semangka",
      "Melon",
      "Stroberi",
      "Nanas",
      "Pepaya",
      "Durian",
      "Rambutan",
      "Nangka",
      "Salak",
      "Alpukat",
      "Ceri",
      "Kelapa",
      "Manggis",
      "Jambu",
      "Kiwi",
      "Markisa",
      "Lemon",
    ];
    
    return Scaffold(
      body: ListView.builder(
        itemCount: namaBuah.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(namaBuah[index]);
        },
      ),
    );
  }
}
