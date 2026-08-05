import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_16/home_abal-alab.dart';
import 'package:flutter_application_1/Tugas/tugas6_flutter_facebook.dart';
import 'package:flutter_application_1/extension/navigator.dart';
import 'package:lottie/lottie.dart';

class TextFromFieldDay16 extends StatefulWidget {
  const TextFromFieldDay16({super.key});

  @override
  State<TextFromFieldDay16> createState() => _TextFromFieldDay16State();
}

class _TextFromFieldDay16State extends State<TextFromFieldDay16> {
  // buat mgasih data ke data base
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordlController = TextEditingController();
  final TextEditingController confirmpasswordlController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              controller: emailController,
              onChanged: (value) {
                setState(() {});
              },
            ),
            TextField(controller: passwordlController),
            TextField(controller: confirmpasswordlController),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email tidak boleh kosong";
                } else if (!value.contains('@')) {
                  return "Email tidak valid";
                } else if (!value.contains('@ppkdjp')) {
                  return "Email bukan ppkd";
                }
                return null;
              },
            ),
            TextFormField(
              controller: passwordlController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password Tidak Boleh Kosong";
                } else if (value.length < 9) {
                  return "Password Tidak Boleh KUrang dari 9 Krakter";
                } else if (value != passwordlController.text) {
                  return "password Tidak Cocok";
                }
                return null;
              },
            ),
            TextFormField(controller: passwordlController),
            Text(
              emailController.text,
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),

            ElevatedButton(
              onPressed: () {
                print(emailController.text);
                print(passwordlController.text);
                print(confirmpasswordlController.text);
                if (_formKey.currentState!.validate()) {
                  context.push(
                    HomeAbalAbalDay16(
                      email: emailController.text,
                      password: passwordlController.text,
                    ),
                  );
                } else {
                  print("Belum tervalidasi");
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.black,
                      title: Text(
                        "INGPO",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Lottie.asset("assets/Animations/Error.json"),
                          Text(
                            "${emailController.text} TIDAK VALID",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text(
                            "oke",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text("Tekan ini"),
            ),
          ],
        ),
      ),
    );
  }
}
