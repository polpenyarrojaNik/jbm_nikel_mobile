import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../generated/l10n.dart';
import '../../domain/business_card_data.dart';

class BusinessCardSelectedDataDialog extends HookConsumerWidget {
  const BusinessCardSelectedDataDialog({
    super.key,
    required this.initialBusinessData,
    required this.dialogCxt,
  });

  final BusinessCardData initialBusinessData;
  final BuildContext dialogCxt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contactNameSelectedState = useState<bool>(true);
    final phoneSelectedState = useState<bool>(true);
    final emailSelectedState = useState<bool>(true);
    final streetAddressSelectedState = useState<bool>(true);
    final zipCodeSelectedState = useState<bool>(true);
    final citySelectedState = useState<bool>(true);
    final provinceSelectedState = useState<bool>(true);
    final countrySelectedState = useState<bool>(true);
    final companyNameSelectedState = useState<bool>(true);

    return AlertDialog(
      title: Text(S.of(context).extractedBusinessCardData),
      scrollable: true,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${_getSelectedFieldsCount(initialBusinessData, contactNameSelectedState, phoneSelectedState, emailSelectedState, streetAddressSelectedState, zipCodeSelectedState, citySelectedState, provinceSelectedState, countrySelectedState, companyNameSelectedState)} ${S.of(context).ofValue} ${_getTotalFieldsCount(initialBusinessData)} ${S.of(context).selectedFields}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          const Gap(8),
          Text(
            S.of(context).contacto,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Gap(2),

          ExtratedDataSelectableCard(
            icon: Icons.person_outlined,
            title: S.of(context).name,
            value: initialBusinessData.fullName,
            isSelected: contactNameSelectedState.value,
            onSelected: (_) {
              contactNameSelectedState.value = !contactNameSelectedState.value;
            },
          ),

          if (initialBusinessData.phone != null)
            ExtratedDataSelectableCard(
              icon: Icons.phone_outlined,
              title: S.of(context).telefono,
              value: initialBusinessData.phone!,
              isSelected: phoneSelectedState.value,
              onSelected: (_) {
                phoneSelectedState.value = !phoneSelectedState.value;
              },
            ),
          if (initialBusinessData.email != null)
            ExtratedDataSelectableCard(
              icon: Icons.email_outlined,
              title: S.of(context).email,
              value: initialBusinessData.email!,
              isSelected: emailSelectedState.value,
              onSelected: (_) {
                emailSelectedState.value = !emailSelectedState.value;
              },
            ),

          if (initialBusinessData.hasAddressData) ...[
            if (initialBusinessData.hasContactData) const Gap(8),
            Text(
              S.of(context).cliente_show_clienteDetalle_direccion,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Gap(2),
            if (initialBusinessData.streetAddress != null)
              ExtratedDataSelectableCard(
                icon: Icons.location_city_outlined,
                title: S.of(context).visitas_edit_visitaEditar_direccion1,
                value: initialBusinessData.streetAddress!,
                isSelected: streetAddressSelectedState.value,
                onSelected: (_) {
                  streetAddressSelectedState.value =
                      !streetAddressSelectedState.value;
                },
              ),
            if (initialBusinessData.zipCode != null)
              ExtratedDataSelectableCard(
                icon: Icons.markunread_mailbox_outlined,
                title: S.of(context).visitas_edit_visitaEditar_codigoPostal,
                value: initialBusinessData.zipCode!,
                isSelected: zipCodeSelectedState.value,
                onSelected: (_) {
                  zipCodeSelectedState.value = !zipCodeSelectedState.value;
                },
              ),
            if (initialBusinessData.city != null)
              ExtratedDataSelectableCard(
                icon: Icons.location_city_outlined,
                title: S.of(context).visitas_edit_visitaEditar_poblacion,
                value: initialBusinessData.city!,
                isSelected: citySelectedState.value,
                onSelected: (_) {
                  citySelectedState.value = !citySelectedState.value;
                },
              ),
            if (initialBusinessData.province != null)
              ExtratedDataSelectableCard(
                icon: Icons.map_outlined,
                title: S.of(context).visitas_edit_visitaEditar_provincia,
                value: initialBusinessData.province!.provincia ?? '',
                isSelected: provinceSelectedState.value,
                onSelected: (_) {
                  provinceSelectedState.value = !provinceSelectedState.value;
                },
              ),
            if (initialBusinessData.country != null)
              ExtratedDataSelectableCard(
                icon: Icons.flag_outlined,
                title: S.of(context).cliente_show_clienteDetalle_pais,
                value: initialBusinessData.country!.descripcion,
                isSelected: countrySelectedState.value,
                onSelected: (_) {
                  countrySelectedState.value = !countrySelectedState.value;
                },
              ),
            if (initialBusinessData.companyName != null)
              ExtratedDataSelectableCard(
                icon: Icons.business_outlined,
                title: S.of(context).company,
                value: initialBusinessData.companyName!,
                isSelected: companyNameSelectedState.value,
                onSelected: (_) {
                  companyNameSelectedState.value =
                      !companyNameSelectedState.value;
                },
              ),
          ],
        ],
      ),

      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogCxt).pop(),
          child: Text(S.of(context).cancel),
        ),

        ElevatedButton(
          onPressed: () => Navigator.of(dialogCxt).pop(
            _createBusinessCardDataFromSelectedFields(
              initialBusinessData,
              contactNameSelectedState.value,
              phoneSelectedState.value,
              emailSelectedState.value,
              streetAddressSelectedState.value,
              zipCodeSelectedState.value,
              citySelectedState.value,
              provinceSelectedState.value,
              countrySelectedState.value,
              companyNameSelectedState.value,
            ),
          ),
          child: Text(S.of(context).accept),
        ),
      ],
    );
  }

  BusinessCardData _createBusinessCardDataFromSelectedFields(
    BusinessCardData originalData,
    bool contactNameSelected,
    bool phoneSelected,
    bool emailSelected,
    bool streetAddressSelected,
    bool zipCodeSelected,
    bool citySelected,
    bool provinceSelected,
    bool countrySelected,
    bool companyNameSelected,
  ) {
    return BusinessCardData(
      contactName: contactNameSelected ? originalData.contactName : null,
      contactSurname: contactNameSelected ? originalData.contactSurname : null,
      phone: phoneSelected ? originalData.phone : null,
      email: emailSelected ? originalData.email : null,
      streetAddress: streetAddressSelected ? originalData.streetAddress : null,
      zipCode: zipCodeSelected ? originalData.zipCode : null,
      city: citySelected ? originalData.city : null,
      province: provinceSelected ? originalData.province : null,
      country: countrySelected ? originalData.country : null,
      companyName: companyNameSelected ? originalData.companyName : null,
    );
  }

  int _getSelectedFieldsCount(
    BusinessCardData initialBusinessData,
    ValueNotifier<bool> contactNameSelectedState,
    ValueNotifier<bool> phoneSelectedState,
    ValueNotifier<bool> emailSelectedState,
    ValueNotifier<bool> streetAddressSelectedState,
    ValueNotifier<bool> zipCodeSelectedState,
    ValueNotifier<bool> citySelectedState,
    ValueNotifier<bool> provinceSelectedState,
    ValueNotifier<bool> countrySelectedState,
    ValueNotifier<bool> companyNameSelectedState,
  ) {
    var count = 0;
    if (initialBusinessData.contactName != null &&
        contactNameSelectedState.value) {
      count++;
    }

    if (initialBusinessData.phone != null && phoneSelectedState.value) {
      count++;
    }
    if (initialBusinessData.email != null && emailSelectedState.value) {
      count++;
    }
    if (initialBusinessData.streetAddress != null &&
        streetAddressSelectedState.value) {
      count++;
    }
    if (initialBusinessData.zipCode != null && zipCodeSelectedState.value) {
      count++;
    }
    if (initialBusinessData.city != null && citySelectedState.value) {
      count++;
    }
    if (initialBusinessData.province != null && provinceSelectedState.value) {
      count++;
    }
    if (initialBusinessData.country != null && countrySelectedState.value) {
      count++;
    }
    if (initialBusinessData.companyName != null &&
        companyNameSelectedState.value) {
      count++;
    }
    return count;
  }

  int _getTotalFieldsCount(BusinessCardData initialBusinessData) {
    var count = 0;
    if (initialBusinessData.contactName != null) count++;
    if (initialBusinessData.phone != null) count++;
    if (initialBusinessData.email != null) count++;
    if (initialBusinessData.streetAddress != null) count++;
    if (initialBusinessData.zipCode != null) count++;
    if (initialBusinessData.city != null) count++;
    if (initialBusinessData.province != null) count++;
    if (initialBusinessData.country != null) count++;
    if (initialBusinessData.companyName != null) count++;
    return count;
  }
}

class ExtratedDataSelectableCard extends StatelessWidget {
  const ExtratedDataSelectableCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    required this.onSelected,
    required this.isSelected,
  });

  final String title;
  final IconData icon;
  final String value;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
          width: 2,
        ),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => onSelected(!isSelected),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon, size: 16),
              const Gap(8),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.bodySmall),
                    Text(value),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
