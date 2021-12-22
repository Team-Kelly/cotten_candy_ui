
import 'dart:async';

import 'package:flutter/services.dart';

class CottenCandyUi {
  static const MethodChannel _channel = MethodChannel('cotten_candy_ui');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
