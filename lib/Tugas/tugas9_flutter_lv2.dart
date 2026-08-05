import 'package:flutter/material.dart';

class Tugas9FlutterLv2 extends StatelessWidget {
  const Tugas9FlutterLv2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> daftarMainan = [
      {
        'nama': 'Mobil Remot Kontrol',
        'kategori': 'Elektronik',
        'harga': 125000,
        'rating': 4.7,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPFK0A2rpOvqIVx8j56hW_BorsZiTiZJpwushd1FWsoA&s=10",
      },
      {
        'nama': 'Lego Balok Susun',
        'kategori': 'Edukasi',
        'harga': 85000,
        'rating': 4.9,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDbNWU7xhNMRIxDzrSrpdj3kVGEyv9sGdl_NLlXkjrzA&s=10",
      },
      {
        'nama': 'Boneka Beruang',
        'kategori': 'Boneka',
        'harga': 65000,
        'rating': 4.8,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_53u0khEf-lyHeUD42cvuO6UknbA5jK4LUinIHdQm8Q&s=10",
      },
      {
        'nama': 'Robot Transformer',
        'kategori': 'Aksi',
        'harga': 110000,
        'rating': 4.6,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGuPpxes2ovKnq0YZ0MADHcGGjoNUOQ6KtLipXG8y6dQ&s=10",
      },
      {
        'nama': 'Puzzle Kayu Alphabet',
        'kategori': 'Edukasi',
        'harga': 35000,
        'rating': 4.8,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSufsSmWS5o4nG1DfvaFnJYxxWCc3mFw1XCclu46t3tZw&s",
      },
      {
        'nama': 'Set Masak-masakan',
        'kategori': 'Roleplay',
        'harga': 75000,
        'rating': 4.7,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhRq54XE_iFO6aarznnSDcz5TVkFKgSWF3TDrSogfHBA&s=10",
      },
      {
        'nama': 'Kereta Api Rel Electric',
        'kategori': 'Elektronik',
        'harga': 150000,
        'rating': 4.5,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAv8zinZ4_IBVEespkpTeisaklngYg-eQdKiU9CPyfHw&s=10",
      },
      {
        'nama': 'Play-Doh Lilin Plastisin',
        'kategori': 'Kreatif',
        'harga': 45000,
        'rating': 4.9,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG75bOBa8M_exNVIpwioaT0qNAwY1lVq0e47DIqwfngA&s=10",
      },
      {
        'nama': 'Pistol Gelembung Sabun',
        'kategori': 'Outdoor',
        'harga': 30000,
        'rating': 4.4,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-mioGAxQq0cjBzh0BQ-f0SpewAAHrQUMLIRztAZsliQ&s=10",
      },
      {
        'nama': 'Tenda Kemah Anak',
        'kategori': 'Outdoor',
        'harga': 135000,
        'rating': 4.8,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLEkG8gzyaXRoeffU4mXkuyWwpxwTKqj5m_hKHUCDsKg&s=10",
      },
      {
        'nama': 'Mainan Kasir-kasiran',
        'kategori': 'Roleplay',
        'harga': 95000,
        'rating': 4.6,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBsABjk4zPC4mFpr6_Uf4QhHgx6pQyQ11CA97J3c_N5A&s=10",
      },
      {
        'nama': 'Mobil-mobilan Hot Wheels',
        'kategori': 'Koleksi',
        'harga': 35000,
        'rating': 4.9,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm6Jp8YopXphqn6CZCAIEsthURKEKkpo56AVpNYkT9Vw&s=10",
      },
      {
        'nama': 'Set Alat Dokter',
        'kategori': 'Roleplay',
        'harga': 55000,
        'rating': 4.7,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr_cBcvNrx5psxsEaAyoUhOZgEZK7D_O1_totPGkEp4Q&s=10",
      },
      {
        'nama': 'Papan Tulis Magnetik',
        'kategori': 'Edukasi',
        'harga': 40000,
        'rating': 4.5,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvgg8Iq1Tpw8U_5ifQJv8uXSnAvzL08wYOdp35BogXxA&s=10",
      },
      {
        'nama': 'Set Pasir Kinetik',
        'kategori': 'Kreatif',
        'harga': 50000,
        'rating': 4.8,
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPPvV8UFVS4XuJx79Xvi0hQ1029xJkQegxXnsddBv02w&s=10",
      },
    ];
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: daftarMainan.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(
              daftarMainan[index]["image"],
              width: 50,
              height: 100,
            ),
            title: Text(daftarMainan[index]["nama"]),
            subtitle: Text(daftarMainan[index]["kategori"]),
            trailing: Text(daftarMainan[index]["harga"].toString()),
          );
        },
      ),
    );
  }
}
