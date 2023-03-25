import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../../providers/register_form_provider.dart';
import '../../../../theme/theme_charger.dart';
import '../../../../utils/utils_exports.dart';

class FormRegisterBox extends StatefulWidget {
  final String? logo;

  const FormRegisterBox({
    Key? key,
    this.logo,
    required String title,
  }) : super(key: key);

  @override
  State<FormRegisterBox> createState() => _FormRegisterBoxState();
}

class _FormRegisterBoxState extends State<FormRegisterBox> {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeCharger>(context).currentTheme;
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        color: appTheme.colorScheme.onBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: appTheme.colorScheme.primary,
          width: 1.2,
        ),
      ),
      child: const _BodyContainerRegister(),
    );
  }
}

class _BodyContainerRegister extends StatefulWidget {
  const _BodyContainerRegister();

  @override
  State<_BodyContainerRegister> createState() => _BodyContainerRegisterState();
}

class _BodyContainerRegisterState extends State<_BodyContainerRegister> {
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  bool obscureText = true;
  final GlobalKey<FormState> formRegisterKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final appTheme = Provider.of<ThemeCharger>(context).currentTheme;
    return ChangeNotifierProvider(
      create: (_) => RegisterFormProvider(),
      child: Builder(
        builder: (context) {
          //PROVIDER🔥
          final registerFormProvider =
              Provider.of<RegisterFormProvider>(context, listen: false);
          return Form(
            key: registerFormProvider.registerFormKey,
            child: Column(
              children: [
                SizesApp.addVerticalSpace(SizesApp.padding10),
                Text(
                  'Registrate',
                  style: FontsApp.oldStandardTt.copyWith(
                      color: appTheme.colorScheme.background, fontSize: 20),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizesApp.padding15),
                  child: TextFormField(
                    style: TextStyle(color: appTheme.colorScheme.background),
                    autofocus: true,
                    validator: (value) {
                      //CONDICIONES DEL VALIDADOR
                      if (value == null || value.isEmpty) {
                        return 'Ingrese su nombre';
                      }
                      if (value.length < 4) {
                        return 'El nombre debe tener almenos 4 caracteres';
                      }
                      return null;
                    },
                    onChanged: (value) => registerFormProvider.name = value,
                    decoration: StylesApp.authInputDecoration(
                      labelText: 'Nombre',
                      hintText: 'Ingrese su nombre',
                      icon: const Icon(
                        FontAwesomeIcons.personCane,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizesApp.padding10),
                  child: TextFormField(
                    style: TextStyle(color: appTheme.colorScheme.background),
                    validator: (value) {
                      //CONDICIONES DEL VALIDADOR
                      if (!EmailValidator.validate(value ?? '')) {
                        return 'Email no valido';
                      }
                      return null;
                    },
                    onChanged: (value) => registerFormProvider.email = value,
                    decoration: StylesApp.authInputDecoration(
                      labelText: 'Email',
                      hintText: 'Ingrese su correo',
                      icon: const Icon(
                        FontAwesomeIcons.envelope,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizesApp.padding10),
                  child: TextFormField(
                    style: TextStyle(color: appTheme.colorScheme.background),
                    validator: (value) {
                      //CONDICIONES DEL VALIDADOR
                      if (value == null || value.isEmpty) {
                        return 'Ingrese su contrasenia';
                      }
                      if (value.length < 6) {
                        return 'La contrasenia debe ser de almenos 6 caracteres';
                      }
                      return null;
                    },
                    onChanged: (value) => registerFormProvider.password = value,
                    obscureText: obscureText,
                    decoration: StylesApp.authInputDecoration(
                      labelText: 'Password',
                      hintText: '*********',
                      icon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText
                                ? FontAwesomeIcons.eyeLowVision
                                : FontAwesomeIcons.eye,
                            size: 20,
                          )),
                    ),
                  ),
                ),
                const Spacer(),
                RoundedLoadingButton(
                  width: w * .14,
                  height: h * .06,
                  controller: registerFormProvider.buttonController,
                  onPressed: registerFormProvider.validateForm,
                  color: appTheme.colorScheme.primary,
                  successColor: appTheme.colorScheme.onBackground,
                  child: const Text('Ingresar'),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding20),
              ],
            ),
          );
        },
      ),
    );
  }
}
