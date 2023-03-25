import 'package:flutter/material.dart';

import '../../../utils/utils_exports.dart';
import '../login_and_register_exports.dart';

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: RegisterView(),
      mobile: RegisterScreen(),
    );
  }
}
