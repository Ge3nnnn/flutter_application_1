import 'package:flutter/material.dart';

class TentangSayaTugas8Flutter extends StatefulWidget {
  const TentangSayaTugas8Flutter({super.key});

  @override
  State<TentangSayaTugas8Flutter> createState() =>
      _TentangSayaTugas8FlutterState();
}

class _TentangSayaTugas8FlutterState extends State<TentangSayaTugas8Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Aplikasi")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Phintar", style: TextStyle(fontSize: 30)),
              subtitle: Text("Beta Version | Fazle Kresna Nugraha"),
            ),
            Text(
              "Phintar (kombinasi dari Physics dan Pintar) adalah sebuah aplikasi pembelajaran fisika interaktif yang dirancang khusus untuk mengubah cara pandang pengguna terhadap ilmu fisika—dari materi yang dianggap rumit dan abstrak menjadi pengalaman belajar yang visual, intuitif, dan menyenangkan. Aplikasi ini hadir sebagai solusi bagi siswa maupun mahasiswa yang ingin memahami prinsip-prinsip fisika secara mendalam tanpa hanya berpatokan pada hafalan rumus matematika. Dengan memadukan ringkasan konsep yang terstruktur dan simulasi eksperimen digital secara real-time, Phintar memungkinkan pengguna untuk memanipulasi berbagai variabel fisika—seperti frekuensi, muatan, atau massa—dan langsung melihat dampaknya secara visual dalam bentuk grafik maupun visualisasi geometris yang dinamis.",
            ),
          ],
        ),
      ),
    );
  }
}
