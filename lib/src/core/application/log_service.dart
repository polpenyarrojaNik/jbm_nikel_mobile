import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

bool get isInDebugMode {
  var inDebugMode = false;
  assert(() {
    inDebugMode = true;
    return true;
  }());
  return inDebugMode;
}

final log = Logger(
  printer: CustomPrinter(),
  level: isInDebugMode ? Level.debug : Level.info,
  filter: null,
  output: null,
);

class RiverpodLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (newValue != null && newValue != previousValue) {
      log.d('Provider: "${provider.name ?? provider.runtimeType}"');
      log.d('   value: $newValue');
    }
  }
}

class CustomPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    // var color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    final timeStr = getTime();

    return [
      truncate(
        '$emoji[$timeStr] > ${event.message}',
        length: 120,
        rightLength: 20,
      ),
    ];
  }

  String truncate(
    String text, {
    int length = 80,
    String omission = '...',
    int rightLength = 0,
  }) {
    if (length >= text.length) {
      return text;
    }
    return '${text.replaceRange(length - rightLength, text.length, omission)}${text.substring(text.length - rightLength)}';
  }

  String getTime() {
    String threeDigits(int n) {
      if (n >= 100) return '$n';
      if (n >= 10) return '0$n';
      return '00$n';
    }

    String twoDigits(int n) {
      if (n >= 10) return '$n';
      return '0$n';
    }

    final now = DateTime.now();
    final h = twoDigits(now.hour);
    final min = twoDigits(now.minute);
    final sec = twoDigits(now.second);
    final ms = threeDigits(now.millisecond);

    return '$h:$min:$sec.$ms';
  }
}
