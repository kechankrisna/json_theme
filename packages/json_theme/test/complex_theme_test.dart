import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:json_theme/json_theme.dart';

void main() {
  test('generate complex_theme.json and validate decode', () async {
    // 1. Generate the JSON from Flutter's default ThemeData
    // final encoded = ThemeEncoder.instance.encodeThemeData(ThemeData());
    // final jsonStr = const JsonEncoder.withIndent('  ').convert(encoded);

    final file = File('example/assets/themes/complex_theme.json');
    // await file.readAsString();

    // 2. Read it back and decode
    final readStr = await file.readAsString();
    final map = json.decode(readStr);

    final theme = ThemeDecoder.instance.decodeThemeData(map);
    expect(theme, isNotNull);
  });
}
