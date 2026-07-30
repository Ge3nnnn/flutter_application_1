import 'package:flutter/material.dart';

class HomeTestDay11 extends StatelessWidget {
  const HomeTestDay11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Home Routing Day 11"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Mundur"),
            ),
          ),
        ],
      ),
    );
  }
}
