// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_albaran_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteAlbaranCountController)
const clienteAlbaranCountControllerProvider =
    ClienteAlbaranCountControllerFamily._();

final class ClienteAlbaranCountControllerProvider
    extends $AsyncNotifierProvider<ClienteAlbaranCountController, int> {
  const ClienteAlbaranCountControllerProvider._({
    required ClienteAlbaranCountControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteAlbaranCountControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteAlbaranCountControllerHash();

  @override
  String toString() {
    return r'clienteAlbaranCountControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteAlbaranCountController create() => ClienteAlbaranCountController();

  @override
  bool operator ==(Object other) {
    return other is ClienteAlbaranCountControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteAlbaranCountControllerHash() =>
    r'ab29f96230e56cc02f9070f6907e7263e5fc173c';

final class ClienteAlbaranCountControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteAlbaranCountController,
          AsyncValue<int>,
          int,
          FutureOr<int>,
          String
        > {
  const ClienteAlbaranCountControllerFamily._()
    : super(
        retry: null,
        name: r'clienteAlbaranCountControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteAlbaranCountControllerProvider call(String clienteId) =>
      ClienteAlbaranCountControllerProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteAlbaranCountControllerProvider';
}

abstract class _$ClienteAlbaranCountController extends $AsyncNotifier<int> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<int> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteAlbaranPaginationController)
const clienteAlbaranPaginationControllerProvider =
    ClienteAlbaranPaginationControllerFamily._();

final class ClienteAlbaranPaginationControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteAlbaranPaginationController,
          List<ClienteAlbaran>
        > {
  const ClienteAlbaranPaginationControllerProvider._({
    required ClienteAlbaranPaginationControllerFamily super.from,
    required ({int page, String customerId}) super.argument,
  }) : super(
         retry: null,
         name: r'clienteAlbaranPaginationControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteAlbaranPaginationControllerHash();

  @override
  String toString() {
    return r'clienteAlbaranPaginationControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ClienteAlbaranPaginationController create() =>
      ClienteAlbaranPaginationController();

  @override
  bool operator ==(Object other) {
    return other is ClienteAlbaranPaginationControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteAlbaranPaginationControllerHash() =>
    r'03235fdc6b5214141816e23867a2fe7b869f4baa';

final class ClienteAlbaranPaginationControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteAlbaranPaginationController,
          AsyncValue<List<ClienteAlbaran>>,
          List<ClienteAlbaran>,
          FutureOr<List<ClienteAlbaran>>,
          ({int page, String customerId})
        > {
  const ClienteAlbaranPaginationControllerFamily._()
    : super(
        retry: null,
        name: r'clienteAlbaranPaginationControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteAlbaranPaginationControllerProvider call({
    required int page,
    required String customerId,
  }) => ClienteAlbaranPaginationControllerProvider._(
    argument: (page: page, customerId: customerId),
    from: this,
  );

  @override
  String toString() => r'clienteAlbaranPaginationControllerProvider';
}

abstract class _$ClienteAlbaranPaginationController
    extends $AsyncNotifier<List<ClienteAlbaran>> {
  late final _$args = ref.$arg as ({int page, String customerId});
  int get page => _$args.page;
  String get customerId => _$args.customerId;

  FutureOr<List<ClienteAlbaran>> build({
    required int page,
    required String customerId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(page: _$args.page, customerId: _$args.customerId);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteAlbaran>>, List<ClienteAlbaran>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteAlbaran>>,
                List<ClienteAlbaran>
              >,
              AsyncValue<List<ClienteAlbaran>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteAlbaranDocumentController)
const clienteAlbaranDocumentControllerProvider =
    ClienteAlbaranDocumentControllerFamily._();

final class ClienteAlbaranDocumentControllerProvider
    extends $NotifierProvider<ClienteAlbaranDocumentController, void> {
  const ClienteAlbaranDocumentControllerProvider._({
    required ClienteAlbaranDocumentControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteAlbaranDocumentControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteAlbaranDocumentControllerHash();

  @override
  String toString() {
    return r'clienteAlbaranDocumentControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteAlbaranDocumentController create() =>
      ClienteAlbaranDocumentController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteAlbaranDocumentControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteAlbaranDocumentControllerHash() =>
    r'e2d4b949539c4c1a6aa70584c1765d20f47d303a';

final class ClienteAlbaranDocumentControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteAlbaranDocumentController,
          void,
          void,
          void,
          String
        > {
  const ClienteAlbaranDocumentControllerFamily._()
    : super(
        retry: null,
        name: r'clienteAlbaranDocumentControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteAlbaranDocumentControllerProvider call({required String albaranId}) =>
      ClienteAlbaranDocumentControllerProvider._(
        argument: albaranId,
        from: this,
      );

  @override
  String toString() => r'clienteAlbaranDocumentControllerProvider';
}

abstract class _$ClienteAlbaranDocumentController extends $Notifier<void> {
  late final _$args = ref.$arg as String;
  String get albaranId => _$args;

  void build({required String albaranId});
  @$mustCallSuper
  @override
  void runBuild() {
    build(albaranId: _$args);
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
