// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_local_database_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteLocalDatabaseController)
const deleteLocalDatabaseControllerProvider =
    DeleteLocalDatabaseControllerProvider._();

final class DeleteLocalDatabaseControllerProvider
    extends $AsyncNotifierProvider<DeleteLocalDatabaseController, void> {
  const DeleteLocalDatabaseControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteLocalDatabaseControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteLocalDatabaseControllerHash();

  @$internal
  @override
  DeleteLocalDatabaseController create() => DeleteLocalDatabaseController();
}

String _$deleteLocalDatabaseControllerHash() =>
    r'd478e78c931196fe995b103b726e217dcf4c954d';

abstract class _$DeleteLocalDatabaseController extends $AsyncNotifier<void> {
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
