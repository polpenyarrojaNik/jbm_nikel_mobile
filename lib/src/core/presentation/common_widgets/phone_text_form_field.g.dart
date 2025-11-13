// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_text_form_field.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PhoneTextFormBuilderController)
const phoneTextFormBuilderControllerProvider =
    PhoneTextFormBuilderControllerProvider._();

final class PhoneTextFormBuilderControllerProvider
    extends $NotifierProvider<PhoneTextFormBuilderController, String?> {
  const PhoneTextFormBuilderControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'phoneTextFormBuilderControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$phoneTextFormBuilderControllerHash();

  @$internal
  @override
  PhoneTextFormBuilderController create() => PhoneTextFormBuilderController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$phoneTextFormBuilderControllerHash() =>
    r'7ee9bb9f93cc2b131e1b7c17a691638789ac418e';

abstract class _$PhoneTextFormBuilderController extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
