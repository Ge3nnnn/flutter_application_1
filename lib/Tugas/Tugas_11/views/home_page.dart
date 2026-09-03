import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_14/halamantentang.dart';
import 'package:flutter_application_1/Day_18/views/data_user_day18.dart';

import 'package:flutter_application_1/Tugas/Tugas_11/views/logout_page.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/views/home_page.dart';
import 'package:flutter_application_1/Tugas/tugas7_flutter.dart';

class HomePageTugas11 extends StatefulWidget {
  const HomePageTugas11({super.key});

  @override
  State<HomePageTugas11> createState() => _Tugas9FlutterState();
}

class _Tugas9FlutterState extends State<HomePageTugas11> {
  int _selectedBotton = 0;
  void chengeBottom(int index) {
    _selectedBotton = index;
    ("Ini adalah Value dari $_selectedBotton");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [HomeScreenTugas15()];

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
          BottomNavyBarItem(
            icon: Icon(Icons.logout),
            title: Text('Keluar'),
            activeColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_remove),
            title: Text('Person'),
            activeColor: const Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBotton),
    );
  }
}
