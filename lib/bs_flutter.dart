
import 'dart:async';

import 'package:flutter/services.dart';

class BsFlutter {
  static const MethodChannel _channel =
      const MethodChannel('bs_flutter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
