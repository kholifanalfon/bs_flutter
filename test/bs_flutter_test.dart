import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bs_flutter/bs_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('bs_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('Bs Grids', () async {
    BsRow();
    BsCol();
  });

  test('Bs Grids', () async {
    BsAlert();
  });
}
