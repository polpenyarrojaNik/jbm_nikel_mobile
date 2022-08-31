import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/auth/presentation/auth_controller.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../core/presentation/common_widgets/app_decoration.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ConsumerState<LoginPage> {
  String user = '';
  String password = '';
  FormGroup buildForm() => fb.group(<String, Object>{
        'user': FormControl<String>(
          validators: [Validators.required],
        ),
        'password': ['', Validators.required],
      });

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(
        authControllerProvider,
        (_, state) => state.maybeWhen(
              failure: (errorMessage) => showFlash(
                context: context,
                duration: const Duration(seconds: 4),
                builder: (context, controller) => Flash.bar(
                  backgroundColor: Theme.of(context).colorScheme.onSecondary,
                  controller: controller,
                  position: FlashPosition.bottom,
                  horizontalDismissDirection:
                      HorizontalDismissDirection.startToEnd,
                  margin: const EdgeInsets.all(8),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                  child: FlashBar(
                    content: Text(
                      errorMessage,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              orElse: () => null,
            ));

    final state = ref.watch(authControllerProvider);
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: ReactiveFormBuilder(
                form: buildForm,
                builder: (context, form, child) => SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/nikel_logo_400.png',
                        fit: BoxFit.cover,
                        width: deviceSize.width * 0.50,
                      ),
                      const SizedBox(height: 50),
                      const Text(
                        'LOGIN TITLE',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Archia-Bold'),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      ReactiveTextField<String>(
                        key: const ValueKey('user'),
                        formControlName: 'user',
                        textCapitalization: TextCapitalization.characters,
                        validationMessages: (control) => {
                          ValidationMessage.required: 'NO EMPTY',
                        },
                        textInputAction: TextInputAction.next,
                        decoration: AppDecoration.loginField('User'),
                      ),
                      const SizedBox(height: 16.0),
                      ReactiveTextField<String>(
                        formControlName: 'password',
                        obscureText: true,
                        validationMessages: (control) => {
                          ValidationMessage.required: 'No Empty',
                        },
                        textInputAction: TextInputAction.done,
                        onSubmitted: () => _submit(form, ref),
                        decoration: AppDecoration.loginField(
                          'Password',
                        ),
                      ),
                      state.maybeWhen(
                        orElse: () => ElevatedButton(
                          onPressed: () => _submit(form, ref),
                          child: const Text(
                            'Login',
                          ),
                        ),
                        authenticating: () => const Center(
                          child: ProgressIndicatorWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void _submit(FormGroup form, WidgetRef ref) {
    if (form.valid) {
      user = (form.control('user').value as String).toUpperCase();
      password = form.control('password').value as String;

      ref
          .read(authControllerProvider.notifier)
          .login(user: user, password: password);
    } else {
      form.markAllAsTouched();
    }
  }
}
