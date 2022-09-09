import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/app_decoration.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/toasts.dart';
import 'login_page_controller.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ConsumerState<LoginPage> {
  String username = '';
  String contrasenya = '';
  FormGroup buildForm() => fb.group(<String, Object>{
        'usuario': FormControl<String>(
          validators: [Validators.required],
        ),
        'contrasenya': ['', Validators.required],
      });

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
        loginPageControllerProvider,
        (_, state) => state.maybeWhen(
              error: (error, stackTrace) {
                if (!state.isRefreshing) {
                  final errorMessage = (error is AppException)
                      ? error.details.message
                      : error.toString();
                  showToast(errorMessage, context);
                }
              },
              orElse: () {},
            ));

    final state = ref.watch(loginPageControllerProvider);
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
                        key: const ValueKey('usuario'),
                        formControlName: 'usuario',
                        textCapitalization: TextCapitalization.characters,
                        validationMessages: {
                          ValidationMessage.required: (error) => 'NO EMPTY'
                        },
                        textInputAction: TextInputAction.next,
                        decoration: AppDecoration.loginField('Usuario'),
                      ),
                      const SizedBox(height: 16.0),
                      ReactiveTextField<String>(
                        formControlName: 'contrasenya',
                        obscureText: true,
                        validationMessages: {
                          ValidationMessage.required: (error) => 'NO EMPTY'
                        },
                        textInputAction: TextInputAction.done,
                        onSubmitted: (_) => _submit(form, ref),
                        decoration: AppDecoration.loginField(
                          'Password',
                        ),
                      ),
                      state.maybeWhen(
                        orElse: () {
                          return ElevatedButton(
                              onPressed: () => _submit(form, ref),
                              child: const Text('Login'));
                        },
                        loading: () => const ProgressIndicatorWidget(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Future<void> _submit(FormGroup form, WidgetRef ref) async {
    if (form.valid) {
      username = (form.control('usuario').value as String).toUpperCase();
      contrasenya = form.control('contrasenya').value as String;

      await ref
          .read(loginPageControllerProvider.notifier)
          .login(username: username, password: contrasenya);
    } else {
      form.markAllAsTouched();
    }
  }
}
