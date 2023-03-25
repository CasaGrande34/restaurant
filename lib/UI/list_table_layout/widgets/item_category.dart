import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/utils_exports.dart';

class ItemCategory extends StatefulWidget {
  const ItemCategory({
    super.key,
    required this.category,
    required this.item,
    required this.price,
    required this.description,
    required this.image,
  });
  final String category;
  final String item;
  final String price;
  final String description;
  final String image;

  @override
  ItemCategoryState createState() => ItemCategoryState();
}

class ItemCategoryState extends State<ItemCategory> {
  // booleano que indica si el elemento está expandido o no
  bool _expanded = false;

  int multiplicador = 0;

  // controlador de texto para el campo de comentario
  TextEditingController commentController = TextEditingController();

  void _toggleExpanded() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  plus() {
    setState(() {});
    multiplicador++;
  }

  subtract() {
    setState(() {});
    multiplicador--;
  }

  @override
  void dispose() {
    // se debe liberar el controlador de texto al salir del widget
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: _toggleExpanded,
        child: Card(
          color: Colors.amber,
          margin: const EdgeInsets.all(SizesApp.padding15),
          child: ExpansionTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: SizedBox(
              height: 140,
              width: 200,
              child: Row(
                children: [
                  SizedBox(
                    height: 130,
                    width: 120,
                    child: Image.network(widget.image),
                  ),
                  // SizesApp.addHorizontalSpace(SizesApp.padding10),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SizesApp.padding15,
                              vertical: SizesApp.padding15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Text(
                                      widget.item,
                                      style: FontsApp.oldStandardTt.copyWith(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                    const Spacer(),
                                    Text(
                                      widget.price,
                                      style: FontsApp.oldStandardTt.copyWith(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  child: Text(
                                    widget.description,
                                    style: FontsApp.farsan.copyWith(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                SizesApp.addVerticalSpace(SizesApp.padding15),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: subtract,
                                      child: const Chip(
                                          label: Icon(
                                        FontAwesomeIcons.minus,
                                        size: 13,
                                      )),
                                    ),
                                    SizesApp.addHorizontalSpace(
                                        SizesApp.padding5),
                                    Chip(label: Text(multiplicador.toString())),
                                    SizesApp.addHorizontalSpace(
                                        SizesApp.padding5),
                                    GestureDetector(
                                      onTap: plus,
                                      child: const Chip(
                                          label: Icon(
                                        FontAwesomeIcons.plus,
                                        size: 13,
                                      )),
                                    )
                                  ],
                                )
                              ])))
                ],
              ),
            ),
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: SizesApp.padding15),
                height: 60,
                width: double.infinity,
                color: Colors.amber,
                child: TextField(
                  controller: commentController,
                  decoration: StylesApp.inputDecorationItem,
                ),
              )
            ],
          ),
        ));
  }
}

// AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
//           height: _expanded ? 200 : 140,
//           width: w * .6,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(SizesApp.padding10),
//             color: Colors.amber,
//             boxShadow: _expanded
//                 ? const [
//                     BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 5,
//                       spreadRadius: 1,
//                       offset: Offset(0, 2),
//                     )
//                   ]
//                 : null,
//           ),
//           padding: const EdgeInsets.symmetric(
//               vertical: SizesApp.padding5, horizontal: SizesApp.padding5),
//           margin: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(SizesApp.padding10),
//                     ),
//                   ),
//                   SizesApp.addHorizontalSpace(SizesApp.padding10),
//                   SizedBox(
//                     width: 170,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           widget.item,
//                           style: FontsApp.oldStandardTt
//                               .copyWith(fontSize: 18, color: Colors.black),
//                         ),
//                         SizesApp.addHorizontalSpace(SizesApp.padding10),
//                         Text(
//                           widget.description,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: FontsApp.roboto.copyWith(
//                               fontSize: 12, fontWeight: FontWeight.w300),
//                         ),
//                         SizesApp.addHorizontalSpace(SizesApp.padding10),
//                         Row(
//                           children: [
//                             GestureDetector(
//                               onTap: subtract,
//                               child: const Chip(
//                                   label: Icon(
//                                 FontAwesomeIcons.minus,
//                                 size: 13,
//                               )),
//                             ),
//                             SizesApp.addHorizontalSpace(SizesApp.padding5),
//                             Chip(label: Text(multiplicador.toString())),
//                             SizesApp.addHorizontalSpace(SizesApp.padding5),
//                             GestureDetector(
//                               onTap: plus,
//                               child: const Chip(
//                                   label: Icon(
//                                 FontAwesomeIcons.plus,
//                                 size: 13,
//                               )),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   SizesApp.addHorizontalSpace(SizesApp.padding10),
//                   SizedBox(
//                     child: Text(
//                       widget.price,
//                       style: FontsApp.oldStandardTt
//                           .copyWith(fontSize: 20, color: Colors.black),
//                     ),
//                   )
//                 ],
//               ),
//               SizesApp.addVerticalSpace(SizesApp.padding15),
//               if (_expanded)
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: TextFormField(
//                       controller: commentController,
//                       decoration: StylesApp.inputDecorationItem),
//                 ),
//             ],
//           ),
//         ));
//   }
// }
