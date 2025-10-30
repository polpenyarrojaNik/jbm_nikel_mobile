// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_albaran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteAlbaran {

 String get clienteId; String get empresaId; String get albaranId; DateTime get fechaAlbaran; String? get zipCode; String? get poblacion; Pais? get pais; String? get provincia; Money get baseImponible; String get documentoPdf; bool get archivoExiste;
/// Create a copy of ClienteAlbaran
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteAlbaranCopyWith<ClienteAlbaran> get copyWith => _$ClienteAlbaranCopyWithImpl<ClienteAlbaran>(this as ClienteAlbaran, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteAlbaran&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,empresaId,albaranId,fechaAlbaran,zipCode,poblacion,pais,provincia,baseImponible,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteAlbaran(clienteId: $clienteId, empresaId: $empresaId, albaranId: $albaranId, fechaAlbaran: $fechaAlbaran, zipCode: $zipCode, poblacion: $poblacion, pais: $pais, provincia: $provincia, baseImponible: $baseImponible, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class $ClienteAlbaranCopyWith<$Res>  {
  factory $ClienteAlbaranCopyWith(ClienteAlbaran value, $Res Function(ClienteAlbaran) _then) = _$ClienteAlbaranCopyWithImpl;
@useResult
$Res call({
 String clienteId, String empresaId, String albaranId, DateTime fechaAlbaran, String? zipCode, String? poblacion, Pais? pais, String? provincia, Money baseImponible, String documentoPdf, bool archivoExiste
});


$PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class _$ClienteAlbaranCopyWithImpl<$Res>
    implements $ClienteAlbaranCopyWith<$Res> {
  _$ClienteAlbaranCopyWithImpl(this._self, this._then);

  final ClienteAlbaran _self;
  final $Res Function(ClienteAlbaran) _then;

/// Create a copy of ClienteAlbaran
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? empresaId = null,Object? albaranId = null,Object? fechaAlbaran = null,Object? zipCode = freezed,Object? poblacion = freezed,Object? pais = freezed,Object? provincia = freezed,Object? baseImponible = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as Money,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ClienteAlbaran
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteAlbaran].
extension ClienteAlbaranPatterns on ClienteAlbaran {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteAlbaran value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteAlbaran() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteAlbaran value)  $default,){
final _that = this;
switch (_that) {
case _ClienteAlbaran():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteAlbaran value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteAlbaran() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String empresaId,  String albaranId,  DateTime fechaAlbaran,  String? zipCode,  String? poblacion,  Pais? pais,  String? provincia,  Money baseImponible,  String documentoPdf,  bool archivoExiste)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteAlbaran() when $default != null:
return $default(_that.clienteId,_that.empresaId,_that.albaranId,_that.fechaAlbaran,_that.zipCode,_that.poblacion,_that.pais,_that.provincia,_that.baseImponible,_that.documentoPdf,_that.archivoExiste);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String empresaId,  String albaranId,  DateTime fechaAlbaran,  String? zipCode,  String? poblacion,  Pais? pais,  String? provincia,  Money baseImponible,  String documentoPdf,  bool archivoExiste)  $default,) {final _that = this;
switch (_that) {
case _ClienteAlbaran():
return $default(_that.clienteId,_that.empresaId,_that.albaranId,_that.fechaAlbaran,_that.zipCode,_that.poblacion,_that.pais,_that.provincia,_that.baseImponible,_that.documentoPdf,_that.archivoExiste);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String empresaId,  String albaranId,  DateTime fechaAlbaran,  String? zipCode,  String? poblacion,  Pais? pais,  String? provincia,  Money baseImponible,  String documentoPdf,  bool archivoExiste)?  $default,) {final _that = this;
switch (_that) {
case _ClienteAlbaran() when $default != null:
return $default(_that.clienteId,_that.empresaId,_that.albaranId,_that.fechaAlbaran,_that.zipCode,_that.poblacion,_that.pais,_that.provincia,_that.baseImponible,_that.documentoPdf,_that.archivoExiste);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteAlbaran extends ClienteAlbaran {
  const _ClienteAlbaran({required this.clienteId, required this.empresaId, required this.albaranId, required this.fechaAlbaran, required this.zipCode, required this.poblacion, required this.pais, required this.provincia, required this.baseImponible, required this.documentoPdf, required this.archivoExiste}): super._();
  

@override final  String clienteId;
@override final  String empresaId;
@override final  String albaranId;
@override final  DateTime fechaAlbaran;
@override final  String? zipCode;
@override final  String? poblacion;
@override final  Pais? pais;
@override final  String? provincia;
@override final  Money baseImponible;
@override final  String documentoPdf;
@override final  bool archivoExiste;

/// Create a copy of ClienteAlbaran
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteAlbaranCopyWith<_ClienteAlbaran> get copyWith => __$ClienteAlbaranCopyWithImpl<_ClienteAlbaran>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteAlbaran&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,empresaId,albaranId,fechaAlbaran,zipCode,poblacion,pais,provincia,baseImponible,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteAlbaran(clienteId: $clienteId, empresaId: $empresaId, albaranId: $albaranId, fechaAlbaran: $fechaAlbaran, zipCode: $zipCode, poblacion: $poblacion, pais: $pais, provincia: $provincia, baseImponible: $baseImponible, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class _$ClienteAlbaranCopyWith<$Res> implements $ClienteAlbaranCopyWith<$Res> {
  factory _$ClienteAlbaranCopyWith(_ClienteAlbaran value, $Res Function(_ClienteAlbaran) _then) = __$ClienteAlbaranCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String empresaId, String albaranId, DateTime fechaAlbaran, String? zipCode, String? poblacion, Pais? pais, String? provincia, Money baseImponible, String documentoPdf, bool archivoExiste
});


@override $PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class __$ClienteAlbaranCopyWithImpl<$Res>
    implements _$ClienteAlbaranCopyWith<$Res> {
  __$ClienteAlbaranCopyWithImpl(this._self, this._then);

  final _ClienteAlbaran _self;
  final $Res Function(_ClienteAlbaran) _then;

/// Create a copy of ClienteAlbaran
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? empresaId = null,Object? albaranId = null,Object? fechaAlbaran = null,Object? zipCode = freezed,Object? poblacion = freezed,Object? pais = freezed,Object? provincia = freezed,Object? baseImponible = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_ClienteAlbaran(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as Money,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ClienteAlbaran
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}
}

// dart format on
