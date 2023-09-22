// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_aux_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsuarioAuxDTO _$$_UsuarioAuxDTOFromJson(Map<String, dynamic> json) =>
    _$_UsuarioAuxDTO(
      id: json['USUARIO_ID'] as String,
      usuario: json['USUARIO'] as String,
      nombreUsuario: json['NOMBRE_MOSTRAR'] as String? ?? '',
      idiomaId: json['IDIOMA_ID'] as String,
      modificarPedido: json['MODIFICAR_PRECIO_PEDIDO_SN'] as String,
      verTotalVentas: json['APP_VER_TOTAL_VENTAS'] as String,
    );

Map<String, dynamic> _$$_UsuarioAuxDTOToJson(_$_UsuarioAuxDTO instance) =>
    <String, dynamic>{
      'USUARIO_ID': instance.id,
      'USUARIO': instance.usuario,
      'NOMBRE_MOSTRAR': instance.nombreUsuario,
      'IDIOMA_ID': instance.idiomaId,
      'MODIFICAR_PRECIO_PEDIDO_SN': instance.modificarPedido,
      'APP_VER_TOTAL_VENTAS': instance.verTotalVentas,
    };
