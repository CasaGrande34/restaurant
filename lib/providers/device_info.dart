import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

class DeviceInfoProvider extends ChangeNotifier {
  static String deviceId = '';

  Future<void> initDeviceInfo() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    try {
      if (kIsWeb) {
        print(' ------------ ESWEB  ------------- ');
        print(deviceId = 'IDWEBPRUEBA');
      } else if (Platform.isAndroid) {
        final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        deviceId = androidInfo.id;
        print(' ------------ ESANDROID  ------------- ');
        print(deviceId);
      } else if (Platform.isIOS) {
        final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        deviceId = iosInfo.identifierForVendor!;
        print(' ------------ ESIOS  ------------- ');
        print(deviceId);
      }
    } catch (e) {
      print('Error al obtener la información del dispositivo: $e');
    }
    // notifyListeners();
  }
}
// 