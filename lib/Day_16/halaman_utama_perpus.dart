import 'package:flutter/material.dart';

class HomePageTugas10 extends StatelessWidget {
  const HomePageTugas10({super.key, required this.nama, this.nomor});
  final String nama;
  final String? nomor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Selamat Datang, $nama")));
  }
}
