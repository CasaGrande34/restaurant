import 'package:flutter/material.dart';

import '../../utils/sizes_app.dart';

class ClientOptions extends StatelessWidget {
  const ClientOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listTable');
              },
              child: const Text(' pedir Menu'),
            ),
            SizesApp.addVerticalSpace(SizesApp.padding20),
            Container(
              height: 400,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
              ),
              child: Column(
                children: const [Text('Orden a pedir')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
