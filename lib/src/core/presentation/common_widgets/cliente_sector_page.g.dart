// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_sector_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteSectorPageController)
const clienteSectorPageControllerProvider =
    ClienteSectorPageControllerProvider._();

final class ClienteSectorPageControllerProvider
    extends $AsyncNotifierProvider<ClienteSectorPageController, List<Sector>> {
  const ClienteSectorPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteSectorPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteSectorPageControllerHash();

  @$internal
  @override
  ClienteSectorPageController create() => ClienteSectorPageController();
}

String _$clienteSectorPageControllerHash() =>
    r'32c85416b980da1586965518b8d051959e33e833';

abstract class _$ClienteSectorPageController
    extends $AsyncNotifier<List<Sector>> {
  FutureOr<List<Sector>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Sector>>, List<Sector>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Sector>>, List<Sector>>,
              AsyncValue<List<Sector>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
