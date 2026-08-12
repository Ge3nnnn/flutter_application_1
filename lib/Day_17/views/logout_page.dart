import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_17/service/prefference_handle.dart';
import 'package:flutter_application_1/Day_17/views/Login_day17.dart';
import 'package:flutter_application_1/extension/navigator.dart';

class LogoutPageDay17 extends StatelessWidget {
  const LogoutPageDay17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            PrefferenceHandle.logOut();
            context.pushAndRemoveAll(LoginDay17());
          },
          child: Icon(Icons.logout),
        ),
      ),
    );
  }
}
