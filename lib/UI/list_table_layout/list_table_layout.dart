// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import '../../utils/utils_exports.dart';
import 'list_table_layout_exports.dart';

class ListTableLayout extends StatelessWidget {
  const ListTableLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: ListTableView(),
      mobile: ListTableScreen(),
    );
  }
}
