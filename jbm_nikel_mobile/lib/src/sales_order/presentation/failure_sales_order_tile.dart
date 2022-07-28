import 'package:jbm_nikel_mobile/src/core/domain/jbm_mobile_failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FailureSalesOrderTile extends ConsumerWidget {
  final JbmMobileFailure failure;
  const FailureSalesOrderTile({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        color: Theme.of(context).errorColor,
        child: ListTile(
          title: Text('Sales order failure'),
          subtitle: Text(
            failure.map(
              api: (_) => 'Api returned: ${_.errorCode}:${_.message}',
              db: (_) => 'Db returned: ${_.message}',
              local: (_) => 'Local error: ${_.message}',
            ),
          ),
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(
              Icons.warning,
            ),
          ),
          // trailing: IconButton(
          //   icon: const Icon(Icons.refresh),
          //   onPressed: () {
          //     context
          //         .findAncestorWidgetOfExactType<PaginatedSalesOrderListView>()
          //         ?.paginatedSalesOrderNotifierProvider.notifier(ref);
          //   },
          // ),
        ),
      ),
    );
  }
}
