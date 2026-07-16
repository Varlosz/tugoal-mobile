import 'package:flutter/foundation.dart';

class ApiConfig {
   // conforme o sitio onde se encontre fazer ipconfig e colocar ip v4
  static const String ipFisico = '000.00.00.000';
  static const String portaApi = '5177';

  static String get baseUrl {
    // Flutter Web / Chrome no PC
    if (kIsWeb) {
      return 'http://localhost:$portaApi/api';
    }

    // APK no telemóvel físico Android
    if (defaultTargetPlatform == TargetPlatform.android) {
      return 'http://$ipFisico:$portaApi/api';
    }
 
    // Windows / Desktop
    return 'http://localhost:$portaApi/api';
  }
}
