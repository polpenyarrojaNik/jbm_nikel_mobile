import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import 'devolucion_estado.dart';

part 'devolucion.freezed.dart';

@freezed
abstract class Devolucion with _$Devolucion {
  const Devolucion._();
  const factory Devolucion({
    required String empresaId,
    required String id,
    required DateTime fechaDevolucion,
    String? clienteId,
    String? direccionId,
    String? nombre,
    String? direccionRecogida1,
    String? direccionRecogida2,
    String? codigoPostal,
    String? poblacion,
    Pais? pais,
    String? almacenDestino,
    String? agenciaTransporte,
    required DevolucionEstado devolucionEstado,
    required double kilosDevolucion,
    required double bultos,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _Devolucion;
}
