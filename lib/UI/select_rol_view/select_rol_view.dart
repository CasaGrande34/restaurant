import 'package:flutter/material.dart';

import '../../utils/sizes_app.dart';

class SelectRolView extends StatelessWidget {
  const SelectRolView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registerTable');
              },
              child: const Text('Cajero'),
            ),
            SizesApp.addVerticalSpace(SizesApp.padding20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/clientOptions');
              },
              child: const Text('Cliente'),
            ),
          ],
        ),
      ),
    );
  }
}
