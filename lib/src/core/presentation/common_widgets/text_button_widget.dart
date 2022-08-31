import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {Key? key,
      required this.titleText,
      required this.entityId,
      required this.appRouteValue,
      required this.params})
      : super(key: key);

  final String titleText;
  final String entityId;
  final AppRoute appRouteValue;
  final Map<String, String> params;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>
          navigateAppRouteValue(context, appRouteValue, entityId, params),
      child: Text(titleText),
    );
  }

  void navigateAppRouteValue(BuildContext context, AppRoute appRouteValue,
      String entityId, Map<String, String> params) {
    context.goNamed(appRouteValue.name, params: params);
  }
}
