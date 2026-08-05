import 'package:flutter/material.dart';

class ListOfMapDay15 extends StatelessWidget {
  const ListOfMapDay15({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataProduk = [
      {
        "harga": 45000,
        "asal": "Amerika Serikat",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIJekceayNKb5JtZUtkKO0gu9qNnomIgP_7B4BB9rayA&s=10",
      },
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: dataProduk.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(dataProduk[index]["harga"].toString()),
            subtitle: Text(dataProduk[index]["asal"]),
            trailing: Image.network(
              dataProduk[index]["image"],
              width: 100,
              height: 100,
            ),
          );
        },
      ),
    );
  }
}
