import 'package:flutter/material.dart';
import 'package:restaurant_app_2/UI/register_table_layout/register_table_screen/register_table_screen.dart';

import '../../utils/utils_exports.dart';
import 'register_table_view/register_table_view.dart';

class RegisterTableLayout extends StatelessWidget {
  const RegisterTableLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: RegisterTableView(),
      mobile: RegisterTableScreen(),
    );
  }
}
