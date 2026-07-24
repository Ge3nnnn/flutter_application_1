import 'package:flutter/material.dart';

class ListViewDay7 extends StatelessWidget {
  const ListViewDay7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view day 7", style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
            ),

            height: 1000,
            width: 400,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color.fromARGB(255, 7, 65, 255),
            ),

            height: 500,
            width: 400,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color.fromARGB(255, 54, 15, 117),
            ),

            height: 150,
            width: 400,
          ),
        ],
      ),
    );
  }
}
