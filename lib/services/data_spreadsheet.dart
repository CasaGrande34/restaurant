import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

import '../UI/list_table_layout/models/items_category_model.dart';

// import '../UI/list_table_layout/models/items_category_model.dart';

/* 

 Id de la coleccion = weLzTzEpRiLvHdpoAAbC

 */

class DataSpreadSheet extends ChangeNotifier {
  TextEditingController urlSheet = TextEditingController();
  String url = '';

  List<String> headersTemplates = [
    'Category',
    'Item',
    'Price',
    'Description',
    'Images'
  ];
  Map<String, String> references = {};

  List<Map<String, String>> listaFiltrada = [];
  List<String> categoriesListComplete = [];

  clearReferencesIntent() {
    references.clear();
    notifyListeners();
  }

  Future<List<Map<String, String>>> fetchData(String url) async {
    try {
      // Realizar la solicitud HTTP y esperar la respuesta
      var response = await http.get(Uri.parse(url));
      // Analizar la respuesta HTML en un documento
      var document = parse(response.body);
      // Encontrar todas las filas de la tabla en el documento
      var rows = document.getElementsByTagName('tr');
      // Encontrar todos los encabezados de la tabla en el documento
      var headers = document.getElementsByTagName('th');
      // Calcular el número de columnas en la tabla
      var numColumns = headers.length;

      // mapa llamado headerMap que se utiliza para almacenar el nombre de cada encabezado de una tabla HTML
      // y su índice correspondiente en la tabla.
      var headerMap = {
        for (var header in headers)
          header.text.toLowerCase(): headers.indexOf(header)
      };

      // Crear una lista vacía para almacenar los datos de la tabla
      List<Map<String, String>> data = [];

      // Recorrer todas las filas de la tabla, excepto la última (que es un pie de página)
      for (var i = 1; i < rows.length - 1; i++) {
        // Encontrar todas las celdas de la fila actual
        var cells = rows[i].getElementsByTagName('td');

        // Crear un mapa para almacenar los datos de la fila actual
        Map<String, String> rowData = {};

        // Recorrer todas las columnas de la fila actual
        for (var j = 0; j < numColumns; j++) {
          // Obtener el nombre del encabezado para la columna actual
          String header =
              headers.length > j ? headers[j].text.toLowerCase() : "";
          // Obtener el valor de la celda para la columna actual
          String value = cells.length > j ? cells[j].text : "";

          // Si el valor no está vacío, agregarlo al mapa de datos de la fila actual
          if (value.isNotEmpty) {
            rowData[header] = value;
          }
        }

        // Si la fila actual tiene datos, agregarla a la lista de datos
        if (rowData.isNotEmpty) {
          // Verificar si la fila actual es única (no tiene valores duplicados)
          Set<String> uniqueRow = Set<String>.from(rowData.values);
          if (uniqueRow.length == rowData.length) {
            // Mapear las claves del mapa de datos a los encabezados de la tabla utilizando el mapa de encabezados
            data.add({
              for (var key in rowData.keys)
                headerMap[key].toString(): rowData[key].toString()
            });
          }
        }
      }

      // Eliminar la última fila de la lista de datos (que es un pie de página)
      data.removeLast();
      // Devolver la lista de datos

      return data;
    } catch (e) {
      // Manejar cualquier error que ocurra durante la solicitud HTTP
      print('Error al obtener los datos: $e');
      return [];
    }
  }

  Future<List<String>> getHeadersOwners() async {
    try {
      // Obtener la lista de mapas de la función fetchData
      List<Map<String, String>> listaDeMapas = await fetchData(url);

      // Obtener el primer mapa de la lista de mapas
      Map<String, String> primerMapa = listaDeMapas[0];

      // Obtener los valores del primer mapa como una lista de strings
      List<String> listaDeStrings = primerMapa.values.toList();

      // Devolver la lista de strings
      return listaDeStrings;
    } catch (e) {
      print('Error al obtener los datos: $e');
      // En caso de error, devolver una lista vacía o nula
      return [];
    }
  }

  Future<bool> checkData() async {
    try {
      CollectionReference referencesCollection =
          FirebaseFirestore.instance.collection('references');

      QuerySnapshot querySnapshot = await referencesCollection.get();
      return querySnapshot.docs.isNotEmpty;
    } catch (e) {
      print('Este es el error del CheckData: $e');
      return false;
    }
  }

  Future<void> saveReferences() async {
    try {
      // Obtener una instancia de la colección en Firebase donde deseas guardar las asignaciones
      CollectionReference referencesCollection =
          FirebaseFirestore.instance.collection('references');

      // Verificar si ya existe un documento en la colección
      QuerySnapshot querySnapshot = await referencesCollection.get();
      if (querySnapshot.docs.isNotEmpty) {
        // Si hay un documento, eliminarlo antes de agregar el nuevo
        await referencesCollection.doc(querySnapshot.docs.first.id).delete();
      }

      // Crear un documento nuevo en la colección y asignarle los datos de las asignaciones
      await referencesCollection.add(references);

      // Imprimir un mensaje de éxito en la consola
      print('Las referencias se guardaron correctamente en Firebase.');
    } catch (e) {
      // Manejar cualquier error que ocurra durante el proceso de guardado
      print('Error al guardar las referencias en Firebase: $e');
    }
  }

  Future<Map<String, String>> getReferencesFromFirebase() async {
    try {
      // Obtener la instancia de Firestore y la referencia de la colección
      final firestoreInstance = FirebaseFirestore.instance;
      final referencesCollection = firestoreInstance.collection('references');

      // Obtener los documentos de la colección y convertirlos a un Map<String, dynamic>
      final querySnapshot = await referencesCollection.get();
      final referencesMap =
          Map<String, String>.from(querySnapshot.docs.first.data());

      // Convertir el mapa de dynamic a Map<String, String>
      final firebaseReferencesBack = referencesMap
          .map((key, value) => MapEntry(key.toString(), value.toString()));

      return firebaseReferencesBack;
    } catch (e) {
      // En caso de error, devolver un mapa vacío
      print('Error al obtener el mapa de referencias de Firebase: $e');
      return {};
    }
  }

  Future<List<Map<String, String>>> updateHeadersAndCopyList() async {
    final initialList = await fetchData(url);

    // Obtener los encabezados actualizados desde Firebase
    final firebaseReferences = await getReferencesFromFirebase();

    // Copiar la lista original para no modificarla directamente
    final copyList = List<Map<String, String>>.from(initialList);

    // Obtener el primer mapa de la lista actualizada y actualizar sus valores
    final mapHeaders = Map<String, String>.from(copyList[0]);

    for (final entry in mapHeaders.entries) {
      var keyFetchData = entry.key;
      final valueFetchData = entry.value;
      for (final mapEntry in firebaseReferences.entries) {
        if (mapEntry.key == valueFetchData) {
          mapHeaders[mapEntry.value] = mapHeaders.remove(keyFetchData)!;
          keyFetchData = mapEntry.value;
          break;
        }
      }
    }

    // Actualizar el primer mapa de la lista de mapas actualizados con el mapa actualizado
    copyList[0] = mapHeaders;

    print(' ------------ CopyList  ------------- ');
    print(copyList);

    return copyList;
  }

  Future<void> getCategoriesListComplete() async {
    String valueFind = 'Category';
    List<String> categories = [];
    List<Map<String, String>> listComplete = await updateHeadersAndCopyList();
    // Buscar el mapa que contiene el valor buscado
    Map<String, String> categoriesFind = listComplete.firstWhere(
      (category) => category.containsValue(valueFind),
      orElse: () => {},
    );

    String key = categoriesFind.keys.first;

    // Filtrar la lista de mapas por la clave encontrada
    List<Map<String, dynamic>> categoriesKey = listComplete
        .skip(1)
        .where((keyCategorie) => keyCategorie.containsKey(key))
        .toList();

    // Imprimir los valores con la misma clave
    for (var mapa in categoriesKey) {
      categories.add(mapa[key]);
    }
    // Crear un conjunto de strings únicos
    Set<String> uniqueCategories = Set<String>.from(categories);

    // Convertir el conjunto en una lista de strings
    List<String> uniqueCategoriesList = uniqueCategories.toList();

    categoriesListComplete = uniqueCategoriesList;
  }

  Future<void> filterItems(String value) async {
    List<Map<String, String>> listCopyForHaederss =
        await updateHeadersAndCopyList();
    final recorreConString =
        listCopyForHaederss.where((map) => map.containsValue(value)).toList();
    listaFiltrada = recorreConString;
    notifyListeners();
  }

  List<ItemCategoryModel> mapList() {
    return listaFiltrada.map((map) {
      return ItemCategoryModel.fromJson(map);
    }).toList();
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