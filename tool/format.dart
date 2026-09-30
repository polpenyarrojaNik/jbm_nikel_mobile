// Cross-platform replacement for `find ... | xargs dart format`.
// Formats every Dart file under lib/ except generated code.
import 'dart:io';

const _excludedDirs = {'generated'};
const _excludedSuffixes = ['.g.dart', '.gr.dart', '.freezed.dart'];

/// Windows caps a command line at ~32k characters, so send files in batches.
const _batchSize = 100;

bool _isGenerated(String path) {
  final normalized = path.replaceAll(r'\', '/');
  if (_excludedSuffixes.any(normalized.endsWith)) return true;
  return _excludedDirs.any((dir) => normalized.contains('/$dir/'));
}

Future<void> main(List<String> args) async {
  final root = Directory('lib');
  if (!root.existsSync()) {
    stderr.writeln('No lib/ directory found in ${Directory.current.path}');
    exit(1);
  }

  final files = root
      .listSync(recursive: true)
      .whereType<File>()
      .map((file) => file.path)
      .where((path) => path.endsWith('.dart') && !_isGenerated(path))
      .toList()
    ..sort();

  if (files.isEmpty) {
    stdout.writeln('Nothing to format.');
    return;
  }

  for (var i = 0; i < files.length; i += _batchSize) {
    final batch = files.sublist(i, (i + _batchSize).clamp(0, files.length));
    final result = await Process.run(
      Platform.resolvedExecutable,
      ['format', ...args, ...batch],
      stdoutEncoding: SystemEncoding(),
      stderrEncoding: SystemEncoding(),
    );
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    if (result.exitCode != 0) exit(result.exitCode);
  }
}
