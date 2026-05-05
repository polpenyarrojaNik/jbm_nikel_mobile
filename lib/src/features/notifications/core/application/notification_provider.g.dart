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
    extends $AsyncNotifierProvider<NotificationNotifier, String?> {
  NotificationNotifierProvider._({
    required NotificationNotifierFamily super.from,
    required GlobalKey<ScaffoldState> super.argument,
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
    r'6a19334079b5fea0ef9f735e62e04237eebd6bc0';

final class NotificationNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NotificationNotifier,
          AsyncValue<String?>,
          String?,
          FutureOr<String?>,
          GlobalKey<ScaffoldState>
        > {
  NotificationNotifierFamily._()
    : super(
        retry: null,
        name: r'notificationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NotificationNotifierProvider call(GlobalKey<ScaffoldState> scaffoldKey) =>
      NotificationNotifierProvider._(argument: scaffoldKey, from: this);

  @override
  String toString() => r'notificationProvider';
}

abstract class _$NotificationNotifier extends $AsyncNotifier<String?> {
  late final _$args = ref.$arg as GlobalKey<ScaffoldState>;
  GlobalKey<ScaffoldState> get scaffoldKey => _$args;

  FutureOr<String?> build(GlobalKey<ScaffoldState> scaffoldKey);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
