import 'package:freezed_annotation/freezed_annotation.dart';
import 'visita_competidor.dart';
import 'visita_motivos_no_venta.dart';
import 'visita_sector.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/provincia.dart';

part 'visita.freezed.dart';

@freezed
class Visita with _$Visita {
  const Visita._();
  const factory Visita({
    String? id,
    String? clienteId,
    String? nombreCliente,
    String? clienteEmail,
    String? clienteTelefono,
    required bool isClienteProvisional,
    String? clienteProvisionalNombre,
    String? clienteProvisionalEmail,
    String? clienteProvisionalTelefono,
    String? clienteProvisionalDireccion1,
    String? clienteProvisionalDireccion2,
    String? clienteProvisionalCodigoPostal,
    String? clienteProvisionalPoblacion,
    Provincia? clienteProvisionalProvincia,
    String? clienteProvisionalRegionId,
    Pais? clienteProvisionalPais,
    required DateTime fecha,
    required String numEmpl,
    String? contacto,
    String? atendidoPor,
    String? resumen,
    String? marcasCompetencia,
    required double latitud,
    required double longitud,
    String? visitaAppId,
    required bool ofertaRealizada,
    required InteresCliente? interesCliente,
    required bool pedidoRealizado,
    VisitaMotivoNoVenta? motivoNoInteres,
    VisitaMotivoNoVenta? motivoNoPedido,
    VisitaSector? sector,
    VisitaCompetidor? competencia,
    required bool? almacenPropio,
    required Capacidad? capacidad,
    required FrecuenciaPedido? frecuenciaPedido,
    required DateTime lastUpdated,
    required bool deleted,
    required bool enviada,
    required bool tratada,
    String? errorSyncMessage,
  }) = _Visita;

  bool getIsLocal() => !tratada;

  bool isEditable() => (!tratada && !enviada);

  String getNombreMostrar() => isClienteProvisional
      ? clienteProvisionalNombre!
      : '#$clienteId ${(nombreCliente != null) ? nombreCliente : ''}';
}

enum FrecuenciaPedido { semanal, mensual, trimestral }

enum InteresCliente { alto, medio, bajo }

enum Capacidad { grande, media, pequena }
