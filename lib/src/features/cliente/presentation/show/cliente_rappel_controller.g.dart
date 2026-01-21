// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_rappel_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteRappelListById)
final clienteRappelListByIdProvider = ClienteRappelListByIdFamily._();

final class ClienteRappelListByIdProvider
    extends $AsyncNotifierProvider<ClienteRappelListById, List<ClienteRappel>> {
  ClienteRappelListByIdProvider._({
    required ClienteRappelListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteRappelListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteRappelListByIdHash();

  @override
  String toString() {
    return r'clienteRappelListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteRappelListById create() => ClienteRappelListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteRappelListByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteRappelListByIdHash() =>
    r'4c79e2324e5babd2e8e00f7e520ca9275270637d';

final class ClienteRappelListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteRappelListById,
          AsyncValue<List<ClienteRappel>>,
          List<ClienteRappel>,
          FutureOr<List<ClienteRappel>>,
          String
        > {
  ClienteRappelListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteRappelListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteRappelListByIdProvider call(String clienteId) =>
      ClienteRappelListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteRappelListByIdProvider';
}

abstract class _$ClienteRappelListById
    extends $AsyncNotifier<List<ClienteRappel>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteRappel>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<ClienteRappel>>, List<ClienteRappel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ClienteRappel>>, List<ClienteRappel>>,
              AsyncValue<List<ClienteRappel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
