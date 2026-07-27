import 'package:flutter/material.dart';

class TextFieldDay7 extends StatelessWidget {
  const TextFieldDay7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Text Field Day 77"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Cari User name",
              prefix: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(90),
              ),
            ),
          ),
          TextField(),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
