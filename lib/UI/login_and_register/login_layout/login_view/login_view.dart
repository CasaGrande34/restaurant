import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../routes/routes_delegate.dart';
import '../../../../theme/theme_charger.dart';
import '../../../../utils/utils_exports.dart';
import '../widgets/change_view.dart';
import '../widgets/footer_custom.dart';
import '../widgets/form_login_box.dart';
import '../widgets/welcome_title.dart';

//dependencies

//file addresses

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    final appTheme = Provider.of<ThemeCharger>(context).currentTheme;
    return Scaffold(
        backgroundColor: appTheme.colorScheme.secondary,
        body: Stack(
          children: [
            Positioned(
              top: 50,
              // right: 150,
              right: Responsive.isDesktop(context) ? 140 : 0,
              child: Container(
                color: appTheme.colorScheme.secondary,
              ),
            ),
            Column(
              children: [
                SizesApp.addVerticalSpace(70),
                const WelcomeTitle(
                  text: 'Que bueno verte de nuevo',
                ),
                SizesApp.addVerticalSpace(50),
                //FORM CONTAINER
                TweenAnimationBuilder(
                  curve: Curves.easeOutQuart,
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 500),
                  builder: (context, value, child) => Transform.scale(
                    scale: 1.0 * value,
                    child: const FormLoginBox(title: 'Inicia sesion'),
                  ),
                ),
                SizesApp.addVerticalSpace(SizesApp.padding10),
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
                          // ignore: prefer_const_constructors
                          child: SizedBox(
                            height: 90,
                            width: 90,
                            child: const Placeholder(),
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
                SizesApp.addVerticalSpace(SizesApp.padding10),
                const ChangeView(
                  route: RoutesDelegateFluro.register,
                  text1: 'No tienes cuenta?',
                  textCambio: 'Registrate',
                ),
                const Spacer(),
                const FooterCustom()
              ],
            ),
          ],
        ));
  }
}
