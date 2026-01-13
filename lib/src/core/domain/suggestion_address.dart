// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pais.dart';
import 'provincia.dart';

part 'suggestion_address.freezed.dart';

@freezed
abstract class SuggestionAddress with _$SuggestionAddress {
  factory SuggestionAddress({
    required String? direccion,
    required String? codigoPostal,
    required String? poblacion,
    required Provincia? provincia,
    required Pais? pais,
    required String? formattedAddress,
    required String? formattedAddressResult,
  }) = _SuggestionAddress;
}
