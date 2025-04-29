// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_text_form_field.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$phoneTextFormBuilderControllerHash() =>
    r'1c15728ddafb7940c73b7520d163ce1056bcd10f';

/// See also [PhoneTextFormBuilderController].
@ProviderFor(PhoneTextFormBuilderController)
final phoneTextFormBuilderControllerProvider = AutoDisposeNotifierProvider<
  PhoneTextFormBuilderController,
  String?
>.internal(
  PhoneTextFormBuilderController.new,
  name: r'phoneTextFormBuilderControllerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$phoneTextFormBuilderControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PhoneTextFormBuilderController = AutoDisposeNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

// **************************************************************************
// RiverpodMutationsGenerator
// **************************************************************************

extension PhoneTextFormBuilderControllerMutationExtension
    on AutoDisposeNotifierProvider<PhoneTextFormBuilderController, String?> {
  Refreshable<VerifyExistingPhoneMutation> get verifyExistingPhone =>
      _verifyExistingPhoneProvider;
}

final _verifyExistingPhoneProvider = Provider.autoDispose((ref) {
  final notifier = ref.watch(phoneTextFormBuilderControllerProvider.notifier);
  return VerifyExistingPhoneMutation(
    (newState) => ref.state = newState,
    notifier.verifyExistingPhone,
  );
}, dependencies: [phoneTextFormBuilderControllerProvider]);

typedef VerifyExistingPhoneSignature =
    Future<ClienteTelefono?> Function(String value);
typedef VerifyExistingPhoneStateSetter =
    void Function(VerifyExistingPhoneMutation newState);

sealed class VerifyExistingPhoneMutation
    with AsyncMutation, MutationResult<ClienteTelefono?> {
  factory VerifyExistingPhoneMutation(
    VerifyExistingPhoneStateSetter updateState,
    VerifyExistingPhoneSignature fn,
  ) = VerifyExistingPhoneMutationIdle._;

  VerifyExistingPhoneMutation._(this._updateState, this._fn);

  final VerifyExistingPhoneStateSetter _updateState;
  final VerifyExistingPhoneSignature _fn;

  Object? get error;
  StackTrace? get stackTrace;

  Future<void> call(String value) async {
    try {
      _updateState(VerifyExistingPhoneMutationLoading.from(this));
      final res = await _fn(value);
      _updateState(VerifyExistingPhoneMutationSuccess.from(this, res));
    } catch (e, s) {
      _updateState(
        VerifyExistingPhoneMutationFailure.from(this, error: e, stackTrace: s),
      );
    }
  }
}

final class VerifyExistingPhoneMutationIdle extends VerifyExistingPhoneMutation
    with MutationIdle {
  VerifyExistingPhoneMutationIdle._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory VerifyExistingPhoneMutationIdle.from(
    VerifyExistingPhoneMutation other,
  ) => VerifyExistingPhoneMutationIdle._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: other.result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class VerifyExistingPhoneMutationLoading
    extends VerifyExistingPhoneMutation
    with MutationLoading {
  VerifyExistingPhoneMutationLoading._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory VerifyExistingPhoneMutationLoading.from(
    VerifyExistingPhoneMutation other,
  ) => VerifyExistingPhoneMutationLoading._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: other.result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class VerifyExistingPhoneMutationSuccess
    extends VerifyExistingPhoneMutation
    with MutationSuccessResult<ClienteTelefono?> {
  VerifyExistingPhoneMutationSuccess._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    required this.result,
  }) : super._();

  factory VerifyExistingPhoneMutationSuccess.from(
    VerifyExistingPhoneMutation other,
    ClienteTelefono? result,
  ) => VerifyExistingPhoneMutationSuccess._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  final ClienteTelefono? result;
}

final class VerifyExistingPhoneMutationFailure
    extends VerifyExistingPhoneMutation
    with MutationFailure {
  VerifyExistingPhoneMutationFailure._(
    super._updateState,
    super._fn, {
    required this.error,
    required this.stackTrace,
    this.result,
  }) : super._();

  factory VerifyExistingPhoneMutationFailure.from(
    VerifyExistingPhoneMutation other, {
    required Object error,
    required StackTrace stackTrace,
  }) => VerifyExistingPhoneMutationFailure._(
    other._updateState,
    other._fn,
    error: error,
    stackTrace: stackTrace,
    result: other.result,
  );

  @override
  final Object error;

  @override
  final StackTrace stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}
