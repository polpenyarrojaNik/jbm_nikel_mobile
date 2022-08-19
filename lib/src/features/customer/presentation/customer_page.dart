import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/infrastructure/initial_db_repository.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';

class CustomerPage extends ConsumerStatefulWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends ConsumerState<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Customers'),
      ),
      body: Container(),
    );
  }
}
