import 'package:flutter/material.dart';

class StackDay7 extends StatelessWidget {
  const StackDay7 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stacking Day 8", style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),

                height: 450,
                width: 400,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 255, 7, 7),
                ),

                height: 350,
                width: 400,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 52, 7, 255),
                ),

                height: 250,
                width: 400,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 13, 251, 251),
                ),

                height: 150,
                width: 400,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 248, 247, 250),
                ),

                height: 50,
                width: 400,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),

                height: 100,
                width: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 255, 7, 7),
                ),

                height: 25,
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
