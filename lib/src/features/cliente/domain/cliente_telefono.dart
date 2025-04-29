import 'package:freezed_annotation/freezed_annotation.dart';
import 'cliente.dart';
import '../infrastructure/cliente_dto.dart';

import '../infrastructure/cliente_direccion_dto.dart';

part 'cliente_telefono.freezed.dart';

@freezed
class ClienteTelefono with _$ClienteTelefono {
  const ClienteTelefono._();
  const factory ClienteTelefono({
    required String clienteId,
    required String nombre,
    required String telefono,
  }) = _ClienteTelefono;

  factory ClienteTelefono.fromClienteDTO(
    ClienteDTO clienteDto,
    String telefono,
  ) => ClienteTelefono(
    clienteId: clienteDto.id,
    nombre: clienteDto.nombreCliente,
    telefono: telefono,
  );

  factory ClienteTelefono.fromCliente(Cliente cliente, String telefono) =>
      ClienteTelefono(
        clienteId: cliente.id,
        nombre: cliente.nombreCliente,
        telefono: telefono,
      );

  factory ClienteTelefono.fromClienteDireccionDTO(
    ClienteDireccionDTO clienteDireccionDto,
    String telefono,
  ) => ClienteTelefono(
    clienteId: clienteDireccionDto.clienteId,
    nombre: clienteDireccionDto.nombre ?? '',
    telefono: telefono,
  );
}
