import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/services/cart_service.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/views/cart_page.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/views/home_page.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/views/profile_page.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class BotomNaviDummyStore extends StatefulWidget {
  const BotomNaviDummyStore({super.key});

  @override
  State<BotomNaviDummyStore> createState() => _BottomNavDay13State();
}

class _BottomNavDay13State extends State<BotomNaviDummyStore> {
  int _selectedBotton = 0;

  void chengeBottom(int index) {
    setState(() {
      _selectedBotton = index;
    });
  }

  late final List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      HomeScreenTugas15(onNavigateToCart: () => chengeBottom(1)),
      CartPage(
        isFromBottomNav: true,
        onGoShopping: () => chengeBottom(0),
      ),
      const ProfilePageDay32(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: CartService.instance,
      builder: (context, child) {
        final int cartCount = CartService.instance.totalItemCount;

        return Scaffold(
          bottomNavigationBar: SnakeNavigationBar.color(
            onTap: (value) {
              chengeBottom(value);
            },
            currentIndex: _selectedBotton,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Badge(
                  isLabelVisible: cartCount > 0,
                  label: Text(
                    cartCount > 99 ? '99+' : '$cartCount',
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  backgroundColor: Colors.redAccent,
                  child: const Icon(Icons.shopping_cart_rounded),
                ),
                label: 'Keranjang',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
          ),
          body: _widgetOptions.elementAt(_selectedBotton),
        );
      },
    );
  }
}
