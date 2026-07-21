import 'package:flutter/material.dart';

class ScafoldDay5 extends StatelessWidget {
  const ScafoldDay5({super.key});

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
      // buat isi dibawah (selain di header) atau main body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, //spasinya sama rata
        crossAxisAlignment: CrossAxisAlignment
            .center, //ngaruhnya kalo dah dicountainer (sayapn ngak tau bedanya)
        // spacing: 0,
        // beranak
        children: [
          Text('Hallooo'),
          Text('Halloo'),
          Text('Hallooo'),
          Text('Halloo'),
        ],
      ),
    );
  }
}
