import 'package:flutter/material.dart';

class LayoutingDay5 extends StatelessWidget {
  const LayoutingDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar buat header atau paling atas
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 155, 238, 1), //warna
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
              Text('Hallooo'),
              Text('Halloo'),
              Text('Helooo'),
              Text('Haloo'),
              //  kiri kanan
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Icon(Icons.star), Text("heyykamu")],
              ),
            ],
          ),
    );
  }
}
