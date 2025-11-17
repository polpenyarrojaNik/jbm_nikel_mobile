// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_database_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteDatabaseController)
const deleteDatabaseControllerProvider = DeleteDatabaseControllerProvider._();

final class DeleteDatabaseControllerProvider
    extends $AsyncNotifierProvider<DeleteDatabaseController, void> {
  const DeleteDatabaseControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteDatabaseControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteDatabaseControllerHash();

  @$internal
  @override
  DeleteDatabaseController create() => DeleteDatabaseController();
}

String _$deleteDatabaseControllerHash() =>
    r'6b9c8a70584f7710fed911d834bb703f53f5e80c';

abstract class _$DeleteDatabaseController extends $AsyncNotifier<void> {
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
