// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_edit_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CustomerAddressSearchQueryParamsController)
const customerAddressSearchQueryParamsControllerProvider =
    CustomerAddressSearchQueryParamsControllerProvider._();

final class CustomerAddressSearchQueryParamsControllerProvider
    extends
        $NotifierProvider<CustomerAddressSearchQueryParamsController, String> {
  const CustomerAddressSearchQueryParamsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'customerAddressSearchQueryParamsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$customerAddressSearchQueryParamsControllerHash();

  @$internal
  @override
  CustomerAddressSearchQueryParamsController create() =>
      CustomerAddressSearchQueryParamsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$customerAddressSearchQueryParamsControllerHash() =>
    r'fd9d31b45a7649be3f10e750c1cb86a123c7ab99';

abstract class _$CustomerAddressSearchQueryParamsController
    extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
