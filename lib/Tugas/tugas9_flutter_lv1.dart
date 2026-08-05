import 'package:flutter/material.dart';

class Tugas9FlutterDay14 extends StatelessWidget {
  const Tugas9FlutterDay14({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> namaMainan = [
      'Mobil Remot Kontrol',
      'Lego Balok Susun',
      'Boneka Beruang',
      'Robot Transformer',
      'Puzzle Kayu Alphabet',
      'Set Masak-masakan',
      'Kereta Api Rel Electric',
      'Pistol Gelembung Sabun',
      'Tenda Kemah Anak',
      'Play-Doh Lilin Plastisin',
      'Mainan Kasir-kasiran',
      'Mobil-mobilan Hot Wheels',
      'Kolam Renang Portable',
      'Set Alat Dokter',
      'Papan Tulis Magnetik',
      'Kuda-kudaan Goyang',
      'Perosotan Plastik Mini',
      'Trampolin Anak Mini',
      'Mainan Pancing Ikan Magnet',
      'Gitar Ukulele Mainan',
      'Drum Set Anak',
      'Set Alat Pertukangan',
      'Rumah-rumahan Boneka',
      'Mobil Doyong / Ride-on Car',
      'Balok Bangunan Kayu',
      'Kartu Edukasi Flashcard',
      'Puzzle Biji / Peg Puzzle',
      'Mobil Pemadam Kebakaran',
      'Ekskavator Remote Control',
      'Set Rias & Salon Mainan',
      'Supermarket Play Set',
      'Mainan Dokter Hewan',
      'Slime Warna-warni',
      'Pistol Nerf Busa',
      'Set Perkebunan Mini',
      'Pop It Sensory Toy',
      'Rubik 3x3',
      'Yoyo Kayu Classic',
      'Gasing Modern / Beyblade',
      'Set Lintasan Mobil Balap',
      'Mainan Organ / Keyboard Mini',
      'Mikroskop Edukasi Anak',
      'Teleskop Mini',
      'Set Pasir Kinetik',
      'Mainan Memancing Bebek',
      'Set Peralatan Melukis',
      'Drone Mini untuk Anak',
      'Walkie Talkie Mainan',
      'Set Dinosaurus Figura',
      'Boneka Jari Kain',
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: namaMainan.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text(namaMainan[index]));
          },
        ),
      ),
    );
  }
}
