import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        data: (customerAttachmentList) => ListView.separated(
          separatorBuilder: (context, _) => const Divider(),
          itemBuilder: (context, i) => CustomerAttachmentTile(
            customerAttachment: customerAttachmentList[i],
          ),
          itemCount: customerAttachmentList.length,
        ),
      ),
    );
  }
}

class CustomerAttachmentTile extends StatelessWidget {
  const CustomerAttachmentTile({Key? key, required this.customerAttachment})
      : super(key: key);

  final CustomerAttachment customerAttachment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text('Nombre del archivo'),
              Text(customerAttachment.attachmentName),
            ],
          ),
          const SizedBox(width: 5),
          Column(
            children: const [
              Text('ARCHIVO'),
              Text(''),
            ],
          ),
        ],
      ),
    );
  }
}
