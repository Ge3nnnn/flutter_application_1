import 'package:flutter/material.dart';

class StyleingDay5 extends StatelessWidget {
  const StyleingDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar buat header atau paling atas
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 159, 238, 0), //warna
        title: Text('Hallo'), //kalimat apa yangmau ada
        centerTitle: false, //naro text dmna mau nya
        actions: [Text("Notification bar")], //buat yang dikanan atas
        leading: Icon(Icons.arrow_back_ios), //buat tombol back
      ),
      // buat isi dibawah (selain di header)
      body:
          // atas bawah
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // spacing: 0, //spasinya (perkata)
            // beranak
            children: [
              Text(
                'Hallooo, chat',
                style: TextStyle(
                  fontSize: 40, // ukuran teks
                  fontWeight: FontWeight.bold, //ketebalan
                  color: Colors.red, //warna hurufnya
                  decoration:
                      TextDecoration.overline, //dekorasinya (cman bisa satu)
                  decorationColor: Colors.amber, //warna decorasinya
                  backgroundColor: Colors.cyan,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
    );
  }
}
