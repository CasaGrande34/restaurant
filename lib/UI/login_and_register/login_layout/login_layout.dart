import 'package:flutter/material.dart';
import '../../../utils/utils_exports.dart';
import '../login_and_register_exports.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: LoginView(),
      mobile: RegisterScreen(),
    );
  }
}
// 