import 'dart:io';

import 'package:flutter/services.dart';

const METHOD_NAME = '0maru.github.com/pangle_ads';

class PangleAds {
  static final _pangleAds = PangleAds._();
  static final _methodChannel = const MethodChannel(METHOD_NAME);

  factory PangleAds._() {
    _methodChannel.setMethodCallHandler((call) => _handleMethod(call));
    return _pangleAds;
  }

  Future<dynamic> _handleMethod(MethodCall call) async {}

  Future<Null> init() async {
    if (Platform.isIOS) {
      _methodChannel.invokeMethod('init');
    } else if (Platform.isAndroid) {
      _methodChannel.invokeMethod('init');
    }
    throw PlatformException(code: 'This OS is not Supported.');
  }

  Future<Map<String, dynamic>> showReward() async {
    if (Platform.isIOS) {
      return await _methodChannel.invokeMapMethod('showRewardAd');
    } else if (Platform.isAndroid) {
      return await _methodChannel.invokeMapMethod('showRewardAd');
    }
    throw PlatformException(code: 'This OS is not Supported.');
  }
}