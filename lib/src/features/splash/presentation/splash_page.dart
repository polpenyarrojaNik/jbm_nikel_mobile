import 'package:flutter/material.dart';

import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('SPLASH_SCREEN');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Image.asset(
            //   'assets/nikel_logo_300.png',
            //   width: 150,
            // ),
            SizedBox(height: 16),
            ProgressIndicatorWidget(),
          ],
        ),
      ),
    );
  }
}
