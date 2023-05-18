import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/primary_button.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/app_decoration.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/toasts.dart';
import 'login_page_controller.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});
  // final Function(bool loggedIn) onLoginCallback;
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ConsumerState<LoginPage> {
  String username = '';
  String contrasenya = '';
  FormGroup buildForm() => fb.group(
        <String, Object>{
          'usuario': FormControl<String>(
            validators: [Validators.required],
          ),
          'contrasenya': ['', Validators.required],
        },
      );

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

    return Scaffold(
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
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/jbm_300x300.png',
                      fit: BoxFit.cover,
                      width: 250,
                    ),
                  ),
                  gapH48,
                  Text(
                    S.of(context).auth_loginPage_titulo,
                    style: Theme.of(context).textTheme.headlineSmall!,
                  ),
                  Text(
                    'JBM Nikel Mobile',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  gapH16,
                  ReactiveTextField<String>(
                    key: const ValueKey('usuario'),
                    formControlName: 'usuario',
                    textCapitalization: TextCapitalization.characters,
                    validationMessages: {
                      ValidationMessage.required: (error) =>
                          S.of(context).auth_loginPage_requerido,
                    },
                    textInputAction: TextInputAction.next,
                    decoration: AppDecoration.loginField(
                        S.of(context).auth_loginPage_usuario),
                  ),
                  gapH16,
                  ReactiveTextField<String>(
                    formControlName: 'contrasenya',
                    obscureText: true,
                    textCapitalization: TextCapitalization.characters,
                    validationMessages: {
                      ValidationMessage.required: (error) =>
                          S.of(context).auth_loginPage_requerido
                    },
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => _submit(form, ref),
                    decoration: AppDecoration.loginField(
                      S.of(context).auth_loginPage_contrasena,
                    ),
                  ),
                  gapH32,
                  state.maybeWhen(
                    orElse: () {
                      return PrimaryButton(
                          onPressed: () => _submit(form, ref),
                          text: S.of(context).auth_loginPage_iniciarSesion);
                    },
                    loading: () => const ProgressIndicatorWidget(),
                  ),
                  gapH32,
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/nikel_logo_400.png',
                      fit: BoxFit.fitWidth,
                      width: 150,
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

  Future<void> _submit(FormGroup form, WidgetRef ref) async {
    if (form.valid) {
      username = (form.control('usuario').value as String).toUpperCase();
      contrasenya = (form.control('contrasenya').value as String).toUpperCase();

      await ref
          .read(loginPageControllerProvider.notifier)
          .login(username: username, password: contrasenya);
    } else {
      form.markAllAsTouched();
    }
  }
}
