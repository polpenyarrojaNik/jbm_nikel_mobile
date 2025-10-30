// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_factura.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteFactura {

 String get clienteId; String get empresaId; String get serie; String get facturaId; DateTime get fechaFactura; Money get importeFactura; String get documentoPdf; bool get archivoExiste;
/// Create a copy of ClienteFactura
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteFacturaCopyWith<ClienteFactura> get copyWith => _$ClienteFacturaCopyWithImpl<ClienteFactura>(this as ClienteFactura, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteFactura&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.serie, serie) || other.serie == serie)&&(identical(other.facturaId, facturaId) || other.facturaId == facturaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.importeFactura, importeFactura) || other.importeFactura == importeFactura)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,empresaId,serie,facturaId,fechaFactura,importeFactura,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteFactura(clienteId: $clienteId, empresaId: $empresaId, serie: $serie, facturaId: $facturaId, fechaFactura: $fechaFactura, importeFactura: $importeFactura, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class $ClienteFacturaCopyWith<$Res>  {
  factory $ClienteFacturaCopyWith(ClienteFactura value, $Res Function(ClienteFactura) _then) = _$ClienteFacturaCopyWithImpl;
@useResult
$Res call({
 String clienteId, String empresaId, String serie, String facturaId, DateTime fechaFactura, Money importeFactura, String documentoPdf, bool archivoExiste
});




}
/// @nodoc
class _$ClienteFacturaCopyWithImpl<$Res>
    implements $ClienteFacturaCopyWith<$Res> {
  _$ClienteFacturaCopyWithImpl(this._self, this._then);

  final ClienteFactura _self;
  final $Res Function(ClienteFactura) _then;

/// Create a copy of ClienteFactura
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? empresaId = null,Object? serie = null,Object? facturaId = null,Object? fechaFactura = null,Object? importeFactura = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,serie: null == serie ? _self.serie : serie // ignore: cast_nullable_to_non_nullable
as String,facturaId: null == facturaId ? _self.facturaId : facturaId // ignore: cast_nullable_to_non_nullable
as String,fechaFactura: null == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime,importeFactura: null == importeFactura ? _self.importeFactura : importeFactura // ignore: cast_nullable_to_non_nullable
as Money,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteFactura].
extension ClienteFacturaPatterns on ClienteFactura {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteFactura value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteFactura() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteFactura value)  $default,){
final _that = this;
switch (_that) {
case _ClienteFactura():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteFactura value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteFactura() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String empresaId,  String serie,  String facturaId,  DateTime fechaFactura,  Money importeFactura,  String documentoPdf,  bool archivoExiste)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteFactura() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String empresaId,  String serie,  String facturaId,  DateTime fechaFactura,  Money importeFactura,  String documentoPdf,  bool archivoExiste)  $default,) {final _that = this;
switch (_that) {
case _ClienteFactura():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String empresaId,  String serie,  String facturaId,  DateTime fechaFactura,  Money importeFactura,  String documentoPdf,  bool archivoExiste)?  $default,) {final _that = this;
switch (_that) {
case _ClienteFactura() when $default != null:
return $default(_that.clienteId,_that.empresaId,_that.serie,_that.facturaId,_that.fechaFactura,_that.importeFactura,_that.documentoPdf,_that.archivoExiste);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteFactura extends ClienteFactura {
  const _ClienteFactura({required this.clienteId, required this.empresaId, required this.serie, required this.facturaId, required this.fechaFactura, required this.importeFactura, required this.documentoPdf, required this.archivoExiste}): super._();
  

@override final  String clienteId;
@override final  String empresaId;
@override final  String serie;
@override final  String facturaId;
@override final  DateTime fechaFactura;
@override final  Money importeFactura;
@override final  String documentoPdf;
@override final  bool archivoExiste;

/// Create a copy of ClienteFactura
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteFacturaCopyWith<_ClienteFactura> get copyWith => __$ClienteFacturaCopyWithImpl<_ClienteFactura>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteFactura&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.serie, serie) || other.serie == serie)&&(identical(other.facturaId, facturaId) || other.facturaId == facturaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.importeFactura, importeFactura) || other.importeFactura == importeFactura)&&(identical(other.documentoPdf, documentoPdf) || other.documentoPdf == documentoPdf)&&(identical(other.archivoExiste, archivoExiste) || other.archivoExiste == archivoExiste));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,empresaId,serie,facturaId,fechaFactura,importeFactura,documentoPdf,archivoExiste);

@override
String toString() {
  return 'ClienteFactura(clienteId: $clienteId, empresaId: $empresaId, serie: $serie, facturaId: $facturaId, fechaFactura: $fechaFactura, importeFactura: $importeFactura, documentoPdf: $documentoPdf, archivoExiste: $archivoExiste)';
}


}

/// @nodoc
abstract mixin class _$ClienteFacturaCopyWith<$Res> implements $ClienteFacturaCopyWith<$Res> {
  factory _$ClienteFacturaCopyWith(_ClienteFactura value, $Res Function(_ClienteFactura) _then) = __$ClienteFacturaCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String empresaId, String serie, String facturaId, DateTime fechaFactura, Money importeFactura, String documentoPdf, bool archivoExiste
});




}
/// @nodoc
class __$ClienteFacturaCopyWithImpl<$Res>
    implements _$ClienteFacturaCopyWith<$Res> {
  __$ClienteFacturaCopyWithImpl(this._self, this._then);

  final _ClienteFactura _self;
  final $Res Function(_ClienteFactura) _then;

/// Create a copy of ClienteFactura
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? empresaId = null,Object? serie = null,Object? facturaId = null,Object? fechaFactura = null,Object? importeFactura = null,Object? documentoPdf = null,Object? archivoExiste = null,}) {
  return _then(_ClienteFactura(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,serie: null == serie ? _self.serie : serie // ignore: cast_nullable_to_non_nullable
as String,facturaId: null == facturaId ? _self.facturaId : facturaId // ignore: cast_nullable_to_non_nullable
as String,fechaFactura: null == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime,importeFactura: null == importeFactura ? _self.importeFactura : importeFactura // ignore: cast_nullable_to_non_nullable
as Money,documentoPdf: null == documentoPdf ? _self.documentoPdf : documentoPdf // ignore: cast_nullable_to_non_nullable
as String,archivoExiste: null == archivoExiste ? _self.archivoExiste : archivoExiste // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
