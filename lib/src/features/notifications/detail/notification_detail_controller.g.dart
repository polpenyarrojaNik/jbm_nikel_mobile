// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationDetailScreenController)
const notificationDetailScreenControllerProvider =
    NotificationDetailScreenControllerFamily._();

final class NotificationDetailScreenControllerProvider
    extends
        $AsyncNotifierProvider<
          NotificationDetailScreenController,
          Notificacion
        > {
  const NotificationDetailScreenControllerProvider._({
    required NotificationDetailScreenControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'notificationDetailScreenControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$notificationDetailScreenControllerHash();

  @override
  String toString() {
    return r'notificationDetailScreenControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NotificationDetailScreenController create() =>
      NotificationDetailScreenController();

  @override
  bool operator ==(Object other) {
    return other is NotificationDetailScreenControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notificationDetailScreenControllerHash() =>
    r'47963f362d989c00dc4989f5bb2509a865417855';

final class NotificationDetailScreenControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          NotificationDetailScreenController,
          AsyncValue<Notificacion>,
          Notificacion,
          FutureOr<Notificacion>,
          String
        > {
  const NotificationDetailScreenControllerFamily._()
    : super(
        retry: null,
        name: r'notificationDetailScreenControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NotificationDetailScreenControllerProvider call(String id) =>
      NotificationDetailScreenControllerProvider._(argument: id, from: this);

  @override
  String toString() => r'notificationDetailScreenControllerProvider';
}

abstract class _$NotificationDetailScreenController
    extends $AsyncNotifier<Notificacion> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  FutureOr<Notificacion> build(String id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<Notificacion>, Notificacion>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Notificacion>, Notificacion>,
              AsyncValue<Notificacion>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
