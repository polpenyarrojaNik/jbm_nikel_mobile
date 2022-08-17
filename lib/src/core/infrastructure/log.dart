import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

final log = Logger('JBMLogger');

class RiverpodLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log.info('Provider: ${provider.name ?? provider.runtimeType}');
    log.info('          newValue: $newValue');
  }
}
