import 'dart:io';

import 'package:flash/flash_helper.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../generated/l10n.dart';
import '../../domain/business_card_data.dart';
import '../../infrastructure/utils_repository.dart';
import 'error_message_widget.dart';

part 'business_card_extracted_data_dialog.g.dart';

@riverpod
class BusinessCardExtractedDataDialogController
    extends _$BusinessCardExtractedDataDialogController {
  @override
  Future<BusinessCardData> build(List<File> imageFileList) {
    return ref
        .read(utilsRepositoryProvider)
        .extractBusinessCardDataFromImage(imageFileList: imageFileList);
  }
}

class BusinessCardExtractedDataDialog extends HookConsumerWidget {
  const BusinessCardExtractedDataDialog({
    super.key,
    required this.imageFileList,
    required this.dialogCxt,
  });

  final List<File> imageFileList;
  final BuildContext dialogCxt;

  final int totalFields = 12;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      businessCardExtractedDataDialogControllerProvider(imageFileList),
      (_, state) => state.whenData((businessCardData) {
        if (!businessCardData.hasData) {
          dialogCxt.showInfoBar(
            content: Text(S.of(context).noDataExtractedFromBusinessCard),
          );
          Navigator.of(dialogCxt).pop(null);
        } else {
          Navigator.of(dialogCxt).pop(businessCardData);
        }
      }),
    );

    final state = ref.watch(
      businessCardExtractedDataDialogControllerProvider(imageFileList),
    );

    return AlertDialog(
      content: state.when(
        data: (businessCardData) => Container(),
        loading: () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const Gap(8),
            Text(S.of(context).extractingDataFromBusinessCard),
          ],
        ),
        error: (error, stack) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [Center(child: ErrorMessageWidget(error.toString()))],
        ),
      ),

      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogCxt).pop(),
          child: Text(S.of(context).cancel),
        ),
      ],
    );
  }
}
