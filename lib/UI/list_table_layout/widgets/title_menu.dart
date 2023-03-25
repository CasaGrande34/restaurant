import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import '../../../utils/utils_exports.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 100,
      width: w,
      child: FadeInUp(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizesApp.addHorizontalSpace(SizesApp.padding15),
            Container(
              height: 3,
              width: 25,
              color: Colors.black,
            ),
            SizesApp.addHorizontalSpace(SizesApp.padding15),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
            ),
            SizesApp.addHorizontalSpace(SizesApp.padding10),
            Text(
              'Nuestro Menu',
              style: FontsApp.oldStandardTt
                  .copyWith(color: Colors.black, fontSize: 30),
            ),
            SizesApp.addHorizontalSpace(SizesApp.padding10),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
            ),
            SizesApp.addHorizontalSpace(SizesApp.padding15),
            Container(
              height: 3,
              width: 25,
              color: Colors.black,
            ),
            SizesApp.addHorizontalSpace(SizesApp.padding15),
          ],
        ),
      ),
    );
  }
}
