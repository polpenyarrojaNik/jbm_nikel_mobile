// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_usuario_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(remoteUsuarioRepository)
const remoteUsuarioRepositoryProvider = RemoteUsuarioRepositoryProvider._();

final class RemoteUsuarioRepositoryProvider
    extends
        $FunctionalProvider<
          RemoteUsuarioRepository,
          RemoteUsuarioRepository,
          RemoteUsuarioRepository
        >
    with $Provider<RemoteUsuarioRepository> {
  const RemoteUsuarioRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteUsuarioRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteUsuarioRepositoryHash();

  @$internal
  @override
  $ProviderElement<RemoteUsuarioRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoteUsuarioRepository create(Ref ref) {
    return remoteUsuarioRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoteUsuarioRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoteUsuarioRepository>(value),
    );
  }
}

String _$remoteUsuarioRepositoryHash() =>
    r'ada6ab0c1121393df0880167b202e672c5a6ad8e';
