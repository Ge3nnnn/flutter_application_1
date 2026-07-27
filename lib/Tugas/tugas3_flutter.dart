import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: Icon(Icons.home),
        title: Text(
          "Formulir Pendaftaran",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 220, 220),
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(9),
                height: 400,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Pendaftaran Akun Siswa",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.person),
                          hintText: "Nama Pengguna",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.mail),
                          hintText: "Email Pengguna",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.call),
                          hintText: "Telepon",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.visibility),
                          hintText: "Input pasword",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.key),
                          hintText: "Masukan Kode OTP",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Segerakann!!!", style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 10,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Images/sekolah1.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Images/sekolah2.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Images/sekolah3.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Images/sekolah4.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Images/sekolah5.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Images/sekolahrakyat.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
