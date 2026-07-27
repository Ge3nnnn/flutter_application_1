import 'package:flutter/material.dart';

class Tugas4Flutter extends StatelessWidget {
  const Tugas4Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: Icon(Icons.home),
        title: Text(
          "Lapor Pak",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(5),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 220, 220),
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(5),
                height: 350,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Forulir Pelaporan",
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
                          hintText: "Nama Pelapor",
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
                          prefixIcon: Icon(Icons.question_mark),
                          hintText: "Jenis Laporan",
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
                          hintText: "Telepon Pelapor",
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
                          prefixIcon: Icon(
                            Icons.format_indent_increase_rounded,
                          ),
                          hintText: "Keterangan Laporan",
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
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Riwayat Laporan Warga",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 187, 244, 54),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(500),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(color: Colors.white, Icons.person),
                ),
                title: Text("Pak Slamet"),
                subtitle: Text("Ayam Hilang"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 187, 244, 54),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(500),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(color: Colors.white, Icons.person),
                ),
                title: Text("Pak Asep"),
                subtitle: Text("Kemalingan"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 187, 244, 54),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(500),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(color: Colors.white, Icons.person),
                ),
                title: Text("Pak Udin"),
                subtitle: Text("Motor Hilang"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 187, 244, 54),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(500),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(color: Colors.white, Icons.person),
                ),
                title: Text("Pak Budi"),
                subtitle: Text("Kehilangan"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 187, 244, 54),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(500),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(color: Colors.white, Icons.person),
                ),
                title: Text("Pak Joko"),
                subtitle: Text("Kehilangan Jabatan"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),

      //folmulir pengguna
    );
  }
}
