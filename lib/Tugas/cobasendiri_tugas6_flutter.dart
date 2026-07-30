import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas6Flutter extends StatefulWidget {
  const Tugas6Flutter({super.key});

  @override
  State<Tugas6Flutter> createState() => _Tugas6FlutterState();
}

class _Tugas6FlutterState extends State<Tugas6Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Image/Facebook.png"),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 50, top: 179),
              child: Container(
                height: 45,
                width: 322,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color.fromARGB(255, 235, 231, 231),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mobile number or email address",
                      hintStyle: GoogleFonts.istokWeb(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color.fromARGB(255, 235, 231, 231),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFamily: "aileron.regular",
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                setState(() {});
              },
              child: Container(
                width: 400,
                height: 50,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.blue[600],
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  debugPrint("Kamu sudah lupa passwords");
                },
                child: Text(
                  "Forgotten Pasword?",
                  style: TextStyle(color: Colors.blue[900]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                    child: Text("or", style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 40,
                width: 270,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "Create new account",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsetsGeometry.only(left: 70, right: 70),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("English (UK)"),
                      Text("SADSAD"),
                      Text("sad"),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("English (UK)"),
                      Text("SADSAD"),
                      Text("sad"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("sadsa 2023"),
            ),
          ],
        ),
      ),
    );
  }
}
