import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_15/model/nama_mainan.dart';

class Tugas9FlutterLv3Day16 extends StatelessWidget {
  const Tugas9FlutterLv3Day16({super.key});

  @override
  Widget build(BuildContext context) {
    List<NamaMainan> namaMainan = [
      NamaMainan(
        nama: 'Mobil Remot Kontrol',
        deskripsi:
            'Mobil balap remote control dengan kecepatan tinggi dan suspensi tangguh.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPFK0A2rpOvqIVx8j56hW_BorsZiTiZJpwushd1FWsoA&s=10",
      ),
      NamaMainan(
        nama: 'Lego Balok Susun',
        deskripsi:
            'Set balok susun kreatif untuk mengasah imajinasi dan motorik halus anak.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDbNWU7xhNMRIxDzrSrpdj3kVGEyv9sGdl_NLlXkjrzA&s=10",
      ),
      NamaMainan(
        nama: 'Boneka Beruang',
        deskripsi: 'Boneka beruang berbahan bulu lembut yang nyaman dipeluk.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_53u0khEf-lyHeUD42cvuO6UknbA5jK4LUinIHdQm8Q&s=10",
      ),
      NamaMainan(
        nama: 'Robot Transformer',
        deskripsi:
            'Mainan robot yang dapat diubah bentuk menjadi kendaraan keren.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGuPpxes2ovKnq0YZ0MADHcGGjoNUOQ6KtLipXG8y6dQ&s=10",
      ),
      NamaMainan(
        nama: 'Puzzle Kayu Alphabet',
        deskripsi:
            'Puzzle kayu edukatif untuk membantu anak mengenalkan huruf dan warna.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSufsSmWS5o4nG1DfvaFnJYxxWCc3mFw1XCclu46t3tZw&s",
      ),
      NamaMainan(
        nama: 'Set Masak-masakan',
        deskripsi:
            'Peralatan dapur mini lengkap dengan kompor, panci, dan bahan makanan plastik.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhRq54XE_iFO6aarznnSDcz5TVkFKgSWF3TDrSogfHBA&s=10",
      ),
      NamaMainan(
        nama: 'Kereta Api Rel Electric',
        deskripsi:
            'Set kereta api listrik lengkap dengan lintasan rel dan efek suara.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAv8zinZ4_IBVEespkpTeisaklngYg-eQdKiU9CPyfHw&s=10",
      ),
      NamaMainan(
        nama: 'Play-Doh Lilin Plastisin',
        deskripsi:
            'Lilin mainan aman beraneka warna untuk mengasah kreativitas dan imajinasi.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG75bOBa8M_exNVIpwioaT0qNAwY1lVq0e47DIqwfngA&s=10",
      ),
      NamaMainan(
        nama: 'Pistol Gelembung Sabun',
        deskripsi: 'Mainan pembuat gelembung sabun otomatis dengan lampu LED.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-mioGAxQq0cjBzh0BQ-f0SpewAAHrQUMLIRztAZsliQ&s=10",
      ),
      NamaMainan(
        nama: 'Tenda Kemah Anak',
        deskripsi:
            'Tenda bermain anak portabel yang mudah dirakit untuk aktivitas indoor dan outdoor.',
        gambar:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEkG8gzyaXRoeffU4mXkuyWwpxwTKqj5m_hKHUCDsKg&s=10",
      ),
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: namaMainan.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(namaMainan[index].nama),
              subtitle: Text(namaMainan[index].deskripsi),
              trailing: Image.network(namaMainan[index].gambar),
            ),
          );
        },
      ),
    );
  }
}
