import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/theme_charger.dart';
import '../../../../utils/utils_exports.dart';

class WelcomeTitle extends StatelessWidget {
  final String text;
  const WelcomeTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeCharger>(context).currentTheme;
    return TweenAnimationBuilder(
      curve: Curves.easeOutSine,
      duration: const Duration(milliseconds: 2000),
      tween: Tween<double>(begin: 1.0, end: 0.0),
      builder: (context, value, child) => Transform.translate(
        offset: Offset(0.0, -900 * value),
        child: Text(
          text,
          style: FontsApp.oldStandardTt
              .copyWith(fontSize: 35, color: appTheme.colorScheme.onPrimary),
        ),
      ),
    );
  }
}
