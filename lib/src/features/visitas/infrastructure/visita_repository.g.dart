// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(visitaRepository)
const visitaRepositoryProvider = VisitaRepositoryProvider._();

final class VisitaRepositoryProvider
    extends
        $FunctionalProvider<
          VisitaRepository,
          VisitaRepository,
          VisitaRepository
        >
    with $Provider<VisitaRepository> {
  const VisitaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'visitaRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$visitaRepositoryHash();

  @$internal
  @override
  $ProviderElement<VisitaRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VisitaRepository create(Ref ref) {
    return visitaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VisitaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VisitaRepository>(value),
    );
  }
}

String _$visitaRepositoryHash() => r'6c9248514c6ae0d1340b2ea6db54a3c1401ae8d2';

@ProviderFor(VisitaLastSyncDate)
const visitaLastSyncDateProvider = VisitaLastSyncDateProvider._();

final class VisitaLastSyncDateProvider
    extends $AsyncNotifierProvider<VisitaLastSyncDate, DateTime> {
  const VisitaLastSyncDateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'visitaLastSyncDateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$visitaLastSyncDateHash();

  @$internal
  @override
  VisitaLastSyncDate create() => VisitaLastSyncDate();
}

String _$visitaLastSyncDateHash() =>
    r'615262b49cf293365cc9889b5954273376953761';

abstract class _$VisitaLastSyncDate extends $AsyncNotifier<DateTime> {
  FutureOr<DateTime> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<DateTime>, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DateTime>, DateTime>,
              AsyncValue<DateTime>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
