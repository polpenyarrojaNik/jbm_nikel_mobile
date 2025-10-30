// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_albaran_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteAlbaranDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'ALBARAN_ID') String get albaranId;@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'FECHA_EMISION') DateTime get fechaAlbaran;@JsonKey(name: 'CODIGO_POSTAL') String? get zipCode;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'PROVINCIA') String? get provincia;@JsonKey(name: 'BASE_IMPONIBLE') double get baseImponible;@JsonKey(name: 'DOCUMENTO_PDF') String get documentoPdf;@JsonKey(name: 'ARCHIVO_EXISTE_SN') String get archivoExiste;
/// Create a copy of ClienteAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteAlbaranDTOCopyWith<ClienteAlbaranDTO> get copyWith => _$ClienteAlbaranDTOCopyWithImpl<ClienteAlbaranDTO>(this as ClienteAlbaranDTO, _$identity);

  /// Serializes this ClienteAlbaranDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteAlbaranDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,albaranId,empresaId,fechaAlbaran,zipCode,poblacion,paisId,provincia,baseImponible,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteAlbaranDTO(clienteId: $clienteId, albaranId: $albaranId, empresaId: $empresaId, fechaAlbaran: $fechaAlbaran, zipCode: $zipCode, poblacion: $poblacion, paisId: $paisId, provincia: $provincia, baseImponible: $baseImponible, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class $ClienteAlbaranDTOCopyWith<$Res>  {
  factory $ClienteAlbaranDTOCopyWith(ClienteAlbaranDTO value, $Res Function(ClienteAlbaranDTO) _then) = _$ClienteAlbaranDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ALBARAN_ID') String albaranId,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'FECHA_EMISION') DateTime fechaAlbaran,@JsonKey(name: 'CODIGO_POSTAL') String? zipCode,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,@JsonKey(name: 'DOCUMENTO_PDF') String documentoPdf,@JsonKey(name: 'ARCHIVO_EXISTE_SN') String archivoExiste
});




}
/// @nodoc
class _$ClienteAlbaranDTOCopyWithImpl<$Res>
    implements $ClienteAlbaranDTOCopyWith<$Res> {
  _$ClienteAlbaranDTOCopyWithImpl(this._self, this._then);

  final ClienteAlbaranDTO _self;
  final $Res Function(ClienteAlbaranDTO) _then;

/// Create a copy of ClienteAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? albaranId = null,Object? empresaId = null,Object? fechaAlbaran = null,Object? zipCode = freezed,Object? poblacion = freezed,Object? paisId = freezed,Object? provincia = freezed,Object? baseImponible = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as double,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteAlbaranDTO].
extension ClienteAlbaranDTOPatterns on ClienteAlbaranDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteAlbaranDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteAlbaranDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteAlbaranDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteAlbaranDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteAlbaranDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteAlbaranDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'FECHA_EMISION')  DateTime fechaAlbaran, @JsonKey(name: 'CODIGO_POSTAL')  String? zipCode, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'DOCUMENTO_PDF')  String documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN')  String archivoExiste)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteAlbaranDTO() when $default != null:
return $default(_that.clienteId,_that.albaranId,_that.empresaId,_that.fechaAlbaran,_that.zipCode,_that.poblacion,_that.paisId,_that.provincia,_that.baseImponible,_that.documentoPdf,_that.archivoExiste);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'FECHA_EMISION')  DateTime fechaAlbaran, @JsonKey(name: 'CODIGO_POSTAL')  String? zipCode, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'DOCUMENTO_PDF')  String documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN')  String archivoExiste)  $default,) {final _that = this;
switch (_that) {
case _ClienteAlbaranDTO():
return $default(_that.clienteId,_that.albaranId,_that.empresaId,_that.fechaAlbaran,_that.zipCode,_that.poblacion,_that.paisId,_that.provincia,_that.baseImponible,_that.documentoPdf,_that.archivoExiste);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'FECHA_EMISION')  DateTime fechaAlbaran, @JsonKey(name: 'CODIGO_POSTAL')  String? zipCode, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'DOCUMENTO_PDF')  String documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN')  String archivoExiste)?  $default,) {final _that = this;
switch (_that) {
case _ClienteAlbaranDTO() when $default != null:
return $default(_that.clienteId,_that.albaranId,_that.empresaId,_that.fechaAlbaran,_that.zipCode,_that.poblacion,_that.paisId,_that.provincia,_that.baseImponible,_that.documentoPdf,_that.archivoExiste);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteAlbaranDTO extends ClienteAlbaranDTO {
  const _ClienteAlbaranDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'ALBARAN_ID') required this.albaranId, @JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'FECHA_EMISION') required this.fechaAlbaran, @JsonKey(name: 'CODIGO_POSTAL') required this.zipCode, @JsonKey(name: 'POBLACION') required this.poblacion, @JsonKey(name: 'PAIS_ID') required this.paisId, @JsonKey(name: 'PROVINCIA') required this.provincia, @JsonKey(name: 'BASE_IMPONIBLE') required this.baseImponible, @JsonKey(name: 'DOCUMENTO_PDF') required this.documentoPdf, @JsonKey(name: 'ARCHIVO_EXISTE_SN') required this.archivoExiste}): super._();
  factory _ClienteAlbaranDTO.fromJson(Map<String, dynamic> json) => _$ClienteAlbaranDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'ALBARAN_ID') final  String albaranId;
@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'FECHA_EMISION') final  DateTime fechaAlbaran;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? zipCode;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'PROVINCIA') final  String? provincia;
@override@JsonKey(name: 'BASE_IMPONIBLE') final  double baseImponible;
@override@JsonKey(name: 'DOCUMENTO_PDF') final  String documentoPdf;
@override@JsonKey(name: 'ARCHIVO_EXISTE_SN') final  String archivoExiste;

/// Create a copy of ClienteAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteAlbaranDTOCopyWith<_ClienteAlbaranDTO> get copyWith => __$ClienteAlbaranDTOCopyWithImpl<_ClienteAlbaranDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteAlbaranDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteAlbaranDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,albaranId,empresaId,fechaAlbaran,zipCode,poblacion,paisId,provincia,baseImponible,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteAlbaranDTO(clienteId: $clienteId, albaranId: $albaranId, empresaId: $empresaId, fechaAlbaran: $fechaAlbaran, zipCode: $zipCode, poblacion: $poblacion, paisId: $paisId, provincia: $provincia, baseImponible: $baseImponible, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class _$ClienteAlbaranDTOCopyWith<$Res> implements $ClienteAlbaranDTOCopyWith<$Res> {
  factory _$ClienteAlbaranDTOCopyWith(_ClienteAlbaranDTO value, $Res Function(_ClienteAlbaranDTO) _then) = __$ClienteAlbaranDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ALBARAN_ID') String albaranId,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'FECHA_EMISION') DateTime fechaAlbaran,@JsonKey(name: 'CODIGO_POSTAL') String? zipCode,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,@JsonKey(name: 'DOCUMENTO_PDF') String documentoPdf,@JsonKey(name: 'ARCHIVO_EXISTE_SN') String archivoExiste
});




}
/// @nodoc
class __$ClienteAlbaranDTOCopyWithImpl<$Res>
    implements _$ClienteAlbaranDTOCopyWith<$Res> {
  __$ClienteAlbaranDTOCopyWithImpl(this._self, this._then);

  final _ClienteAlbaranDTO _self;
  final $Res Function(_ClienteAlbaranDTO) _then;

/// Create a copy of ClienteAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? albaranId = null,Object? empresaId = null,Object? fechaAlbaran = null,Object? zipCode = freezed,Object? poblacion = freezed,Object? paisId = freezed,Object? provincia = freezed,Object? baseImponible = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_ClienteAlbaranDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as double,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
