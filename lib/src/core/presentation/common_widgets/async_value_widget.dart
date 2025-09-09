import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../exceptions/app_exception.dart';
import 'error_message_widget.dart';
import 'progress_indicator_widget.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.onData,
  });
  final AsyncValue<T> value;
  final Widget Function(T) onData;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: onData,
      error: (error, st) {
        final errorMessage = (error is AppException)
            ? error.details.message
            : error.toString();

        return Center(child: ErrorMessageWidget(errorMessage));
      },
      loading: () => const ProgressIndicatorWidget(),
    );
  }
}
