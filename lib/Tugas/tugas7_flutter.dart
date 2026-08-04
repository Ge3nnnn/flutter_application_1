import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_14/aturperingatan.dart';
import 'package:flutter_application_1/Day_14/checkbox_tugas.dart';
import 'package:flutter_application_1/Day_14/datepicker_tugas.dart';
import 'package:flutter_application_1/Day_14/kategoriproduk_tugas.dart';
import 'package:flutter_application_1/Day_14/modetampilan.dart';
import 'package:flutter_application_1/extension/navigator.dart';

class Tugas7Flutter extends StatefulWidget {
  const Tugas7Flutter({super.key});

  @override
  State<Tugas7Flutter> createState() => _Tugas7FlutterState();
}

class _Tugas7FlutterState extends State<Tugas7Flutter> {
  int _selectedBottons = 0;
  void chengeBottom(int index) {
    _selectedBottons = index;
    ("Ini adalah Value dari $_selectedBottons");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    CheckBoxxTugas7Flutter(),
    ModeTampilanTugas7Flutter(),
    KategoriProdukTugas7Flutter(),
    DatePickerTugas7Flutter(),
    AturPeringatanTugas7Flutter(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 7 Flutter"),
        backgroundColor: const Color.fromARGB(255, 0, 247, 74),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            (drawertext(
              icon: Icons.check_box,
              title: "Syarat & Ketentuan",
              index: 0,
            )),
            (drawertext(
              icon: Icons.light_mode,
              title: "Pengubah Tema",
              index: 1,
            )),
            (drawertext(icon: Icons.eject, title: "Kategori Produk", index: 2)),
            (drawertext(
              icon: Icons.calendar_month,
              title: "Pilih Tnggal Lahir",
              index: 3,
            )),
            (drawertext(
              icon: Icons.lock_clock_rounded,
              title: "Atur Peringatan Alarm",
              index: 4,
            )),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBottons),
    );
  }

  Column drawertext({
    required IconData icon,
    required String title,
    required int index,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          onTap: () {
            chengeBottom(index);
          },
        ),
      ],
    );
  }
}
