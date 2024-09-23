import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'progress_indicator_widget.dart';

import '../../exceptions/app_exception.dart';
import 'error_message_widget.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({super.key, required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (error, st) {
        final errorMessage =
            (error is AppException) ? error.details.message : error.toString();

        return Center(child: ErrorMessageWidget(errorMessage));
      },
      loading: () => const ProgressIndicatorWidget(),
    );
  }
}
