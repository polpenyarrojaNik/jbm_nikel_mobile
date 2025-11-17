// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_database_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ExportDatabaseController)
const exportDatabaseControllerProvider = ExportDatabaseControllerProvider._();

final class ExportDatabaseControllerProvider
    extends $AsyncNotifierProvider<ExportDatabaseController, void> {
  const ExportDatabaseControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'exportDatabaseControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$exportDatabaseControllerHash();

  @$internal
  @override
  ExportDatabaseController create() => ExportDatabaseController();
}

String _$exportDatabaseControllerHash() =>
    r'b66f56c0027d75af903f3316496cba60ed65c36d';

abstract class _$ExportDatabaseController extends $AsyncNotifier<void> {
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
