import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {Key? key,
      required this.titleText,
      required this.entityId,
      required this.appRouteValue})
      : super(key: key);

  final String titleText;
  final String entityId;
  final AppRoute appRouteValue;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => navigateAppRouteValue(context, appRouteValue, entityId),
      child: Text(titleText),
    );
  }

  void navigateAppRouteValue(
      BuildContext context, AppRoute appRouteValue, String entityId) {
    context.goNamed(appRouteValue.name, params: {'id': entityId});
  }
}
