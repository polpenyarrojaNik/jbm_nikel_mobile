// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_dio_interceptor.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(usuarioDioInterceptor)
const usuarioDioInterceptorProvider = UsuarioDioInterceptorProvider._();

final class UsuarioDioInterceptorProvider
    extends
        $FunctionalProvider<
          UsuarioDioInterceptor,
          UsuarioDioInterceptor,
          UsuarioDioInterceptor
        >
    with $Provider<UsuarioDioInterceptor> {
  const UsuarioDioInterceptorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usuarioDioInterceptorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usuarioDioInterceptorHash();

  @$internal
  @override
  $ProviderElement<UsuarioDioInterceptor> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UsuarioDioInterceptor create(Ref ref) {
    return usuarioDioInterceptor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UsuarioDioInterceptor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UsuarioDioInterceptor>(value),
    );
  }
}

String _$usuarioDioInterceptorHash() =>
    r'1b4691a70b8d474444d0cd7f80a9769c9bab6243';
