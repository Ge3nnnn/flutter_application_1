import 'package:flutter/material.dart';

class ContainerDay6 extends StatelessWidget {
  const ContainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        title: Text("Container Day 666", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),

      // Container (box)
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              margin: EdgeInsets.all(0), // Margin sama kayk pading
              height: 100, // ukuran kotak
              width: 400, // ukuran kotak
              color: Colors.black, // warna kotak
              // Nambahin teks di kotak
              child: Text("hey kamu", style: TextStyle(color: Colors.white)),
            ),
          ),
          // dengan margin
          Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(12), // margin buat ditulisan didalem nya
            height: 100,
            width: 400,
            color: Colors.red,
            child: Column(children: [Text("lala"), Text("lulu"), Text("lele")]),
          ),

          // 3
          Container(
            margin: EdgeInsets.only(bottom: 22),
            height: 100,
            width: 400,
            color: const Color.fromARGB(255, 0, 243, 8),
            child: Column(children: [Text("lala"), Text("lulu"), Text("lele")]),
          ),
          //4 decoratiion kalo pake decoration colornya dipindahin ke decorationnya
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.black, width: 15),
              borderRadius: BorderRadius.circular(900000000),
            ),
            margin: EdgeInsets.only(bottom: 22),
            height: 100,
            width: 400,
            child: Column(children: [Text("lala"), Text("lulu"), Text("lele")]),
          ),
          //5 decoratiion kalo pake decoration colornya dipindahin ke decorationnya
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 204, 255),
              border: Border.all(color: Colors.black, width: 15),
              borderRadius: BorderRadius.circular(900000000),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 23,
                  offset: Offset(-0, 10),
                ),
              ],
            ),

            margin: EdgeInsets.all(9),
            height: 100,
            width: 500,
            child: Column(children: [Text("lala"), Text("lulu"), Text("lele")]),
          ),

          // Gradient
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 200, 255, 0),
              border: Border.all(color: Colors.black, width: 15),
              borderRadius: BorderRadius.circular(900000000),
              gradient: LinearGradient(
                colors: [Colors.black, Colors.red, Colors.blue, Colors.green],
              ),
            ),

            margin: EdgeInsets.all(9),
            height: 100,
            width: 500,
            child: Column(children: [Text("lala"), Text("lulu"), Text("lele")]),
          ),
        ],
      ),
    );
  }
}
