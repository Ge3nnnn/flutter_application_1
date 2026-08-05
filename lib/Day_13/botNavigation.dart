import 'package:bottom_navigator/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tugas/cobasendiri_tugas6_flutter.dart';
import 'package:flutter_application_1/Tugas/tugas3_flutter.dart';
import 'package:flutter_application_1/Tugas/tugas4_flutter.dart';
import 'package:flutter_application_1/Tugas/tugas5__flutter.dart';

class BottomNavDay13 extends StatefulWidget {
  const BottomNavDay13({super.key});

  @override
  State<BottomNavDay13> createState() => _BottomNavDay13State();
}

class _BottomNavDay13State extends State<BottomNavDay13> {
  int _selectedBotton = 0;
  void chengeBottom(int index) {
    _selectedBotton = index;
    ("Ini adalah Value dari $_selectedBotton");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [
    Tugas5Flutter(),
    Tugas4Flutter(),
    Tugas3Flutter(),
    Tugas6Flutter(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClassicNavBottomBar(
        onTap: (value) {
          chengeBottom(value);
        },
        currentIndex: _selectedBotton,
        items: [
          BottomNavItem(icon: Icons.home, label: 'Home'),
          BottomNavItem(icon: Icons.school_outlined, label: 'Sekolah'),
          BottomNavItem(icon: Icons.mosque, label: 'Masjid'),
          BottomNavItem(icon: Icons.map_outlined, label: 'Peta'),
        ],
      ),
      appBar: AppBar(
        title: Text("Bottom Navigations"),
        backgroundColor: Colors.amber,
      ),

      body: _widgetOptions.elementAt(_selectedBotton),
    );
  }
}
