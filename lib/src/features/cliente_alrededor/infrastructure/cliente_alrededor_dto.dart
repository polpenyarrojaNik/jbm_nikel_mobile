import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import '../../../core/helpers/extension.dart';
import '../../cliente/infrastructure/cliente_direccion_dto.dart';
import '../../cliente/infrastructure/cliente_dto.dart';
import '../domain/cliente_alrededor.dart';

part 'cliente_alrededor_dto.freezed.dart';
part 'cliente_alrededor_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteAlrededorDTO with _$ClienteAlrededorDTO {
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
    required double ventasAnyoAnterior,
    required double porcentajeAbonos,
    double? ventasPeriodoActual,
    double? ventasPeriodoAnterior,
  }) = _ClienteAlrededorDTO;

  factory ClienteAlrededorDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteAlrededorDTOFromJson(json);

  factory ClienteAlrededorDTO.fromClienteDTO(ClienteDTO clienteAlrededorDto) {
    return ClienteAlrededorDTO(
      clienteId: clienteAlrededorDto.id,
      markerId: '${clienteAlrededorDto.id}/fiscal',
      nombre: clienteAlrededorDto.nombreFiscal,
      isDireccionFiscal: 'S',
      direccion: clienteAlrededorDto.direccionFiscal1,
      codigoPostal: clienteAlrededorDto.codigoPostalFiscal,
      poblacion: clienteAlrededorDto.poblacionFiscal,
      provincia: clienteAlrededorDto.provinciaFiscal,
      paisId: clienteAlrededorDto.paisFiscalId,
      latitud: clienteAlrededorDto.latitudFiscal,
      longitud: clienteAlrededorDto.longitudFiscal,
      isClientePotencial: clienteAlrededorDto.clientePotencial,
      nombreRepresentante1: clienteAlrededorDto.representante1Nombre,
      nombreRepresentante2: clienteAlrededorDto.representante2Nombre,
      ventasAnyoActual: clienteAlrededorDto.ventasAnyoActual,
      ventasAnyoAnterior: clienteAlrededorDto.ventasAnyoAnterior,
      porcentajeAbonos: clienteAlrededorDto.porcentajeAbonos,
      ventasPeriodoActual: clienteAlrededorDto.ventasPeriodoActual,
      ventasPeriodoAnterior: clienteAlrededorDto.ventasPeriodoAnterior,
    );
  }

  factory ClienteAlrededorDTO.fromClienteDireccionDTO(
    ClienteDireccionDTO clienteDireccionDto,
    double ventasAnyoActual,
    double ventasAnyoAnterior,
    double porcentajeAbonos,
    String? nombreRepresentante1,
    String? nombreRepresentante2,
    double? ventasPeriodoActual,
    double? ventasPeriodoAnterior,
  ) {
    return ClienteAlrededorDTO(
      clienteId: clienteDireccionDto.clienteId,
      markerId:
          '${clienteDireccionDto.clienteId}/${clienteDireccionDto.direccionId ?? 'UN'}',
      nombre: clienteDireccionDto.nombre!,
      isDireccionFiscal: 'N',
      direccion: clienteDireccionDto.direccion1,
      codigoPostal: clienteDireccionDto.codigoPostal,
      poblacion: clienteDireccionDto.poblacion,
      provincia: clienteDireccionDto.provincia,
      paisId: clienteDireccionDto.paisId,
      latitud: clienteDireccionDto.latitud,
      longitud: clienteDireccionDto.longitud,
      isClientePotencial: 'N',
      nombreRepresentante1: nombreRepresentante1,
      nombreRepresentante2: nombreRepresentante2,
      ventasAnyoActual: ventasAnyoActual,
      ventasAnyoAnterior: ventasAnyoAnterior,
      porcentajeAbonos: porcentajeAbonos,
      ventasPeriodoActual: ventasPeriodoActual,
      ventasPeriodoAnterior: ventasPeriodoAnterior,
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
      ventasAnyoAnterior: ventasAnyoAnterior.toMoney(),
      porcentajeAbonos: porcentajeAbonos,
      ventasPeriodoActual: ventasPeriodoActual,
      ventasPeriodoAnterior: ventasPeriodoAnterior,
    );
  }
}
