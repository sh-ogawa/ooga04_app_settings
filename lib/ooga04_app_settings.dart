import 'dart:async';

import 'package:flutter/services.dart';

class Ooga04AppSettings {
  static const MethodChannel _channel =
      const MethodChannel('ooga04/app_settings');

  static Future<String> get openNotification async {
    final String version = await _channel.invokeMethod('notification');
    return version;
  }
}
