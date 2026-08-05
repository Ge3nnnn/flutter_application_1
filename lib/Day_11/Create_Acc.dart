import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buat Akun baru")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              createAccaoun("Email atau Nomor Ponsel"),
              createAccaoun("Buat Password"),
              createAccaoun("Konfirmasi Password"),
              createAccaoun("Username"),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Kembali ke screen sebelumnya
                    },
                    child: const Text('Masuk'),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Berhasih membuat akun")),
                      );
                    },
                    child: Text("Buat"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField createAccaoun(Text) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: Text,
        hintStyle: GoogleFonts.istokWeb(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF888888),
        ),
      ),
    );
  }
}
