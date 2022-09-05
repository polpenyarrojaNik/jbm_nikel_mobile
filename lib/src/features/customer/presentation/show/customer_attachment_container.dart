import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/customer_attachment.dart';
import '../../infrastructure/customer_repository.dart';

class CustomerAttachmentContainer extends ConsumerWidget {
  const CustomerAttachmentContainer({Key? key, required this.customerId})
      : super(key: key);

  final String customerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerAttachmentProvider(customerId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (customerAttachmentList) => (customerAttachmentList.isEmpty)
            ? const Center(child: Text('No Results'))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => CustomerAttachmentTile(
                  customerAttachment: customerAttachmentList[i],
                ),
                itemCount: customerAttachmentList.length,
              ),
      ),
    );
  }
}

class CustomerAttachmentTile extends ConsumerWidget {
  const CustomerAttachmentTile({Key? key, required this.customerAttachment})
      : super(key: key);

  final CustomerAttachment customerAttachment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => {},
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              // state.when(
              //   data: (file) =>
              Row(
            children: [
              Icon(
                getIconFromExtension(customerAttachment.attachmentName),
                color: Theme.of(context).textTheme.caption!.color,
              ),
              const SizedBox(width: 8),
              Flexible(child: Text(customerAttachment.attachmentName)),
            ],
          ),
          // error: (e, _) => ErrorMessageWidget(e.toString()),
          // loading: () => const ProgressIndicatorWidget(),
          // ),
        ),
      ),
    );
  }
}
