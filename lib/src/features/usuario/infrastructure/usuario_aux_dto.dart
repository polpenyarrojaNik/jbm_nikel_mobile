import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';

part 'usuario_aux_dto.freezed.dart';
part 'usuario_aux_dto.g.dart';
// ignore_for_file: invalid_annotation_target

@freezed
class UsuarioAuxDTO with _$UsuarioAuxDTO {
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
  }) = _UsuarioAuxDTO;

  factory UsuarioAuxDTO.fromJson(Map<String, dynamic> json) =>
      _$UsuarioAuxDTOFromJson(json);

  factory UsuarioAuxDTO.fromDomain(Usuario _) {
    return UsuarioAuxDTO(
      id: _.id,
      usuario: _.usuario,
      nombreUsuario: _.nombreUsuario,
      idiomaId: _.idiomaId,
      modificarPedido: _.modificarPedido ? 'S' : 'N',
      verTotalVentas: _.verTotalVentas ? 'S' : 'N',
    );
  }
}
