// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_factura_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteFacturaCountController)
const clienteFacturaCountControllerProvider =
    ClienteFacturaCountControllerFamily._();

final class ClienteFacturaCountControllerProvider
    extends $AsyncNotifierProvider<ClienteFacturaCountController, int> {
  const ClienteFacturaCountControllerProvider._({
    required ClienteFacturaCountControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteFacturaCountControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteFacturaCountControllerHash();

  @override
  String toString() {
    return r'clienteFacturaCountControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteFacturaCountController create() => ClienteFacturaCountController();

  @override
  bool operator ==(Object other) {
    return other is ClienteFacturaCountControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteFacturaCountControllerHash() =>
    r'09d3279b681170606aa7377d0c7f0c0018efbabc';

final class ClienteFacturaCountControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteFacturaCountController,
          AsyncValue<int>,
          int,
          FutureOr<int>,
          String
        > {
  const ClienteFacturaCountControllerFamily._()
    : super(
        retry: null,
        name: r'clienteFacturaCountControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteFacturaCountControllerProvider call(String clienteId) =>
      ClienteFacturaCountControllerProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteFacturaCountControllerProvider';
}

abstract class _$ClienteFacturaCountController extends $AsyncNotifier<int> {
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

@ProviderFor(ClienteFacturaPaginationController)
const clienteFacturaPaginationControllerProvider =
    ClienteFacturaPaginationControllerFamily._();

final class ClienteFacturaPaginationControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteFacturaPaginationController,
          List<ClienteFactura>
        > {
  const ClienteFacturaPaginationControllerProvider._({
    required ClienteFacturaPaginationControllerFamily super.from,
    required ({int page, String customerId}) super.argument,
  }) : super(
         retry: null,
         name: r'clienteFacturaPaginationControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteFacturaPaginationControllerHash();

  @override
  String toString() {
    return r'clienteFacturaPaginationControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ClienteFacturaPaginationController create() =>
      ClienteFacturaPaginationController();

  @override
  bool operator ==(Object other) {
    return other is ClienteFacturaPaginationControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteFacturaPaginationControllerHash() =>
    r'6bfdd1bf093e0d3a130df326a9335b1b6721c95f';

final class ClienteFacturaPaginationControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteFacturaPaginationController,
          AsyncValue<List<ClienteFactura>>,
          List<ClienteFactura>,
          FutureOr<List<ClienteFactura>>,
          ({int page, String customerId})
        > {
  const ClienteFacturaPaginationControllerFamily._()
    : super(
        retry: null,
        name: r'clienteFacturaPaginationControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteFacturaPaginationControllerProvider call({
    required int page,
    required String customerId,
  }) => ClienteFacturaPaginationControllerProvider._(
    argument: (page: page, customerId: customerId),
    from: this,
  );

  @override
  String toString() => r'clienteFacturaPaginationControllerProvider';
}

abstract class _$ClienteFacturaPaginationController
    extends $AsyncNotifier<List<ClienteFactura>> {
  late final _$args = ref.$arg as ({int page, String customerId});
  int get page => _$args.page;
  String get customerId => _$args.customerId;

  FutureOr<List<ClienteFactura>> build({
    required int page,
    required String customerId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(page: _$args.page, customerId: _$args.customerId);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteFactura>>, List<ClienteFactura>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteFactura>>,
                List<ClienteFactura>
              >,
              AsyncValue<List<ClienteFactura>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteFacturaDocumentController)
const clienteFacturaDocumentControllerProvider =
    ClienteFacturaDocumentControllerFamily._();

final class ClienteFacturaDocumentControllerProvider
    extends $NotifierProvider<ClienteFacturaDocumentController, void> {
  const ClienteFacturaDocumentControllerProvider._({
    required ClienteFacturaDocumentControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteFacturaDocumentControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteFacturaDocumentControllerHash();

  @override
  String toString() {
    return r'clienteFacturaDocumentControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteFacturaDocumentController create() =>
      ClienteFacturaDocumentController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteFacturaDocumentControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteFacturaDocumentControllerHash() =>
    r'965f3863e6b5321f532899e2c12ce5d9518c3620';

final class ClienteFacturaDocumentControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteFacturaDocumentController,
          void,
          void,
          void,
          String
        > {
  const ClienteFacturaDocumentControllerFamily._()
    : super(
        retry: null,
        name: r'clienteFacturaDocumentControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteFacturaDocumentControllerProvider call({required String facturaId}) =>
      ClienteFacturaDocumentControllerProvider._(
        argument: facturaId,
        from: this,
      );

  @override
  String toString() => r'clienteFacturaDocumentControllerProvider';
}

abstract class _$ClienteFacturaDocumentController extends $Notifier<void> {
  late final _$args = ref.$arg as String;
  String get facturaId => _$args;

  void build({required String facturaId});
  @$mustCallSuper
  @override
  void runBuild() {
    build(facturaId: _$args);
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
