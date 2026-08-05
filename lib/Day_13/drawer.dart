import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_13/input_widget.dart';
import 'package:flutter_application_1/Tugas/tugas3_flutter.dart';
import 'package:flutter_application_1/Tugas/tugas4_flutter.dart';
import 'package:flutter_application_1/Tugas/tugas5__flutter.dart';
import 'package:flutter_application_1/Tugas/tugas6_flutter_facebook.dart';
import 'package:flutter_application_1/extension/navigator.dart';

class DrawerDay13 extends StatefulWidget {
  const DrawerDay13({super.key});

  @override
  State<DrawerDay13> createState() => _DrawerDay13State();
}

class _DrawerDay13State extends State<DrawerDay13> {
  int _selectedBotton = 0;
  void chengeBottom(int index) {
    _selectedBotton = index;
    print("Ini adalah Value dari $_selectedBotton");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    Tugas5Flutter(),
    Tugas3Flutter(),
    CheckBoxDay13(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"), backgroundColor: Colors.blue),
      drawer: Drawer(
        child: ListView(
          children: [
            testpercobaan(icon: Icons.home, title: "apakek", index: 0),
            testpercobaan(icon: Icons.home, title: "apakek", index: 1),
            testpercobaan(icon: Icons.home, title: "apakek", index: 2),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBotton),
    );
  }

  Column testpercobaan({
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
