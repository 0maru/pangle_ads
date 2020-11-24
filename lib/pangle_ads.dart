
import 'dart:async';

import 'package:flutter/services.dart';

class PangleAds {
  static const MethodChannel _channel =
      const MethodChannel('pangle_ads');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
