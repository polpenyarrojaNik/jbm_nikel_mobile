import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../generated/l10n.dart';
import '../../domain/suggestion_address.dart';
import '../../helpers/helpers.dart';

class DefaultSuggestionAddressDialog extends ConsumerWidget {
  const DefaultSuggestionAddressDialog({
    super.key,
    required this.userAddressText,
    required this.suggestionAddress,
    required this.dialogContext,
  });

  final String userAddressText;
  final SuggestionAddress suggestionAddress;
  final BuildContext dialogContext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(S.of(context).chooseAddress),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () => Navigator.pop(dialogContext, true),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(S.of(context).suggestedAddress),
                          Text(
                            getAddressText(
                              suggestionAddress.direccion,
                              suggestionAddress.codigoPostal,
                              suggestionAddress.poblacion,
                              suggestionAddress.provincia?.provincia,
                              suggestionAddress.pais?.descripcion,
                            ),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () => Navigator.pop(dialogContext, null),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(S.of(context).currentAddress),
                          Text(
                            userAddressText,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
