import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../generated/l10n.dart';
import '../../../core/domain/pais.dart';
import '../../../core/domain/provincia.dart';
import '../../cliente/domain/cliente.dart';
import 'visita_competidor.dart';
import 'visita_motivos_no_venta.dart';
import 'visita_sector.dart';

part 'visita.freezed.dart';

@freezed
abstract class Visita with _$Visita {
  const Visita._();
  const factory Visita({
    String? id,
    Cliente? cliente,
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
    required List<VisitaCompetidor> competenciaList,
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
      ? (clienteProvisionalNombre ?? S.current.unknownCustomer)
      : '#${cliente!.id} ${cliente?.nombreCliente ?? ''}';

  bool get isGeolocalized => latitud != 0 && longitud != 0;
}

enum FrecuenciaPedido { semanal, mensual, trimestral }

enum InteresCliente { alto, medio, bajo }

enum Capacidad { grande, media, pequena }
