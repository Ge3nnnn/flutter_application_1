import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_10/counter.dart';
import 'package:flutter_application_1/Day_11/Create_Acc.dart';
import 'package:flutter_application_1/Day_11/lupapasword.dart';
import 'package:google_fonts/google_fonts.dart';

class Tugas6Ynaglain extends StatelessWidget {
  const Tugas6Ynaglain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Facebook.png"),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFFBFBFBF), width: 1),
                  ),
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xFFF5F5F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mobile number or email address",
                      hintStyle: GoogleFonts.istokWeb(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF888888),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 375,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFFBFBFBF), width: 1),
                  ),
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xFFF5F5F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
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
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CounterDay10()),
                  );
                },
                child: Container(
                  width: 375,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.blue[600],
                  ),
                  child: Center(
                    child: Text(
                      "Log in",
                      style: GoogleFonts.istokWeb(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LupaPasswordPage()),
                  );
                },
                child: Text(
                  "Forgotten Pasword?",
                  style: GoogleFonts.istokWeb(
                    fontSize: 14,
                    color: const Color(0xFF1C82F9),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                      child: Text(
                        "or",
                        style: GoogleFonts.istokWeb(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 38,
                  width: 254,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFBFBFBF)),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccountPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Create new account",
                      style: GoogleFonts.istokWeb(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsetsGeometry.only(left: 70, right: 70),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "English (UK)",
                          style: GoogleFonts.istokWeb(
                            fontSize: 13,
                            color: const Color(0xFF888888),
                          ),
                        ),
                        Text(
                          "Indonesian",
                          style: GoogleFonts.istokWeb(
                            fontSize: 13,
                            color: const Color(0xFF888888),
                          ),
                        ),
                        Text(
                          "Spanish",
                          style: GoogleFonts.istokWeb(
                            fontSize: 13,
                            color: const Color(0xFF888888),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          "English (UK)",
                          style: GoogleFonts.istokWeb(
                            fontSize: 13,
                            color: const Color(0xFF888888),
                          ),
                        ),
                        Text(
                          "Indonesian",
                          style: GoogleFonts.istokWeb(
                            fontSize: 13,
                            color: const Color(0xFF888888),
                          ),
                        ),
                        Text(
                          "Spanish",
                          style: GoogleFonts.istokWeb(
                            fontSize: 13,
                            color: const Color(0xFF888888),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Meta © 2023",
                  style: GoogleFonts.istokWeb(
                    fontSize: 14,
                    color: const Color(0xFF888888),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
