// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationNotifier)
final notificationProvider = NotificationNotifierFamily._();

final class NotificationNotifierProvider
    extends $AsyncNotifierProvider<NotificationNotifier, HaveNotification?> {
  NotificationNotifierProvider._({
    required NotificationNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'notificationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$notificationNotifierHash();

  @override
  String toString() {
    return r'notificationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NotificationNotifier create() => NotificationNotifier();

  @override
  bool operator ==(Object other) {
    return other is NotificationNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notificationNotifierHash() =>
    r'6dc359d1f74e22f33262084331718b80e126081d';

final class NotificationNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NotificationNotifier,
          AsyncValue<HaveNotification?>,
          HaveNotification?,
          FutureOr<HaveNotification?>,
          String
        > {
  NotificationNotifierFamily._()
    : super(
        retry: null,
        name: r'notificationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NotificationNotifierProvider call(String titleScreen) =>
      NotificationNotifierProvider._(argument: titleScreen, from: this);

  @override
  String toString() => r'notificationProvider';
}

abstract class _$NotificationNotifier
    extends $AsyncNotifier<HaveNotification?> {
  late final _$args = ref.$arg as String;
  String get titleScreen => _$args;

  FutureOr<HaveNotification?> build(String titleScreen);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<HaveNotification?>, HaveNotification?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<HaveNotification?>, HaveNotification?>,
              AsyncValue<HaveNotification?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
