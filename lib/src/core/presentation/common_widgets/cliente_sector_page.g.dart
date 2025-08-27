// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_sector_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteSectorPageControllerHash() =>
    r'32c85416b980da1586965518b8d051959e33e833';

/// See also [ClienteSectorPageController].
@ProviderFor(ClienteSectorPageController)
final clienteSectorPageControllerProvider = AutoDisposeAsyncNotifierProvider<
    ClienteSectorPageController, List<Sector>>.internal(
  ClienteSectorPageController.new,
  name: r'clienteSectorPageControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clienteSectorPageControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClienteSectorPageController = AutoDisposeAsyncNotifier<List<Sector>>;
String _$upsertClienteImpHash() => r'f6687f39d939244a322adc28530949e36925ef3b';

/// See also [UpsertClienteImp].
@ProviderFor(UpsertClienteImp)
final upsertClienteImpProvider = AutoDisposeNotifierProvider<UpsertClienteImp,
    MutationState<Either<AppException, Unit>, ClienteImp>>.internal(
  UpsertClienteImp.new,
  name: r'upsertClienteImpProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$upsertClienteImpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UpsertClienteImp = AutoDisposeNotifier<
    MutationState<Either<AppException, Unit>, ClienteImp>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
