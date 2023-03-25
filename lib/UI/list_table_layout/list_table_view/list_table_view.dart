import 'package:flutter/material.dart';
import '../../../utils/utils_exports.dart';
import '../widgets/list_items_category.dart';
import '../widgets/list_title_category.dart';
import '../widgets/title_menu.dart';

class ListTableView extends StatefulWidget {
  const ListTableView({super.key});

  @override
  State<ListTableView> createState() => _ListTableViewState();
}

class _ListTableViewState extends State<ListTableView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const TitleMenu(),
                const TitleCategory(),

                SizesApp.addVerticalSpace(SizesApp.padding10),
                const ListItemCategory(),

                // Container(
                //   height: 100,
                //   width: w,
                //   color: Colors.red,
                // ),∆
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    'Publicar Menu',
                    style: FontsApp.roboto
                        .copyWith(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  dialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Container(
              width: 600,
              height: 600,
              color: Colors.grey,
              child: Column(
                children: [
                  SizesApp.addVerticalSpace(SizesApp.padding25),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                  ),
                  SizesApp.addVerticalSpace(SizesApp.padding20),
                  Text(
                    'Debes iniciar sesion para poder publicar tu menu',
                    style: FontsApp.oldStandardTt.copyWith(
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/auth/login'),
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'Iniciar Sesion',
                              style: FontsApp.roboto
                                  .copyWith(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/auth/register'),
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              'Crear cuenta',
                              style: FontsApp.roboto
                                  .copyWith(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: dialog,
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber),
                          child: Center(
                            child: Text(
                              'Pasar a Premium',
                              style: FontsApp.roboto
                                  .copyWith(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer()
                ],
              ),
            ),
          );
        });
  }
}
