// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_address_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(suggestionAddressRepository)
const suggestionAddressRepositoryProvider =
    SuggestionAddressRepositoryProvider._();

final class SuggestionAddressRepositoryProvider
    extends
        $FunctionalProvider<
          SuggestionAddressRepository,
          SuggestionAddressRepository,
          SuggestionAddressRepository
        >
    with $Provider<SuggestionAddressRepository> {
  const SuggestionAddressRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'suggestionAddressRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$suggestionAddressRepositoryHash();

  @$internal
  @override
  $ProviderElement<SuggestionAddressRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SuggestionAddressRepository create(Ref ref) {
    return suggestionAddressRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SuggestionAddressRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SuggestionAddressRepository>(value),
    );
  }
}

String _$suggestionAddressRepositoryHash() =>
    r'202e7180b2dc5073ac3eca9a017f2a3deed6b515';
