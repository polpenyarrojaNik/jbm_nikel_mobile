// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crear_csv_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CrearCsvController)
const crearCsvControllerProvider = CrearCsvControllerProvider._();

final class CrearCsvControllerProvider
    extends $AsyncNotifierProvider<CrearCsvController, void> {
  const CrearCsvControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'crearCsvControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$crearCsvControllerHash();

  @$internal
  @override
  CrearCsvController create() => CrearCsvController();
}

String _$crearCsvControllerHash() =>
    r'97a5d12f361c4572df46fdd22ceb9c40dc9596cd';

abstract class _$CrearCsvController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
