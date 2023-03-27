import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:provider/provider.dart';

import '../../../providers/device_info.dart';
import '../../../services/data_spreadsheet.dart';
import '../../../utils/utils_exports.dart';
import '../widgets/title_connection_url.dart';

const idDeEmpresa = 'IDDEEMEPRESA2';

class RegisterTableView extends StatefulWidget {
  const RegisterTableView({super.key});

  @override
  State<RegisterTableView> createState() => _RegisterTableViewState();
}

class _RegisterTableViewState extends State<RegisterTableView> {
  bool isButtonPressed = false;

  @override
  void initState() {
    super.initState();
    Provider.of<DeviceInfoProvider>(context, listen: false).initDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    //Providar de Sheet
    final dataProvider = Provider.of<DataSpreadSheet>(context);

    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    showAlertDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                title: const Text('Ya hay data'),
                content: const Text(
                    '¿Está seguro de que desea guardar las selecciones realizadas?'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Quedarse con el nuevo'),
                    onPressed: () async {
                      await dataProvider.getCategoriesListComplete();
                      Navigator.pushNamed(
                          context, '/listTable'); // Cierra el cuadro de diálogo
                    },
                  ),
                  TextButton(
                    child: const Text('Quedarse con el viejo'),
                    onPressed: () async {
                      await dataProvider.getCategoriesListComplete();
                      Navigator.pushNamed(
                          context, '/listTable'); // Ciera el cuadro de diálogo
                    },
                  ),
                ]);
          });
    }

    return Scaffold(
      body: TweenAnimationBuilder(
          duration: const Duration(milliseconds: 700),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (context, value, _) {
            return AnimatedScale(
              scale: value,
              duration: const Duration(milliseconds: 700),
              curve: Curves.elasticIn,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: SizesApp.padding15),
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizesApp.padding15),
                  height: 600,
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      const SizedBox(height: 20),
                      const TitleConnectionUrl(),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 500,
                        child: TextFormField(
                            autofocus: true,
                            controller: dataProvider.urlSheet,
                            onChanged: (value) {
                              dataProvider.url = value;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Este campo es requerido';
                              }
                              return null;
                            },
                            decoration: StylesApp.inputDecorationURL),
                      ),
                      SizesApp.addVerticalSpace(SizesApp.padding15),
                      ElevatedButton(
                        onPressed: () {
                          dataProvider.getHeadersOwners();
                          setState(() {
                            isButtonPressed = true;
                          });
                        },
                        child: const Text('Hacer peticion'),
                      ),
                      SizesApp.addVerticalSpace(SizesApp.padding15),
                      if (isButtonPressed)
                        Column(children: [
                          SizesApp.addVerticalSpace(SizesApp.padding10),
                          const Text(
                            'Indique a que sector pertenece su categoria',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizesApp.addVerticalSpace(SizesApp.padding10),
                          Container(
                            color: Colors.black26,
                            height: 300,
                            // width: 300,
                            child: FutureBuilder<List<String>>(
                              future: dataProvider.getHeadersOwners(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<List<String>> snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  // Si el estado de la conexión es "esperando", se muestra el indicador de carga
                                  return const Center(
                                      child: CircularProgressIndicator());
                                } else if (snapshot.hasError) {
                                  // Si hay un error, muestra el error
                                  return Text('Error: ${snapshot.error}');
                                } else {
                                  // Si la conexión fue exitosa y no hay errores, se muestra el ListView
                                  List<String> headersOwners = snapshot.data!;
                                  return ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: headersOwners.length,
                                    itemBuilder: (context, index) {
                                      final header = headersOwners[index];
                                      final asignacion =
                                          dataProvider.references[header];
                                      final dropdownItems = dataProvider
                                          .headersTemplates
                                          .where((itemQueQuitamos) =>
                                              !dataProvider.references
                                                  .containsValue(
                                                      itemQueQuitamos) ||
                                              dataProvider.references[header] ==
                                                  itemQueQuitamos)
                                          .map((item) => DropdownMenuItem(
                                                value: item,
                                                child: Text(item),
                                              ))
                                          .toList();
                                      return ListTile(
                                        leading: const Icon(
                                          FontAwesomeIcons.sailboat,
                                          size: 10,
                                        ),
                                        textColor: Colors.white,
                                        title: Text(header),
                                        trailing: DropdownButton<String>(
                                          style: FontsApp.roboto.copyWith(
                                              fontSize: 15,
                                              color: Colors.white),
                                          iconEnabledColor: Colors.amber,
                                          elevation: 8,
                                          dropdownColor: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          value: asignacion,
                                          items: dropdownItems,
                                          onChanged: (String? value) {
                                            if (value != null &&
                                                !dataProvider.references
                                                    .containsValue(value)) {
                                              // asegura que el valor sea válido y no se haya asignado a otra cabecera
                                              setState(
                                                () {
                                                  dataProvider
                                                          .references[header] =
                                                      value; // actualiza el estado del widget para reflejar el cambio en la asignación
                                                },
                                              );
                                            }
                                          },
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                          SizesApp.addVerticalSpace(SizesApp.padding15),

                          // Agrega un botón para guardar las data.asignaciones (aún no hace nada)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  await dataProvider
                                      .createOrUpdateDocumentWithId(
                                          DeviceInfoProvider.deviceId,
                                          dataProvider.references);
                                },
                                // onPressed: () async {
                                //   bool hasData = await dataProvider.checkData();
                                //   if (hasData) {
                                //     showAlertDialog();
                                //   } else {
                                //     await dataProvider.saveReferences();
                                //     await dataProvider
                                //         .getCategoriesListComplete();
                                //     Navigator.pushNamed(context, '/listTable');
                                //   }
                                // },
                                // Resto del código del botón
                                child: const Text('Ver Menu'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  dataProvider.clearReferencesIntent();
                                  // Navigator.pushNamed(context, '/listTable');
                                },
                                child: const Text('Borrar'),
                              ),
                            ],
                          ),
                        ])
                      else
                        const SizedBox(),
                    ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
