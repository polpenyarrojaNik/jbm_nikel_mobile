import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../exceptions/app_exception.dart';
import 'alert_dialogs.dart';

extension AsyncValueUI on AsyncValue<dynamic> {
  void showAlertDialogOnError(BuildContext context) {
    if (!isRefreshing && hasError) {
      final message = _errorMessage(error);
      showExceptionAlertDialog(
        context: context,
        title: 'Error',
        exception: message,
      );
    }
  }

  String _errorMessage(Object? error) {
    if (error is AppException) {
      return error.details.message;
    } else {
      return error.toString();
    }
  }
}
