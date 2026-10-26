// Cross-platform replacement for `find ... | xargs dart format`.
// Formats every Dart file under lib/ except generated code.
import 'dart:io';

const kExcludedDirs = {'generated'};
const kExcludedSuffixes = ['.g.dart', '.gr.dart', '.freezed.dart'];

/// Windows caps a command line at ~32k characters, so send files in batches.
const kBatchSize = 100;

bool _isGenerated(String path) {
  final normalized = path.replaceAll(r'\', '/');
  if (kExcludedSuffixes.any(normalized.endsWith)) return true;
  return kExcludedDirs.any((dir) => normalized.contains('/$dir/'));
}

Future<void> main(List<String> args) async {
  final root = Directory('lib');
  if (!root.existsSync()) {
    stderr.writeln('No lib/ directory found in ${Directory.current.path}');
    exit(1);
  }

  final files =
      root
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

  for (var i = 0; i < files.length; i += kBatchSize) {
    final batch = files.sublist(i, (i + kBatchSize).clamp(0, files.length));
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
