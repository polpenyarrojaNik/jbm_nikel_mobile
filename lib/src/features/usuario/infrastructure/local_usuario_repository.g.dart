// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_usuario_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(localUsuarioRepository)
const localUsuarioRepositoryProvider = LocalUsuarioRepositoryProvider._();

final class LocalUsuarioRepositoryProvider
    extends
        $FunctionalProvider<
          LocalUsuarioRepository,
          LocalUsuarioRepository,
          LocalUsuarioRepository
        >
    with $Provider<LocalUsuarioRepository> {
  const LocalUsuarioRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localUsuarioRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localUsuarioRepositoryHash();

  @$internal
  @override
  $ProviderElement<LocalUsuarioRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LocalUsuarioRepository create(Ref ref) {
    return localUsuarioRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalUsuarioRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalUsuarioRepository>(value),
    );
  }
}

String _$localUsuarioRepositoryHash() =>
    r'223c481abf301122a8031b540cb0b65dfd64996e';
