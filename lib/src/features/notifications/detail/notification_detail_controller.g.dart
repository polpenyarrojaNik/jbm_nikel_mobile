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

  Future<Notificacion> build(
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
    this.id,
  ) : super.internal(
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
        );

  final String id;

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

  @override
  Future<Notificacion> runNotifierBuild(
    covariant NotificationDetailScreenController notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
