// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_database_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(initDatabaseService)
const initDatabaseServiceProvider = InitDatabaseServiceProvider._();

final class InitDatabaseServiceProvider
    extends
        $FunctionalProvider<
          InitDatabaseService,
          InitDatabaseService,
          InitDatabaseService
        >
    with $Provider<InitDatabaseService> {
  const InitDatabaseServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initDatabaseServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initDatabaseServiceHash();

  @$internal
  @override
  $ProviderElement<InitDatabaseService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InitDatabaseService create(Ref ref) {
    return initDatabaseService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InitDatabaseService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InitDatabaseService>(value),
    );
  }
}

String _$initDatabaseServiceHash() =>
    r'153b09dabcaae5ecd7aa6557ef2e98facdced6ba';
