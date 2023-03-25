import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../services/data_spreadsheet.dart';
import '../../../utils/utils_exports.dart';

class TitleConnectionUrl extends StatefulWidget {
  const TitleConnectionUrl({
    super.key,
  });

  @override
  State<TitleConnectionUrl> createState() => _TitleConnectionUrlState();
}

class _TitleConnectionUrlState extends State<TitleConnectionUrl> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 800),
      builder: (context, value, child) => AnimatedScale(
          curve: Curves.elasticInOut,
          duration: const Duration(milliseconds: 1200),
          scale: value,
          child: AnimatedOpacity(
            opacity: value,
            duration: const Duration(milliseconds: 1200),
            child: Text(
              'Connection URL',
              style: FontsApp.oldStandardTt,
            ),
          )),
    );
  }
}
