import 'package:flutter/material.dart';

class LayoutingDay6 extends StatelessWidget {
  const LayoutingDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar buat header atau paling atas
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 155, 238, 1), //warna
        title: Text('Layouting day6'), //kalimat apa yangmau ada
        centerTitle: true, //naro text dmna mau nya
        actions: [Text("Notification bar")], //buat yang dikanan atas
        leading: Icon(Icons.arrow_back_ios), //buat tombol back
      ),
      // buat isi dibawah (selain di header)
      body:
          // atas bawah dan poenggunaan sized box
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // spacing: 0, //spasinya (perkata)
            // beranak(kebawah)
            children: [
              Text('Hallooo 1'),
              SizedBox(height: 50, width: 23), // sized box
              Text('Halloo 2'),
              SizedBox(height: 70),
              Text('Helooo 3'),
              Text('Haloo 4'),

              // penggunaan pading (margin)
              Padding(
                padding: const EdgeInsets.all(12.0), //EdgeInsets.all semua
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hallooo 1'),
                    Text('Halloo 2'),
                    Text('Helooo 3'),
                    Text('Haloo 4'),
                    // pading kiri doang only bisa banyak kiri, kanan, atas, bawah
                    Padding(
                      padding: const EdgeInsets.only(left: 79),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hallooo 1'),
                          Text('Halloo 2'),
                          Text('Helooo 3'),
                          Text('Haloo 4'),

                  
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
