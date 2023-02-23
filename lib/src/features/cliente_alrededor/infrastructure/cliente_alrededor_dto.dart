import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../../cliente/infrastructure/cliente_direccion_dto.dart';
import '../../cliente/infrastructure/cliente_dto.dart';
import '../domain/cliente_alrededor.dart';

part 'cliente_alrededor_dto.freezed.dart';
part 'cliente_alrededor_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteAlrededorDTO with _$ClienteAlrededorDTO {
  const ClienteAlrededorDTO._();
  const factory ClienteAlrededorDTO({
    required String markerId,
    required String clienteId,
    required String nombre,
    required String isDireccionFiscal,
    String? direccion,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    String? paisId,
    String? isClientePotencial,
    required double latitud,
    required double longitud,
    String? nombreRepresentante1,
    String? nombreRepresentante2,
    required double ventasAnyoActual,
    required double porcentajeAbonos,
  }) = _ClienteAlrededorDTO;

  factory ClienteAlrededorDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteAlrededorDTOFromJson(json);

  factory ClienteAlrededorDTO.fromClienteDTO(ClienteDTO _) {
    return ClienteAlrededorDTO(
      clienteId: _.id,
      markerId: '${_.id}/fiscal',
      nombre: _.nombreFiscal,
      isDireccionFiscal: 'S',
      direccion: _.direccionFiscal1,
      codigoPostal: _.codigoPostalFiscal,
      poblacion: _.poblacionFiscal,
      provincia: _.provinciaFiscal,
      paisId: _.paisFiscalId,
      latitud: _.latitudFiscal,
      longitud: _.longitudFiscal,
      isClientePotencial: _.clientePotencial,
      nombreRepresentante1: _.representante1Nombre,
      nombreRepresentante2: _.representante2Nombre,
      ventasAnyoActual: _.ventasAnyoActual,
      porcentajeAbonos: _.porcentajeAbonos,
    );
  }

  factory ClienteAlrededorDTO.fromClienteDireccionDTO(
    ClienteDireccionDTO _,
    double ventasAnyoActual,
    double porcentajeAbonos,
    String? nombreRepresentante1,
    String? nombreRepresentante2,
  ) {
    return ClienteAlrededorDTO(
      clienteId: _.clienteId,
      markerId: '${_.clienteId}/${_.direccionId}',
      nombre: _.nombre,
      isDireccionFiscal: 'N',
      direccion: _.direccion1,
      codigoPostal: _.codigoPostal,
      poblacion: _.poblacion,
      provincia: _.provincia,
      paisId: _.paisId,
      latitud: _.latitud,
      longitud: _.longitud,
      isClientePotencial: 'N',
      nombreRepresentante1: nombreRepresentante1,
      nombreRepresentante2: nombreRepresentante2,
      ventasAnyoActual: ventasAnyoActual,
      porcentajeAbonos: porcentajeAbonos,
    );
  }

  ClienteAlrededor toDomain({required Pais? pais}) {
    return ClienteAlrededor(
      clienteId: clienteId,
      markerId: markerId,
      nombre: nombre,
      isDireccionFiscal: isDireccionFiscal == 'S',
      direccion: direccion,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      isClientePotencial: isClientePotencial == 'S',
      latitud: latitud,
      longitud: longitud,
      nombreRepresentante1: nombreRepresentante1,
      nombreRepresentante2: nombreRepresentante2,
      ventasAnyoActual: ventasAnyoActual.toMoney(),
      porcentajeAbonos: porcentajeAbonos,
    );
  }
}
