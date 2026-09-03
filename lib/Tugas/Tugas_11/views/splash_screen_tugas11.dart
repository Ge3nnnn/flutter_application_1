import 'package:flutter/material.dart';
import 'package:flutter_application_1/Day_18/views/login_day18.dart';
import 'package:flutter_application_1/Tugas/Tugas_11/service/prefference_tugas.dart';
import 'package:flutter_application_1/Tugas/Tugas_11/views/home_page.dart';
import 'package:flutter_application_1/extension/navigator.dart';
import 'package:lottie/lottie.dart';

class SplashScreenTugasDay17 extends StatefulWidget {
  const SplashScreenTugasDay17({super.key});

  @override
  State<SplashScreenTugasDay17> createState() => _SplashScreenTugasDay17State();
}

class _SplashScreenTugasDay17State extends State<SplashScreenTugasDay17> {
  @override
  void initState() {
    super.initState();
    goToLogin();
  }

  void goToLogin() async {
    await Future.delayed(Duration(seconds: 3));
    if (PrefferenceHandler.isLogin == true) {
      context.push(HomePageTugas11());
    } else {
      context.push(LoginDay18SQFLITE());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Lottie.asset("assets/Animations/loading.json")),
    );
  }
}
