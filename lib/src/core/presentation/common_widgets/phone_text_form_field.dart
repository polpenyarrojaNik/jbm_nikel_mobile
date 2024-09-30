import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/app_decoration.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations_annotation/riverpod_mutations_annotation.dart';

import '../../../features/cliente/domain/cliente_telefono.dart';

part 'phone_text_form_field.g.dart';

@riverpod
class PhoneTextFormBuilderController extends _$PhoneTextFormBuilderController {
  @override
  String? build() {
    return null;
  }

  @mutation
  Future<ClienteTelefono?> verifyExistingPhone(String value) async {
    return await ref.read(clienteRepositoryProvider).verifyExistingPhone(value);
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
    final verifyExisitingPhoneState =
        ref.watch(phoneTextFormBuilderControllerProvider.verifyExistingPhone);
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
        if (verifyExisitingPhoneState is VerifyExistingPhoneMutationSuccess &&
            verifyExisitingPhoneState.result != null)
          Text(
              '${S.of(context).esteNumeroTelefonoExisiteEnElCliente} #${verifyExisitingPhoneState.result!.clienteId} ${verifyExisitingPhoneState.result!.nombre}',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.orange))
        else if (verifyExisitingPhoneState
            is VerifyExistingPhoneMutationLoading)
          const LinearProgressIndicator()
        else
          Container(),
      ],
    );
  }
}
