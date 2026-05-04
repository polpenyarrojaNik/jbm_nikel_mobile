// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationIndexScreenController)
final notificationIndexScreenControllerProvider =
    NotificationIndexScreenControllerFamily._();

final class NotificationIndexScreenControllerProvider
    extends
        $AsyncNotifierProvider<
          NotificationIndexScreenController,
          List<NotificationList>
        > {
  NotificationIndexScreenControllerProvider._({
    required NotificationIndexScreenControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'notificationIndexScreenControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$notificationIndexScreenControllerHash();

  @override
  String toString() {
    return r'notificationIndexScreenControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NotificationIndexScreenController create() =>
      NotificationIndexScreenController();

  @override
  bool operator ==(Object other) {
    return other is NotificationIndexScreenControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notificationIndexScreenControllerHash() =>
    r'17979c8a8752ef11599bfcaf97587715bb112037';

final class NotificationIndexScreenControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          NotificationIndexScreenController,
          AsyncValue<List<NotificationList>>,
          List<NotificationList>,
          FutureOr<List<NotificationList>>,
          int
        > {
  NotificationIndexScreenControllerFamily._()
    : super(
        retry: null,
        name: r'notificationIndexScreenControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NotificationIndexScreenControllerProvider call(int page) =>
      NotificationIndexScreenControllerProvider._(argument: page, from: this);

  @override
  String toString() => r'notificationIndexScreenControllerProvider';
}

abstract class _$NotificationIndexScreenController
    extends $AsyncNotifier<List<NotificationList>> {
  late final _$args = ref.$arg as int;
  int get page => _$args;

  FutureOr<List<NotificationList>> build(int page);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<NotificationList>>, List<NotificationList>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<NotificationList>>,
                List<NotificationList>
              >,
              AsyncValue<List<NotificationList>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(NotificationIndexCountController)
final notificationIndexCountControllerProvider =
    NotificationIndexCountControllerProvider._();

final class NotificationIndexCountControllerProvider
    extends $AsyncNotifierProvider<NotificationIndexCountController, int> {
  NotificationIndexCountControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationIndexCountControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationIndexCountControllerHash();

  @$internal
  @override
  NotificationIndexCountController create() =>
      NotificationIndexCountController();
}

String _$notificationIndexCountControllerHash() =>
    r'5654de210940b6979d52715dcc3cd789f047a905';

abstract class _$NotificationIndexCountController extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
