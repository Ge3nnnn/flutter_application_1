import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LupaPasswordPage extends StatelessWidget {
  const LupaPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lupa pasword")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            newPasswordColector("Password lama"),
            newPasswordColector("Password Baru"),
            newPasswordColector("Konfirmasi Password Baru"),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke screen sebelumnya
                  },
                  child: const Text('Kembali'),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Berhasih diubah")));
                  },
                  child: Text("Ubah"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextField newPasswordColector(text) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: GoogleFonts.istokWeb(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF888888),
        ),
      ),
    );
  }
}
