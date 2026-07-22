import 'package:flutter/material.dart';

class StyleingDay5 extends StatelessWidget {
  const StyleingDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Title bar
      appBar: AppBar(
        backgroundColor: Colors.red, //warna
        title: Text('Profil Saya'), //kalimat apa yangmau ada
        centerTitle: true, //Ketengahin
        leading: Icon(Icons.arrow_back_ios),
      ),

      // Body bar
      body:
          // column
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.location_on), Text('Jakarta Pusat')],
              ),
            ],
          ),
    );
  }
}
