import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/views/home_page.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class BotomNaviDummyStore extends StatefulWidget {
  const BotomNaviDummyStore({super.key});

  @override
  State<BotomNaviDummyStore> createState() => _BottomNavDay13State();
}

class _BottomNavDay13State extends State<BotomNaviDummyStore> {
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
      bottomNavigationBar: SnakeNavigationBar.color(
        onTap: (value) {
          chengeBottom(value);
        },
        currentIndex: _selectedBotton,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBotton),
    );
  }
}
