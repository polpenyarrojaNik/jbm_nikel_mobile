import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_attachment.dart';

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
