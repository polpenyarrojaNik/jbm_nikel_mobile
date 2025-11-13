// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expedicion_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(expedicionRepository)
const expedicionRepositoryProvider = ExpedicionRepositoryProvider._();

final class ExpedicionRepositoryProvider
    extends
        $FunctionalProvider<
          ExpedicionRepository,
          ExpedicionRepository,
          ExpedicionRepository
        >
    with $Provider<ExpedicionRepository> {
  const ExpedicionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expedicionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$expedicionRepositoryHash();

  @$internal
  @override
  $ProviderElement<ExpedicionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ExpedicionRepository create(Ref ref) {
    return expedicionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExpedicionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExpedicionRepository>(value),
    );
  }
}

String _$expedicionRepositoryHash() =>
    r'a69657bafcb843b0c7371071f7807d92bb14d1c8';
