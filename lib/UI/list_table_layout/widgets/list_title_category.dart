import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

import '../../../services/data_spreadsheet.dart';
import 'list_table_view_exports.dart';
import '../../../utils/utils_exports.dart';

class TitleCategory extends StatefulWidget {
  const TitleCategory({
    super.key,
  });

  @override
  State<TitleCategory> createState() => _TitleCategoryState();
}

class _TitleCategoryState extends State<TitleCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      color: Colors.grey,
      child: const ListTitleCategory(),
    );
  }
}

class ListTitleCategory extends StatefulWidget {
  const ListTitleCategory({
    super.key,
  });

  @override
  State<ListTitleCategory> createState() => _ListTitleCategoryState();
}

class _ListTitleCategoryState extends State<ListTitleCategory> {
  final Map<String, String> mapAssetsCategories = {
    'Carnes': 'assets/carnes.png',
    'Verduras': 'assets/verduras.png',
    'Pastas': 'assets/pastas.png',
    'default': 'assets/no-image.png',
  };

  late List<bool> selected;
  int _selectedIndex = 1;

  List<String> prueba = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0; // Seleccionar el primer elemento de la lista
    final selectedCategory =
        Provider.of<DataSpreadSheet>(context, listen: false)
            .categoriesListComplete[_selectedIndex];
    Provider.of<DataSpreadSheet>(context, listen: false)
        .filterItems(selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataSpreadSheet>(context);
    // final ccate = Provider.of<DataSpreadSheet>(context).categoriesListComplete;
    // final url = data.url;
    //!Al recargar no se obtiene url.
    // print(' ------------ url  ------------- ');
    // print(url);
    // print(' ------------ categorias  ------------- ');
    // print(ccate);

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount:
          Provider.of<DataSpreadSheet>(context).categoriesListComplete.length,
      itemBuilder: ((context, index) {
        final category =
            Provider.of<DataSpreadSheet>(context).categoriesListComplete[index];
        final image =
            mapAssetsCategories[category] ?? mapAssetsCategories['default'];
        return GestureDetector(
          onTap: () {
            setState(() {
              // Actualiza la lista de booleanos con la posición seleccionada
              selected = List.generate(
                  data.categoriesListComplete.length, (i) => i == index);
            });
          },
          child: FadeInLeft(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: SizesApp.padding20),
              child: ItemTitleCategory(
                category: category,
                image: AssetImage(image!),
                active: _selectedIndex == index,
                touched: () {
                  setState(() {
                    _selectedIndex = index;
                    final selectedCategory =
                        data.categoriesListComplete[_selectedIndex];
                    data.filterItems(selectedCategory);
                  });
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ItemTitleCategory extends StatefulWidget {
  final String category;
  final AssetImage image;
  final Function touched;
  final bool active;
  const ItemTitleCategory({
    Key? key,
    required this.category,
    required this.image,
    required this.touched,
    required this.active,
  }) : super(key: key);
  @override
  State<ItemTitleCategory> createState() => _ItemTitleCategoryState();
}

class _ItemTitleCategoryState extends State<ItemTitleCategory> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.touched();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 90,
            width: 90,
            child: Stack(
              alignment: Alignment.center,
              children: [
                widget.active ? const RippleAnimation() : const SizedBox(),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizesApp.addVerticalSpace(SizesApp.padding10),
          Positioned(
            bottom: 5,
            child: Text(
              widget.category,
              style:
                  FontsApp.roboto.copyWith(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

// List mapList() {
  //   return listaFiltrada.map((map) {
  //     return ItemCategoryModel.fromMap(map);
  //   }).toList();
  // }

  //  Future<List<Map<String, String>>> updateHeadersAndCopyList() async {
  //   // Obtener los encabezados actualizados desde Firebase
  //   final firebaseReferences = await getReferencesFromFirebase();

  //   // Obtener la lista actualizada con los encabezados actualizados
  //   List<Map<String, String>> listComplete = await fetchData(url);

  //   // Obtener el primer mapa de la lista actualizada y actualizar sus valores
  //   final mapHeaders = Map<String, String>.from(listComplete[0]);

  //   for (final entry in mapHeaders.entries) {
  //     final keyFetchData = entry.key;
  //     final valueFetchData = entry.value;
  //     for (final mapEntry in firebaseReferences.entries) {
  //       if (mapEntry.key == valueFetchData) {
  //         mapHeaders[keyFetchData] = mapEntry.value;
  //         columnPositions[mapEntry.value] = int.parse(keyFetchData);
  //       }
  //     }
  //   }
  //   print(' ------------ posiciones de los Headers  ------------- ');
  //   print(columnPositions);
  //   // Actualizar el primer mapa de la lista de mapas actualizados con el mapa actualizado
  //   listComplete[0] = mapHeaders;

  //   return listComplete;
  // }

// Map<String, int> columnPositions = {};