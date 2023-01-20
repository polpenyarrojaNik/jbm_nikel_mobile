// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$VisitaIndexScreenControllerHash() =>
    r'6aa47f60efab2d24a7ea4a12cb55560850c78eec';

/// See also [VisitaIndexScreenController].
final visitaIndexScreenControllerProvider =
    AutoDisposeAsyncNotifierProvider<VisitaIndexScreenController, int>(
  VisitaIndexScreenController.new,
  name: r'visitaIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$VisitaIndexScreenControllerHash,
);
typedef VisitaIndexScreenControllerRef
    = AutoDisposeAsyncNotifierProviderRef<int>;

abstract class _$VisitaIndexScreenController
    extends AutoDisposeAsyncNotifier<int> {
  @override
  FutureOr<int> build();
}

String _$VisitaIndexScreenPaginatedControllerHash() =>
    r'652caea9461bb21cd5cf3b6e0e79c11f2f58da92';

/// See also [VisitaIndexScreenPaginatedController].
class VisitaIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        VisitaIndexScreenPaginatedController, List<Visita>> {
  VisitaIndexScreenPaginatedControllerProvider({
    required this.page,
  }) : super(
          () => VisitaIndexScreenPaginatedController()..page = page,
          from: visitaIndexScreenPaginatedControllerProvider,
          name: r'visitaIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$VisitaIndexScreenPaginatedControllerHash,
        );

  final int page;

  @override
  bool operator ==(Object other) {
    return other is VisitaIndexScreenPaginatedControllerProvider &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<List<Visita>> runNotifierBuild(
    covariant _$VisitaIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }
}

typedef VisitaIndexScreenPaginatedControllerRef
    = AutoDisposeAsyncNotifierProviderRef<List<Visita>>;

/// See also [VisitaIndexScreenPaginatedController].
final visitaIndexScreenPaginatedControllerProvider =
    VisitaIndexScreenPaginatedControllerFamily();

class VisitaIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<Visita>>> {
  VisitaIndexScreenPaginatedControllerFamily();

  VisitaIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return VisitaIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<VisitaIndexScreenPaginatedController,
      List<Visita>> getProviderOverride(
    covariant VisitaIndexScreenPaginatedControllerProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'visitaIndexScreenPaginatedControllerProvider';
}

abstract class _$VisitaIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Visita>> {
  late final int page;

  FutureOr<List<Visita>> build({
    required int page,
  });
}
