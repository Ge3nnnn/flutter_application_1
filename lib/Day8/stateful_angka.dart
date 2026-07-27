import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  @override
  MyCounterState createState() => MyCounterState();
}

class MyCounterState extends State<MyCounter> {
  int counter = 0;
  bool showImage = false;
  // Langkah 2: Buat variabel state
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        TextButton(
          onPressed: () {
            setState(() {
              showImage = !showImage;
            });
          },
          child: Text(showImage ? "sembunyikan gambar" : "Lihat Gambar"),
        ),
        if (showImage)
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT93l1LmQnFqWqyfTZQoRIEzQvpmOqV1dINvoRlM4aLYg&s=10", //masikin link ya
            height: 200,
            width: 400,
          ),

        SizedBox(height: 100),
        // Langkah 3: Tampilkan variabel state di widget
        // Text("contoh stateful"),
        // Text("Nilai: $counter"),
        //buat tombol
        ElevatedButton(
          onPressed: () {
            // Langkah 6: Tambahkan setState di dalam fungsi aksi
            // buat ngerubah posisinya
            setState(() {
              counter++; // Memperbarui nilai state
            });
          },
          child: Text("Tambah"),
        ),
      ],
    );
  }
}
