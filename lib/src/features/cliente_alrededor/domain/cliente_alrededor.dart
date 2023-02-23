import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:money2/money2.dart';

part 'cliente_alrededor.freezed.dart';

@freezed
class ClienteAlrededor with _$ClienteAlrededor {
  const ClienteAlrededor._();
  const factory ClienteAlrededor({
    required String clienteId,
    required String markerId,
    required String nombre,
    required bool isDireccionFiscal,
    String? direccion,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    Pais? pais,
    bool? isClientePotencial,
    required double latitud,
    required double longitud,
    required Money ventasAnyoActual,
    required double porcentajeAbonos,
    String? nombreRepresentante1,
    String? nombreRepresentante2,
  }) = _ClienteAlrededor;
}
