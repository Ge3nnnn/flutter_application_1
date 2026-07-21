import 'package:flutter/material.dart';

class Tugas1Day5 extends StatelessWidget {
  const Tugas1Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Title bar
      appBar: AppBar(
        backgroundColor: Colors.red, //warna
        title: Text(
          'Profil Saya',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true, //Ketengahin
      ),

      // Body bar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Nama : Fazle Kresna Nugraha',
            style: TextStyle(
              fontSize: 25, // ukuran teks
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.location_on), Text('Jakarta Pusat')],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Saya manusia biasa.Saya makan nasi, makan ayam, makan ikan, makan telur',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
