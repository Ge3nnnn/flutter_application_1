import 'package:bottom_navigator/bottom_navigator.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_14/halamantentang.dart';
import 'package:flutter_application_1/Tugas/tugas7_flutter.dart';

class Tugas8Flutter extends StatefulWidget {
  const Tugas8Flutter({super.key});

  @override
  State<Tugas8Flutter> createState() => _Tugas9FlutterState();
}

class _Tugas9FlutterState extends State<Tugas8Flutter> {
  int _selectedBotton = 0;
  void chengeBottom(int index) {
    _selectedBotton = index;
    ("Ini adalah Value dari $_selectedBotton");
    setState(() {});
  }

  List<Widget> _widgetOptions = [Tugas7Flutter(), TentangSayaTugas8Flutter()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedBotton,
        showElevation: false,

        onItemSelected: (index) => setState(() {
          _selectedBotton = index;
          chengeBottom(index);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Tentang'),
            activeColor: Colors.red,
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBotton),
    );
  }
}
