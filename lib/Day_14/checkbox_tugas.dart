import 'package:flutter/material.dart';

class CheckBoxxTugas7Flutter extends StatefulWidget {
  const CheckBoxxTugas7Flutter({super.key});

  @override
  State<CheckBoxxTugas7Flutter> createState() => _HomeScreenTugas7State();
}

class _HomeScreenTugas7State extends State<CheckBoxxTugas7Flutter> {
  bool _isChecks = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Surat Pernyataan", style: TextStyle(fontSize: 30)),
          SizedBox(height: 10),
          Text("Saya mengakui bahwa Developer sangat jago"),
          Row(
            children: [
              Checkbox(
                value: _isChecks,
                onChanged: (value) {
                  _isChecks = value ?? false;
                  setState(() {});
                },
              ),
              Text(_isChecks ? "Saya menyetujui" : "Saya Tidak Menyetujui"),
            ],
          ),
        ],
      ),
    );
  }
}
