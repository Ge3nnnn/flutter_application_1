import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tugas/Tugas_11/service/prefference_tugas.dart';
import 'package:flutter_application_1/Tugas/Tugas_11/views/login_page.dart';
import 'package:flutter_application_1/extension/navigator.dart';

class LogoutPageTugasDay17 extends StatelessWidget {
  const LogoutPageTugasDay17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Berhasil Log Out")));
            PrefferenceHandler.logOut();
            context.pushAndRemoveAll(LoginPageTugas11());
          },
          child: Center(
            child: Row(children: [Icon(Icons.logout), Text("Keluar")]),
          ),
        ),
      ),
    );
  }
}
