import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../services/data_spreadsheet.dart';
import 'item_category.dart';

class ListItemCategory extends StatelessWidget {
  const ListItemCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final data = Provider.of<DataSpreadSheet>(context).mapList();
    // final w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h,
      width: 700,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return FadeInDown(
              child: ItemCategory(
                item: item.item,
                price: item.price,
                category: item.category,
                description: item.description,
                image: item.image,
              ),
            );
          }),
    );
  }
}
