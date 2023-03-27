import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_2/providers/device_info.dart';
import 'package:restaurant_app_2/services/data_spreadsheet.dart';
import 'package:restaurant_app_2/theme/theme_charger.dart';
import 'routes/routes_delegate.dart';

void main() async {
  RoutesDelegateFluro.configureRoutes();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBWVBd6IvAggbvurdSwyYSOlWj82xyM8ps",
          authDomain: "restaurant-app-b6cd2.firebaseapp.com",
          projectId: "restaurant-app-b6cd2",
          storageBucket: "restaurant-app-b6cd2.appspot.com",
          messagingSenderId: "984577246047",
          appId: "1:984577246047:web:4d43de6046536dc1a82cea"));
  return runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DataSpreadSheet(),
        ),
        // ChangeNotifierProvider(
        //   lazy: false,
        //   create: (_) => AuthProvider(),
        // ),
        ChangeNotifierProvider(
          create: (_) => ThemeCharger(1),
        ),
        ChangeNotifierProvider(
          create: (_) => DeviceInfoProvider(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Restaurant app',
      onGenerateRoute: RoutesDelegateFluro.router.generator,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
