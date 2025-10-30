// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_factura_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteFacturaDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'SERIE') String get serie;@JsonKey(name: 'FACTURA_ID') String get facturaId;@JsonKey(name: 'FECHA_FACTURA') DateTime get fechaFactura;@JsonKey(name: 'IMPORTE_FACTURA') double get importeFactura;@JsonKey(name: 'DOCUMENTO_PDF') String get documentoPdf;@JsonKey(name: 'ARCHIVO_EXISTE_SN') String get archivoExiste;
/// Create a copy of ClienteFacturaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteFacturaDTOCopyWith<ClienteFacturaDTO> get copyWith => _$ClienteFacturaDTOCopyWithImpl<ClienteFacturaDTO>(this as ClienteFacturaDTO, _$identity);

  /// Serializes this ClienteFacturaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteFacturaDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.serie, serie) || other.serie == serie)&&(identical(other.facturaId, facturaId) || other.facturaId == facturaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.importeFactura, importeFactura) || other.importeFactura == importeFactura)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,empresaId,serie,facturaId,fechaFactura,importeFactura,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteFacturaDTO(clienteId: $clienteId, empresaId: $empresaId, serie: $serie, facturaId: $facturaId, fechaFactura: $fechaFactura, importeFactura: $importeFactura, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class $ClienteFacturaDTOCopyWith<$Res>  {
  factory $ClienteFacturaDTOCopyWith(ClienteFacturaDTO value, $Res Function(ClienteFacturaDTO) _then) = _$ClienteFacturaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'SERIE') String serie,@JsonKey(name: 'FACTURA_ID') String facturaId,@JsonKey(name: 'FECHA_FACTURA') DateTime fechaFactura,@JsonKey(name: 'IMPORTE_FACTURA') double importeFactura,@JsonKey(name: 'DOCUMENTO_PDF') String documentoPdf,@JsonKey(name: 'ARCHIVO_EXISTE_SN') String archivoExiste
});




}
/// @nodoc
class _$ClienteFacturaDTOCopyWithImpl<$Res>
    implements $ClienteFacturaDTOCopyWith<$Res> {
  _$ClienteFacturaDTOCopyWithImpl(this._self, this._then);

  final ClienteFacturaDTO _self;
  final $Res Function(ClienteFacturaDTO) _then;

/// Create a copy of ClienteFacturaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? empresaId = null,Object? serie = null,Object? facturaId = null,Object? fechaFactura = null,Object? importeFactura = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,serie: null == serie ? _self.serie : serie // ignore: cast_nullable_to_non_nullable
as String,facturaId: null == facturaId ? _self.facturaId : facturaId // ignore: cast_nullable_to_non_nullable
as String,fechaFactura: null == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime,importeFactura: null == importeFactura ? _self.importeFactura : importeFactura // ignore: cast_nullable_to_non_nullable
as double,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteFacturaDTO].
extension ClienteFacturaDTOPatterns on ClienteFacturaDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteFacturaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteFacturaDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteFacturaDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteFacturaDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteFacturaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteFacturaDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'SERIE')  String serie, @JsonKey(name: 'FACTURA_ID')  String facturaId, @JsonKey(name: 'FECHA_FACTURA')  DateTime fechaFactura, @JsonKey(name: 'IMPORTE_FACTURA')  double importeFactura, @JsonKey(name: 'DOCUMENTO_PDF')  String documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN')  String archivoExiste)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteFacturaDTO() when $default != null:
return $default(_that.clienteId,_that.empresaId,_that.serie,_that.facturaId,_that.fechaFactura,_that.importeFactura,_that.documentoPdf,_that.archivoExiste);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'SERIE')  String serie, @JsonKey(name: 'FACTURA_ID')  String facturaId, @JsonKey(name: 'FECHA_FACTURA')  DateTime fechaFactura, @JsonKey(name: 'IMPORTE_FACTURA')  double importeFactura, @JsonKey(name: 'DOCUMENTO_PDF')  String documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN')  String archivoExiste)  $default,) {final _that = this;
switch (_that) {
case _ClienteFacturaDTO():
return $default(_that.clienteId,_that.empresaId,_that.serie,_that.facturaId,_that.fechaFactura,_that.importeFactura,_that.documentoPdf,_that.archivoExiste);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'SERIE')  String serie, @JsonKey(name: 'FACTURA_ID')  String facturaId, @JsonKey(name: 'FECHA_FACTURA')  DateTime fechaFactura, @JsonKey(name: 'IMPORTE_FACTURA')  double importeFactura, @JsonKey(name: 'DOCUMENTO_PDF')  String documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN')  String archivoExiste)?  $default,) {final _that = this;
switch (_that) {
case _ClienteFacturaDTO() when $default != null:
return $default(_that.clienteId,_that.empresaId,_that.serie,_that.facturaId,_that.fechaFactura,_that.importeFactura,_that.documentoPdf,_that.archivoExiste);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteFacturaDTO extends ClienteFacturaDTO {
  const _ClienteFacturaDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'SERIE') required this.serie, @JsonKey(name: 'FACTURA_ID') required this.facturaId, @JsonKey(name: 'FECHA_FACTURA') required this.fechaFactura, @JsonKey(name: 'IMPORTE_FACTURA') required this.importeFactura, @JsonKey(name: 'DOCUMENTO_PDF') required this.documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN') required this.archivoExiste}): super._();
  factory _ClienteFacturaDTO.fromJson(Map<String, dynamic> json) => _$ClienteFacturaDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'SERIE') final  String serie;
@override@JsonKey(name: 'FACTURA_ID') final  String facturaId;
@override@JsonKey(name: 'FECHA_FACTURA') final  DateTime fechaFactura;
@override@JsonKey(name: 'IMPORTE_FACTURA') final  double importeFactura;
@override@JsonKey(name: 'DOCUMENTO_PDF') final  String documentoPdf;
@override@JsonKey(name: 'ARCHIVO_EXISTE_SN') final  String archivoExiste;

/// Create a copy of ClienteFacturaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteFacturaDTOCopyWith<_ClienteFacturaDTO> get copyWith => __$ClienteFacturaDTOCopyWithImpl<_ClienteFacturaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteFacturaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteFacturaDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.serie, serie) || other.serie == serie)&&(identical(other.facturaId, facturaId) || other.facturaId == facturaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.importeFactura, importeFactura) || other.importeFactura == importeFactura)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,empresaId,serie,facturaId,fechaFactura,importeFactura,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteFacturaDTO(clienteId: $clienteId, empresaId: $empresaId, serie: $serie, facturaId: $facturaId, fechaFactura: $fechaFactura, importeFactura: $importeFactura, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class _$ClienteFacturaDTOCopyWith<$Res> implements $ClienteFacturaDTOCopyWith<$Res> {
  factory _$ClienteFacturaDTOCopyWith(_ClienteFacturaDTO value, $Res Function(_ClienteFacturaDTO) _then) = __$ClienteFacturaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'SERIE') String serie,@JsonKey(name: 'FACTURA_ID') String facturaId,@JsonKey(name: 'FECHA_FACTURA') DateTime fechaFactura,@JsonKey(name: 'IMPORTE_FACTURA') double importeFactura,@JsonKey(name: 'DOCUMENTO_PDF') String documentoPdf,@JsonKey(name: 'ARCHIVO_EXISTE_SN') String archivoExiste
});




}
/// @nodoc
class __$ClienteFacturaDTOCopyWithImpl<$Res>
    implements _$ClienteFacturaDTOCopyWith<$Res> {
  __$ClienteFacturaDTOCopyWithImpl(this._self, this._then);

  final _ClienteFacturaDTO _self;
  final $Res Function(_ClienteFacturaDTO) _then;

/// Create a copy of ClienteFacturaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? empresaId = null,Object? serie = null,Object? facturaId = null,Object? fechaFactura = null,Object? importeFactura = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_ClienteFacturaDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,serie: null == serie ? _self.serie : serie // ignore: cast_nullable_to_non_nullable
as String,facturaId: null == facturaId ? _self.facturaId : facturaId // ignore: cast_nullable_to_non_nullable
as String,fechaFactura: null == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime,importeFactura: null == importeFactura ? _self.importeFactura : importeFactura // ignore: cast_nullable_to_non_nullable
as double,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
