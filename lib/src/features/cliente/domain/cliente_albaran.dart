import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/pais.dart';

part 'cliente_albaran.freezed.dart';

@freezed
abstract class ClienteAlbaran with _$ClienteAlbaran {
  const ClienteAlbaran._();
  const factory ClienteAlbaran({
    required String clienteId,
    required String empresaId,
    required String albaranId,
    required DateTime fechaAlbaran,
    required String? zipCode,
    required String? poblacion,
    required Pais? pais,
    required String? provincia,
    required Money baseImponible,
    required String documentoPdf,
    required bool archivoExiste,
  }) = _ClienteAlbaran;
}
