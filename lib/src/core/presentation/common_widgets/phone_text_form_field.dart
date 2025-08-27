import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations/riverpod_mutations.dart';

import '../../../../generated/l10n.dart';
import '../../../features/cliente/domain/cliente_telefono.dart';
import '../../../features/cliente/infrastructure/cliente_repository.dart';
import '../../exceptions/app_exception.dart';
import 'app_decoration.dart';

part 'phone_text_form_field.g.dart';

@riverpod
class PhoneTextFormBuilderController extends _$PhoneTextFormBuilderController {
  @override
  String? build() {
    return null;
  }

  Future<Either<AppException, ClienteTelefono?>> verifyExistingPhone(
    String value,
  ) {
    return ref.read(clienteRepositoryProvider).verifyExistingPhone(value);
  }
}

@riverpod
class VerifyExistingPhone extends _$VerifyExistingPhone {
  @override
  MutationState<Either<AppException, ClienteTelefono?>, String> build() {
    return MutationState.create(
      (newState) => state = newState,
      (newPhone) async => ref
          .read(phoneTextFormBuilderControllerProvider.notifier)
          .verifyExistingPhone(newPhone),
    );
  }
}

class PhoneTextFormField extends ConsumerWidget {
  const PhoneTextFormField({
    super.key,
    required this.name,
    required this.labelText,
    this.initialValue,
    this.validator,
  });

  final String? initialValue;
  final String name;
  final String labelText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final verifyExisitingPhoneState = ref.watch(verifyExistingPhoneProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormBuilderTextField(
          name: name,
          initialValue: initialValue,
          keyboardType: TextInputType.phone,
          decoration: AppDecoration.defaultFieldDecoration(labelText),
          onChanged: (value) {
            ref.invalidate(phoneTextFormBuilderControllerProvider);
            if (value != null && value.isNotEmpty) {
              verifyExisitingPhoneState(value);
            }
          },
          validator: validator,
        ),
        verifyExisitingPhoneState.maybeWhen(
          orElse: () => Container(),
          data:
              (data) => data.fold(
                (l) => Container(),
                (result) =>
                    result != null
                        ? Text(
                          '${S.of(context).esteNumeroTelefonoExisiteEnElCliente} #${result.clienteId} ${result.nombre}',
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(color: Colors.orange),
                        )
                        : Container(),
              ),

          loading: () => const LinearProgressIndicator(),
        ),
      ],
    );
  }
}
