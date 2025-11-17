// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(usuarioService)
const usuarioServiceProvider = UsuarioServiceProvider._();

final class UsuarioServiceProvider
    extends $FunctionalProvider<UsuarioService, UsuarioService, UsuarioService>
    with $Provider<UsuarioService> {
  const UsuarioServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioServiceHash();

  @$internal
  @override
  $ProviderElement<UsuarioService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UsuarioService create(Ref ref) {
    return usuarioService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioService>(value),
    );
  }
}

String _$usuarioServiceHash() => r'18f79399b0619e625e827d539958efcae113b304';
