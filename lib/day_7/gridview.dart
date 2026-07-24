import 'package:flutter/material.dart';

class GridView77 extends StatelessWidget {
  const GridView77({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View day 7777"),
        backgroundColor: Colors.amber,
      ),
      body: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 100,
        crossAxisCount: 4, // kesamping
        // mainAxisExtent: 100, // keatas bawah
        children: [
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 7, 185, 255)),
          Container(color: const Color.fromARGB(255, 65, 55, 25)),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 30, 159, 182)),
          Container(color: Colors.amber),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 21, 22, 119)),
          Container(color: Colors.amber),
          Container(color: const Color.fromARGB(255, 255, 7, 7)),
          Container(color: const Color.fromARGB(255, 255, 7, 48)),
          Container(color: const Color.fromARGB(255, 61, 50, 16)),
          Container(color: Colors.amber),
          Container(color: Colors.amber),
          Container(color: Colors.amber),
        ],
      ),
      // GridView.count(
      //   crossAxisCount: 2, // Menampilkan 2 kotak per baris
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(color: Colors.red),
      //     Container(color: Colors.green),
      //     Container(color: Colors.blue),
      //     Container(color: Colors.yellow),
      //   ],
      // ),
    );
  }
}
