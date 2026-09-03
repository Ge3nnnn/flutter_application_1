import 'package:flutter/material.dart';

class KategoriProdukTugas7Flutter extends StatefulWidget {
  const KategoriProdukTugas7Flutter({super.key});

  @override
  State<KategoriProdukTugas7Flutter> createState() =>
      _KategoriProdukTugas7FlutterState();
}

class _KategoriProdukTugas7FlutterState
    extends State<KategoriProdukTugas7Flutter> {
  String? _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              dropdownColor: const Color.fromARGB(255, 180, 30, 30),
              value: _selected,
              items: ["Elektronik", "Pakaian", "Makanan", "Minuman"].map((
                String val,
              ) {
                return DropdownMenuItem(value: val, child: Text(val));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selected = value;
                });
              },
            ),
            Text("Anda Memilih $_selected"),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: 200,
              child: _selected == "Elektronik"
                  ? Image.network(
                      "https://mitraa.co.id/images/projects/elektronik-kantor.jpg",
                    )
                  : _selected == "Pakaian"
                  ? Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXsuWqVB-HNEBypwgvgYlC2DnZzAAmy5fH7pxNopn8AQ&s=10",
                    )
                  : _selected == "Makanan"
                  ? Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXKwFPd9CS7Sta4ntZrNclDBV_oB1aTNjoyhahvOL_eQ&s=10",
                    )
                  : Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy3G91esa9BcABylf7DtHBLzOgLqhyM1TGsQlmTW3IfQ&s=10",
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
