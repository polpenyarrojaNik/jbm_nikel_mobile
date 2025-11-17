// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logRepository)
const logRepositoryProvider = LogRepositoryProvider._();

final class LogRepositoryProvider
    extends $FunctionalProvider<LogRepository, LogRepository, LogRepository>
    with $Provider<LogRepository> {
  const LogRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logRepositoryHash();

  @$internal
  @override
  $ProviderElement<LogRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogRepository create(Ref ref) {
    return logRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogRepository>(value),
    );
  }
}

String _$logRepositoryHash() => r'32ba057560b4f8d1c1da359b077ffa540860311a';
