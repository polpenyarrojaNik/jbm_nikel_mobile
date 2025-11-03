// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsuarioDTO _$UsuarioDTOFromJson(Map<String, dynamic> json) => _UsuarioDTO(
  id: json['USUARIO_ID'] as String,
  usuario: json['USUARIO'] as String,
  contrasenya: json['CLAVE'] as String,
  nombreUsuario: json['NOMBRE_MOSTRAR'] as String? ?? '',
  provisionalToken: json['PROVISIONAL_TOKEN'] as String,
  refreshToken: json['REFRESH_TOKEN'] as String?,
  test: json['TEST'] as String,
  idiomaId: json['IDIOMA_ID'] as String,
  modificarPedido: json['MODIFICAR_PRECIO_PEDIDO_SN'] as String,
  verTotalVentas: json['APP_VER_TOTAL_VENTAS'] as String,
  packageName: json['PACKAGE_NAME'] as String?,
  version: json['VERSION'] as String?,
  buildNumber: json['BUILD_NUMBER'] as String?,
  deviceInfo: json['DEVICE_INFO'] as String?,
  margenComercial: (json['MARGEN_COMERCIAL'] as num?)?.toDouble(),
  costeSn: json['COSTE_SN'] as String,
  filtroRepresentante: json['FILTRO_REPRESENTANTE'] as String,
);

Map<String, dynamic> _$UsuarioDTOToJson(_UsuarioDTO instance) =>
    <String, dynamic>{
      'USUARIO_ID': instance.id,
      'USUARIO': instance.usuario,
      'CLAVE': instance.contrasenya,
      'NOMBRE_MOSTRAR': instance.nombreUsuario,
      'PROVISIONAL_TOKEN': instance.provisionalToken,
      'REFRESH_TOKEN': instance.refreshToken,
      'TEST': instance.test,
      'IDIOMA_ID': instance.idiomaId,
      'MODIFICAR_PRECIO_PEDIDO_SN': instance.modificarPedido,
      'APP_VER_TOTAL_VENTAS': instance.verTotalVentas,
      'PACKAGE_NAME': instance.packageName,
      'VERSION': instance.version,
      'BUILD_NUMBER': instance.buildNumber,
      'DEVICE_INFO': instance.deviceInfo,
      'MARGEN_COMERCIAL': instance.margenComercial,
      'COSTE_SN': instance.costeSn,
      'FILTRO_REPRESENTANTE': instance.filtroRepresentante,
    };
