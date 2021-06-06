import 'dart:async';

import 'package:flutter/services.dart';

export 'src/utility/breakpoint.dart';
export 'src/utility/utils.dart';
export 'src/grids/bs_row.dart';
export 'src/others/bs_container.dart';
export 'src/navbars/bs_navbar.dart';

class BsFlutter {
  static const MethodChannel _channel = const MethodChannel('bs_flutter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
