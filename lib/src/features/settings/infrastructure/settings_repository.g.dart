// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(settingsRepository)
const settingsRepositoryProvider = SettingsRepositoryProvider._();

final class SettingsRepositoryProvider
    extends
        $FunctionalProvider<
          SettingsRepository,
          SettingsRepository,
          SettingsRepository
        >
    with $Provider<SettingsRepository> {
  const SettingsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsRepositoryHash();

  @$internal
  @override
  $ProviderElement<SettingsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsRepository create(Ref ref) {
    return settingsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsRepository>(value),
    );
  }
}

String _$settingsRepositoryHash() =>
    r'1834bcc633f6460b6b031a7c723c1996aea2d8e4';

@ProviderFor(GetPackageInfo)
const getPackageInfoProvider = GetPackageInfoProvider._();

final class GetPackageInfoProvider
    extends $AsyncNotifierProvider<GetPackageInfo, PackageInfo> {
  const GetPackageInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPackageInfoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPackageInfoHash();

  @$internal
  @override
  GetPackageInfo create() => GetPackageInfo();
}

String _$getPackageInfoHash() => r'04068055d63e5f1b60bf44ee7a4d39eb5a99f00e';

abstract class _$GetPackageInfo extends $AsyncNotifier<PackageInfo> {
  FutureOr<PackageInfo> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<PackageInfo>, PackageInfo>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PackageInfo>, PackageInfo>,
              AsyncValue<PackageInfo>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
