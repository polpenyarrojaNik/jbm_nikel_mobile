// Runs a command with the active Puro environment's Flutter SDK first on PATH.
//
// Tools like flutter_distributor spawn a bare `flutter`, which picks up
// whatever SDK happens to be on PATH (e.g. a system-wide C:\Flutter install)
// instead of the one Puro selected for this project. Invoke them through this
// script instead:
//
//   puro dart run tool/puro_exec.dart flutter_distributor release --name prod
import 'dart:convert';
import 'dart:io';

/// Asks Puro where this project's environment lives, and returns its
/// `flutter/bin` directory. Returns null if Puro can't be queried.
String? _flutterBinDir() {
  final ProcessResult result;
  try {
    result = Process.runSync(
      'puro',
      ['--json', '--no-update-check', 'ls'],
      runInShell: true,
      stdoutEncoding: const Utf8Codec(),
    );
  } on ProcessException catch (e) {
    stderr.writeln('Warning: could not run puro: ${e.message}');
    return null;
  }
  if (result.exitCode != 0) return null;

  final Map<String, dynamic> payload;
  try {
    payload = jsonDecode(result.stdout as String) as Map<String, dynamic>;
  } on FormatException {
    return null;
  }

  final list = payload['environmentList'] as Map<String, dynamic>?;
  final selected = list?['projectEnvironment'] ?? list?['globalEnvironment'];
  final environments = (list?['environments'] as List?)?.cast<Map>();
  if (selected == null || environments == null) return null;

  for (final environment in environments) {
    if (environment['name'] != selected) continue;
    final path = environment['path'] as String?;
    if (path == null) continue;
    final bin = Directory('$path${Platform.pathSeparator}flutter'
        '${Platform.pathSeparator}bin');
    return bin.existsSync() ? bin.path : null;
  }
  return null;
}

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    stderr.writeln('Usage: dart run tool/puro_exec.dart <command> [args...]');
    exit(64);
  }

  final environment = <String, String>{};
  final flutterBin = _flutterBinDir();
  if (flutterBin == null) {
    stderr.writeln(
      'Warning: could not locate the Puro Flutter SDK; '
      'running "${args.first}" with the inherited PATH.',
    );
  } else {
    // Windows env vars are case-insensitive but Process.environment is not.
    final pathKey = Platform.environment.keys.firstWhere(
      (key) => key.toUpperCase() == 'PATH',
      orElse: () => 'PATH',
    );
    final current = Platform.environment[pathKey] ?? '';
    environment[pathKey] =
        '$flutterBin${Platform.isWindows ? ';' : ':'}$current';
  }

  final process = await Process.start(
    args.first,
    args.skip(1).toList(),
    environment: environment,
    runInShell: true,
    mode: ProcessStartMode.inheritStdio,
  );
  exit(await process.exitCode);
}
