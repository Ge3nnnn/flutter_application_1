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
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email atau nomor ponsel",
                  hintStyle: GoogleFonts.istokWeb(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF888888),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: GoogleFonts.istokWeb(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF888888),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Konfirmasi Password",
                  hintStyle: GoogleFonts.istokWeb(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF888888),
                  ),
                ),
              ),
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
}
