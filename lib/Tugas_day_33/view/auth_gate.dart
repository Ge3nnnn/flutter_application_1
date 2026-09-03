import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tugas_day_33/service/token_storage.dart';
import 'package:flutter_application_1/Tugas_day_33/view/login_view.dart';
import 'package:flutter_application_1/Tugas_day_33/view/profile_view.dart';

class AuthGateDay33 extends StatefulWidget {
  const AuthGateDay33({super.key});

  @override
  State<AuthGateDay33> createState() => _AuthGateDay33State();
}

class _AuthGateDay33State extends State<AuthGateDay33> {
  bool _isChecking = true;
  bool _isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    final token = await TokenStorage.getToken();
    if (mounted) {
      setState(() {
        _isAuthenticated = token != null && token.isNotEmpty;
        _isChecking = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isChecking) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(color: Colors.deepPurple),
        ),
      );
    }

    return _isAuthenticated ? const ProfileView() : const LoginView();
  }
}
