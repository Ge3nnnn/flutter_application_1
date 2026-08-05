import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_14/aturperingatan.dart';
import 'package:flutter_application_1/Day_14/checkbox_tugas.dart';
import 'package:flutter_application_1/Day_14/datepicker_tugas.dart';
import 'package:flutter_application_1/Day_14/kategoriproduk_tugas.dart';
import 'package:flutter_application_1/Day_14/modetampilan.dart';
import 'package:flutter_application_1/Day_15/list.dart';
import 'package:flutter_application_1/Day_15/listof_mapdart.dart';
import 'package:flutter_application_1/Day_16/text_from_field.dart';
import 'package:flutter_application_1/Tugas/tugas9_flutter_lv1.dart';
import 'package:flutter_application_1/Tugas/tugas9_flutter_lv2.dart';
import 'package:flutter_application_1/Tugas/tugas9_flutter_lv3.dart';
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
    ListDay15(),
    ListOfMapDay15(),
    ListOfMapDay15(),
    Tugas9FlutterDay14(),
    Tugas9FlutterLv2(),
    Tugas9FlutterLv3Day16(),
    TextFromFieldDay16(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Flutter"),
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
            (drawertext(
              icon: Icons.lock_clock_rounded,
              title: "List Data",
              index: 5,
            )),
            (drawertext(
              icon: Icons.lock_clock_rounded,
              title: "List of map",
              index: 6,
            )),
            (drawertext(
              icon: Icons.lock_clock_rounded,
              title: "List of model",
              index: 7,
            )),
            (drawertext(
              icon: Icons.list,
              title: "Tugas 9 Pendekatan List Sederhana",
              index: 8,
            )),
            (drawertext(
              icon: Icons.list,
              title: "Tugas 9  Pendekatan List of Map",
              index: 9,
            )),
            (drawertext(
              icon: Icons.list,
              title: "Tugas 9  Pendekatan List of Map",
              index: 10,
            )),
            (drawertext(
              icon: Icons.text_fields,
              title: "text From Field",
              index: 11,
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
