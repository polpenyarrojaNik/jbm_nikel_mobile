// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationIndexScreenController)
const notificationIndexScreenControllerProvider =
    NotificationIndexScreenControllerProvider._();

final class NotificationIndexScreenControllerProvider
    extends
        $AsyncNotifierProvider<
          NotificationIndexScreenController,
          List<NotificationList>
        > {
  const NotificationIndexScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationIndexScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$notificationIndexScreenControllerHash();

  @$internal
  @override
  NotificationIndexScreenController create() =>
      NotificationIndexScreenController();
}

String _$notificationIndexScreenControllerHash() =>
    r'28cdd4eb08ae8fcfb27a8b6d76a88fd7d73608d3';

abstract class _$NotificationIndexScreenController
    extends $AsyncNotifier<List<NotificationList>> {
  FutureOr<List<NotificationList>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
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
    element.handleValue(ref, created);
  }
}
