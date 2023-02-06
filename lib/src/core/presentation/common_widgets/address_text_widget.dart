import 'package:flutter/material.dart';

import '../../domain/pais.dart';
import '../../helpers/formatters.dart';

class AddressTextWidget extends StatelessWidget {
  const AddressTextWidget(
      {super.key,
      required this.codigoPostal,
      required this.poblacion,
      required this.provincia,
      required this.pais});

  final String? codigoPostal;
  final String? poblacion;
  final String? provincia;
  final Pais? pais;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formatCodigoPostalAndPoblacion(
            codigoPostal: codigoPostal,
            poblacion: poblacion,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).textTheme.bodySmall!.color,
              ),
        ),
        Text(
          formatProvinciaAndPais(
            province: provincia,
            pais: pais,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).textTheme.bodySmall!.color,
              ),
        ),
      ],
    );
  }
}
