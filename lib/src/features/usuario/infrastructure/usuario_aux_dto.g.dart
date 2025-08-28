// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_aux_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsuarioAuxDTO _$UsuarioAuxDTOFromJson(Map<String, dynamic> json) =>
    _UsuarioAuxDTO(
      id: json['USUARIO_ID'] as String,
      usuario: json['USUARIO'] as String,
      nombreUsuario: json['NOMBRE_MOSTRAR'] as String? ?? '',
      idiomaId: json['IDIOMA_ID'] as String,
      modificarPedido: json['MODIFICAR_PRECIO_PEDIDO_SN'] as String,
      verTotalVentas: json['APP_VER_TOTAL_VENTAS'] as String,
      margenComercial: (json['MARGEN_COMERCIAL'] as num).toDouble(),
    );

Map<String, dynamic> _$UsuarioAuxDTOToJson(_UsuarioAuxDTO instance) =>
    <String, dynamic>{
      'USUARIO_ID': instance.id,
      'USUARIO': instance.usuario,
      'NOMBRE_MOSTRAR': instance.nombreUsuario,
      'IDIOMA_ID': instance.idiomaId,
      'MODIFICAR_PRECIO_PEDIDO_SN': instance.modificarPedido,
      'APP_VER_TOTAL_VENTAS': instance.verTotalVentas,
      'MARGEN_COMERCIAL': instance.margenComercial,
    };
