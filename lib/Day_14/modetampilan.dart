import 'package:flutter/material.dart';

class ModeTampilanTugas7Flutter extends StatefulWidget {
  const ModeTampilanTugas7Flutter({super.key});

  @override
  State<ModeTampilanTugas7Flutter> createState() =>
      _ModeTampilanTugas7FlutterState();
}

class _ModeTampilanTugas7FlutterState extends State<ModeTampilanTugas7Flutter> {
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isOn ? Colors.white : Colors.black,
      body: Center(
        child: Column(
          children: [
            Text(
              _isOn
                  ? "Matikan untuk memasuki mode gelap"
                  : "Nyalakan untuk memasuki mode terang",
              style: TextStyle(
                color: _isOn ? Colors.black : Colors.white,
                fontSize: 20,
              ),
            ),
            Switch(
              activeThumbColor: Colors.blueAccent,
              inactiveThumbColor: Colors.red,
              value: _isOn,
              onChanged: (value) {
                _isOn = value ?? false;
                setState(() {});
              },
            ),
            Text(
              _isOn ? "Mode Terang" : "Mode Gelap",
              style: TextStyle(color: _isOn ? Colors.black : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
