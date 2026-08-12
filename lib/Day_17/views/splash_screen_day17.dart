import 'package:flutter/material.dart';

import 'package:flutter_application_1/Day_17/service/prefference_handle.dart';

import 'package:flutter_application_1/Day_18/views/login_day18.dart';

import 'package:flutter_application_1/Tugas/Tugas_11/views/home_page.dart';

import 'package:flutter_application_1/extension/navigator.dart';
import 'package:lottie/lottie.dart';

class SplashScreenDay17 extends StatefulWidget {
  const SplashScreenDay17({super.key});

  @override
  State<SplashScreenDay17> createState() => _SplashScreenDay17State();
}

class _SplashScreenDay17State extends State<SplashScreenDay17> {
  @override
  void initState() {
    super.initState();
    goToLogin();
  }

  void goToLogin() async {
    await Future.delayed(Duration(seconds: 5));
    if (PrefferenceHandle.isLogin == true) {
      context.push(HomePageTugas11());
    } else {
      context.push(LoginDay18SQFLITE());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Lottie.asset("assets/Animations/loading.json")),
    );
  }
}
