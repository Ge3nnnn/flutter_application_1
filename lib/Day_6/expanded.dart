import 'package:flutter/material.dart';

class ExpandedDay6 extends StatelessWidget {
  const ExpandedDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        title: Text("Expanded Day 666", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: [
          // ngisi ruang kosong pake warna 
          // flex buat perbandingannya
          Expanded(flex: 9, child: Container(color: Colors.amberAccent)),
          Spacer(),//spacer ngisi atau nambah ruang kosong ruang kosong tapi putih
          Expanded(child: Container(color: Colors.black)),
          Expanded(
            child: Container(color: const Color.fromARGB(255, 247, 0, 0)),
          ),
        ],
      ),
    );
  }
}
