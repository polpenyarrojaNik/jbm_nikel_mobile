import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/usuario.dart';

part 'usuario_aux_dto.freezed.dart';
part 'usuario_aux_dto.g.dart';
// ignore_for_file: invalid_annotation_target

@freezed
abstract class UsuarioAuxDTO with _$UsuarioAuxDTO {
  const UsuarioAuxDTO._();
  const factory UsuarioAuxDTO({
    @JsonKey(name: 'USUARIO_ID') required String id,
    @JsonKey(name: 'USUARIO') required String usuario,
    @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
    required String? nombreUsuario,
    @JsonKey(name: 'IDIOMA_ID') required String idiomaId,
    @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
    required String modificarPedido,
    @JsonKey(name: 'APP_VER_TOTAL_VENTAS') required String verTotalVentas,
    @JsonKey(name: 'MARGEN_COMERCIAL') required double margenComercial,
  }) = _UsuarioAuxDTO;

  factory UsuarioAuxDTO.fromJson(Map<String, dynamic> json) =>
      _$UsuarioAuxDTOFromJson(json);

  factory UsuarioAuxDTO.fromDomain(Usuario usuario) {
    return UsuarioAuxDTO(
      id: usuario.id,
      usuario: usuario.usuario,
      nombreUsuario: usuario.nombreUsuario,
      idiomaId: usuario.idiomaId,
      modificarPedido: usuario.modificarPedido ? 'S' : 'N',
      verTotalVentas: usuario.verTotalVentas ? 'S' : 'N',
      margenComercial: usuario.margenComercial,
    );
  }
}
