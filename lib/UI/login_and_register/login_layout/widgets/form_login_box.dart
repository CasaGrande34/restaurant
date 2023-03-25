import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../../providers/login_form_provider.dart';
import '../../../../theme/theme_charger.dart';
import '../../../../utils/utils_exports.dart';

class FormLoginBox extends StatefulWidget {
  final String? logo;

  const FormLoginBox({
    Key? key,
    this.logo,
    required String title,
  }) : super(key: key);

  @override
  State<FormLoginBox> createState() => _ContainerFormLoginState();
}

class _ContainerFormLoginState extends State<FormLoginBox> {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeCharger>(context).currentTheme;
    return TweenAnimationBuilder(
        curve: Curves.easeOutQuart,
        tween: Tween<double>(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 500),
        builder: (context, value, child) => Transform.scale(
            scale: 1.0 * value,
            child: Container(
              height: Responsive.isMobile(context) ? 350 : 300,
              width: 400,
              decoration: BoxDecoration(
                color: appTheme.colorScheme.onBackground,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: appTheme.colorScheme.onPrimary,
                  width: 1.2,
                ),
              ),
              child: const _BodyFormLoginBox(),
            )));
  }
}

class _BodyFormLoginBox extends StatefulWidget {
  const _BodyFormLoginBox();

  @override
  State<_BodyFormLoginBox> createState() => _BodyFormLoginBoxState();
}

class _BodyFormLoginBoxState extends State<_BodyFormLoginBox> {
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  bool obscureText = true;
  final GlobalKey<FormState> formLoginKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    // AUTHPROVIDER 🔥
    // final authProvider = Provider.of<AuthProvider>(context);
    final appTheme = Provider.of<ThemeCharger>(context).currentTheme;
    return ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: Builder(
        builder: (context) {
          //PROVIDER🔥
          final loginFormProvider =
              Provider.of<LoginFormProvider>(context, listen: false);
          return Form(
            key: loginFormProvider.loginFormKey,
            child: Column(
              children: [
                SizesApp.addVerticalSpace(SizesApp.padding10),
                Text(
                  'Inicia sesion',
                  style: FontsApp.oldStandardTt.copyWith(
                      color: appTheme.colorScheme.background, fontSize: 20),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding15),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizesApp.padding10),
                  child: TextFormField(
                    style: TextStyle(color: appTheme.colorScheme.background),
                    autofocus: true,
                    validator: (value) {
                      //CONDICIONES DEL VALIDADOR
                      if (!EmailValidator.validate(value ?? '')) {
                        return 'Email no valido';
                      }
                      return null;
                    },
                    onChanged: (value) => loginFormProvider.email = value,
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
                    onChanged: (value) => loginFormProvider.password = value,
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
                  width: Responsive.isMobile(context) ? w * .60 : w * .14,
                  controller: loginFormProvider.buttonController,
                  height: h * .06,
                  onPressed: () {
                    // final isValid = loginFormProvider.validateForm();
                    // if (isValid)
                    //   authProvider.login(
                    //       loginFormProvider.email, loginFormProvider.password);
                  },
                  color: appTheme.colorScheme.onPrimary,
                  successColor: appTheme.colorScheme.secondary,
                  child: const Text('Ingresar'),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding15),
              ],
            ),
          );
        },
      ),
    );
  }
}
