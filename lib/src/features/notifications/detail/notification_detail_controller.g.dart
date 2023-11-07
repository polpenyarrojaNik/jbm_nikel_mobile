// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationDetailScreenControllerHash() =>
    r'47963f362d989c00dc4989f5bb2509a865417855';

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

abstract class _$NotificationDetailScreenController
    extends BuildlessAutoDisposeAsyncNotifier<Notificacion> {
  late final String id;

  FutureOr<Notificacion> build(
    String id,
  );
}

/// See also [NotificationDetailScreenController].
@ProviderFor(NotificationDetailScreenController)
const notificationDetailScreenControllerProvider =
    NotificationDetailScreenControllerFamily();

/// See also [NotificationDetailScreenController].
class NotificationDetailScreenControllerFamily
    extends Family<AsyncValue<Notificacion>> {
  /// See also [NotificationDetailScreenController].
  const NotificationDetailScreenControllerFamily();

  /// See also [NotificationDetailScreenController].
  NotificationDetailScreenControllerProvider call(
    String id,
  ) {
    return NotificationDetailScreenControllerProvider(
      id,
    );
  }

  @override
  NotificationDetailScreenControllerProvider getProviderOverride(
    covariant NotificationDetailScreenControllerProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'notificationDetailScreenControllerProvider';
}

/// See also [NotificationDetailScreenController].
class NotificationDetailScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        NotificationDetailScreenController, Notificacion> {
  /// See also [NotificationDetailScreenController].
  NotificationDetailScreenControllerProvider(
    String id,
  ) : this._internal(
          () => NotificationDetailScreenController()..id = id,
          from: notificationDetailScreenControllerProvider,
          name: r'notificationDetailScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationDetailScreenControllerHash,
          dependencies: NotificationDetailScreenControllerFamily._dependencies,
          allTransitiveDependencies: NotificationDetailScreenControllerFamily
              ._allTransitiveDependencies,
          id: id,
        );

  NotificationDetailScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<Notificacion> runNotifierBuild(
    covariant NotificationDetailScreenController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(NotificationDetailScreenController Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationDetailScreenControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<NotificationDetailScreenController,
      Notificacion> createElement() {
    return _NotificationDetailScreenControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationDetailScreenControllerProvider &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotificationDetailScreenControllerRef
    on AutoDisposeAsyncNotifierProviderRef<Notificacion> {
  /// The parameter `id` of this provider.
  String get id;
}

class _NotificationDetailScreenControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        NotificationDetailScreenController,
        Notificacion> with NotificationDetailScreenControllerRef {
  _NotificationDetailScreenControllerProviderElement(super.provider);

  @override
  String get id => (origin as NotificationDetailScreenControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
