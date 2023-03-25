import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_2/UI/login_and_register/login_layout/widgets/welcome_title.dart';

import '../../../../routes/routes_delegate.dart';
import '../../../../theme/theme_charger.dart';
import '../../../../utils/utils_exports.dart';
import '../../login_layout/widgets/change_view.dart';
import '../../login_layout/widgets/footer_custom.dart';
import '../widgets/form_register_box.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    final appTheme = Provider.of<ThemeCharger>(context).currentTheme;
    return Scaffold(
        backgroundColor: appTheme.colorScheme.background,
        body: Stack(
          children: [
            Column(
              children: [
                SizesApp.addVerticalSpace(40),
                const WelcomeTitle(
                  text: 'Bienvenido',
                ),
                SizesApp.addVerticalSpace(50),
                //FORM CONTAINER
                TweenAnimationBuilder(
                  curve: Curves.easeOutQuart,
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 500),
                  builder: (context, value, child) => Transform.scale(
                    scale: 1.0 * value,
                    child: const FormRegisterBox(title: 'Crea una cuenta'),
                  ),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding20),
                SizedBox(
                  width: w * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /*	------------------------------------- */
                      TweenAnimationBuilder<double>(
                        curve: Curves.easeOutBack,
                        duration: const Duration(milliseconds: 900),
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        builder: (context, value, _) => Transform.translate(
                          offset: Offset(0.0, 900 * value),
                          child: const SizedBox(
                            height: 90,
                            width: 90,
                            child: Placeholder(),
                          ),
                        ),
                      ),
                      TweenAnimationBuilder<double>(
                        curve: Curves.easeOutBack,
                        duration: const Duration(milliseconds: 1200),
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        builder: (context, value, _) => Transform.translate(
                          offset: Offset(0.0, 900 * value),
                          child: const SizedBox(
                            height: 90,
                            width: 90,
                            child: Placeholder(),
                          ),
                        ),
                      ),
                      TweenAnimationBuilder<double>(
                        curve: Curves.easeOutBack,
                        duration: const Duration(milliseconds: 1800),
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        builder: (context, value, _) => Transform.translate(
                          offset: Offset(0.0, 900 * value),
                          child: const SizedBox(
                            height: 90,
                            width: 90,
                            child: Placeholder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding15),
                const ChangeView(
                  route: RoutesDelegateFluro.login,
                  text1: 'Ya tienes cuenta?',
                  textCambio: 'Inicia sesion',
                ),
                const Spacer(),
                const FooterCustom()
              ],
            ),
          ],
        ));
  }
}
