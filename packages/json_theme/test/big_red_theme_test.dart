import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:json_theme/json_theme.dart';

void main() {
  test('big_red.json theme validates and decodes', () async {
    final file = File('example/assets/themes/big_red.json');
    final jsonStr = await file.readAsString();
    final map = json.decode(jsonStr);

    final theme = ThemeDecoder.instance.decodeThemeData(map);
    expect(theme, isNotNull);
  });
}
