import 'dart:io';

/// Generates a complete `full_theme.json` from Flutter's default [ThemeData].
///
/// Because this package depends on Flutter, the generator must run inside the
/// Flutter test environment. This script simply orchestrates that for you.
///
/// Usage:
/// ```bash
/// dart run json_theme:generate_full_theme
/// ```
void main() async {
  final result = await Process.run(
    'flutter',
    ['test', 'test/full_theme_test.dart'],
    runInShell: true,
  );

  // ignore: avoid_print
  stdout.write(result.stdout);
  // ignore: avoid_print
  stderr.write(result.stderr);

  exit(result.exitCode);
}
