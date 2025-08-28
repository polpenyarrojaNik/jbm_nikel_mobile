// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_aux_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsuarioAuxDTO {

@JsonKey(name: 'USUARIO_ID') String get id;@JsonKey(name: 'USUARIO') String get usuario;@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? get nombreUsuario;@JsonKey(name: 'IDIOMA_ID') String get idiomaId;@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String get modificarPedido;@JsonKey(name: 'APP_VER_TOTAL_VENTAS') String get verTotalVentas;@JsonKey(name: 'MARGEN_COMERCIAL') double get margenComercial;
/// Create a copy of UsuarioAuxDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsuarioAuxDTOCopyWith<UsuarioAuxDTO> get copyWith => _$UsuarioAuxDTOCopyWithImpl<UsuarioAuxDTO>(this as UsuarioAuxDTO, _$identity);

  /// Serializes this UsuarioAuxDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsuarioAuxDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.nombreUsuario, nombreUsuario) || other.nombreUsuario == nombreUsuario)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.modificarPedido, modificarPedido) || other.modificarPedido == modificarPedido)&&(identical(other.verTotalVentas, verTotalVentas) || other.verTotalVentas == verTotalVentas)&&(identical(other.margenComercial, margenComercial) || other.margenComercial == margenComercial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,usuario,nombreUsuario,idiomaId,modificarPedido,verTotalVentas,margenComercial);

@override
String toString() {
  return 'UsuarioAuxDTO(id: $id, usuario: $usuario, nombreUsuario: $nombreUsuario, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas, margenComercial: $margenComercial)';
}


}

/// @nodoc
abstract mixin class $UsuarioAuxDTOCopyWith<$Res>  {
  factory $UsuarioAuxDTOCopyWith(UsuarioAuxDTO value, $Res Function(UsuarioAuxDTO) _then) = _$UsuarioAuxDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String id,@JsonKey(name: 'USUARIO') String usuario,@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,@JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas,@JsonKey(name: 'MARGEN_COMERCIAL') double margenComercial
});




}
/// @nodoc
class _$UsuarioAuxDTOCopyWithImpl<$Res>
    implements $UsuarioAuxDTOCopyWith<$Res> {
  _$UsuarioAuxDTOCopyWithImpl(this._self, this._then);

  final UsuarioAuxDTO _self;
  final $Res Function(UsuarioAuxDTO) _then;

/// Create a copy of UsuarioAuxDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? usuario = null,Object? nombreUsuario = freezed,Object? idiomaId = null,Object? modificarPedido = null,Object? verTotalVentas = null,Object? margenComercial = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,nombreUsuario: freezed == nombreUsuario ? _self.nombreUsuario : nombreUsuario // ignore: cast_nullable_to_non_nullable
as String?,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,modificarPedido: null == modificarPedido ? _self.modificarPedido : modificarPedido // ignore: cast_nullable_to_non_nullable
as String,verTotalVentas: null == verTotalVentas ? _self.verTotalVentas : verTotalVentas // ignore: cast_nullable_to_non_nullable
as String,margenComercial: null == margenComercial ? _self.margenComercial : margenComercial // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UsuarioAuxDTO].
extension UsuarioAuxDTOPatterns on UsuarioAuxDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsuarioAuxDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsuarioAuxDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsuarioAuxDTO value)  $default,){
final _that = this;
switch (_that) {
case _UsuarioAuxDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsuarioAuxDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UsuarioAuxDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String id, @JsonKey(name: 'USUARIO')  String usuario, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')  String? nombreUsuario, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')  String modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS')  String verTotalVentas, @JsonKey(name: 'MARGEN_COMERCIAL')  double margenComercial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsuarioAuxDTO() when $default != null:
return $default(_that.id,_that.usuario,_that.nombreUsuario,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.margenComercial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String id, @JsonKey(name: 'USUARIO')  String usuario, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')  String? nombreUsuario, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')  String modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS')  String verTotalVentas, @JsonKey(name: 'MARGEN_COMERCIAL')  double margenComercial)  $default,) {final _that = this;
switch (_that) {
case _UsuarioAuxDTO():
return $default(_that.id,_that.usuario,_that.nombreUsuario,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.margenComercial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'USUARIO_ID')  String id, @JsonKey(name: 'USUARIO')  String usuario, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')  String? nombreUsuario, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')  String modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS')  String verTotalVentas, @JsonKey(name: 'MARGEN_COMERCIAL')  double margenComercial)?  $default,) {final _that = this;
switch (_that) {
case _UsuarioAuxDTO() when $default != null:
return $default(_that.id,_that.usuario,_that.nombreUsuario,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.margenComercial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsuarioAuxDTO extends UsuarioAuxDTO {
  const _UsuarioAuxDTO({@JsonKey(name: 'USUARIO_ID') required this.id, @JsonKey(name: 'USUARIO') required this.usuario, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') required this.nombreUsuario, @JsonKey(name: 'IDIOMA_ID') required this.idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') required this.modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS') required this.verTotalVentas, @JsonKey(name: 'MARGEN_COMERCIAL') required this.margenComercial}): super._();
  factory _UsuarioAuxDTO.fromJson(Map<String, dynamic> json) => _$UsuarioAuxDTOFromJson(json);

@override@JsonKey(name: 'USUARIO_ID') final  String id;
@override@JsonKey(name: 'USUARIO') final  String usuario;
@override@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') final  String? nombreUsuario;
@override@JsonKey(name: 'IDIOMA_ID') final  String idiomaId;
@override@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') final  String modificarPedido;
@override@JsonKey(name: 'APP_VER_TOTAL_VENTAS') final  String verTotalVentas;
@override@JsonKey(name: 'MARGEN_COMERCIAL') final  double margenComercial;

/// Create a copy of UsuarioAuxDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsuarioAuxDTOCopyWith<_UsuarioAuxDTO> get copyWith => __$UsuarioAuxDTOCopyWithImpl<_UsuarioAuxDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsuarioAuxDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsuarioAuxDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.nombreUsuario, nombreUsuario) || other.nombreUsuario == nombreUsuario)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.modificarPedido, modificarPedido) || other.modificarPedido == modificarPedido)&&(identical(other.verTotalVentas, verTotalVentas) || other.verTotalVentas == verTotalVentas)&&(identical(other.margenComercial, margenComercial) || other.margenComercial == margenComercial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,usuario,nombreUsuario,idiomaId,modificarPedido,verTotalVentas,margenComercial);

@override
String toString() {
  return 'UsuarioAuxDTO(id: $id, usuario: $usuario, nombreUsuario: $nombreUsuario, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas, margenComercial: $margenComercial)';
}


}

/// @nodoc
abstract mixin class _$UsuarioAuxDTOCopyWith<$Res> implements $UsuarioAuxDTOCopyWith<$Res> {
  factory _$UsuarioAuxDTOCopyWith(_UsuarioAuxDTO value, $Res Function(_UsuarioAuxDTO) _then) = __$UsuarioAuxDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String id,@JsonKey(name: 'USUARIO') String usuario,@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,@JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas,@JsonKey(name: 'MARGEN_COMERCIAL') double margenComercial
});




}
/// @nodoc
class __$UsuarioAuxDTOCopyWithImpl<$Res>
    implements _$UsuarioAuxDTOCopyWith<$Res> {
  __$UsuarioAuxDTOCopyWithImpl(this._self, this._then);

  final _UsuarioAuxDTO _self;
  final $Res Function(_UsuarioAuxDTO) _then;

/// Create a copy of UsuarioAuxDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? usuario = null,Object? nombreUsuario = freezed,Object? idiomaId = null,Object? modificarPedido = null,Object? verTotalVentas = null,Object? margenComercial = null,}) {
  return _then(_UsuarioAuxDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,nombreUsuario: freezed == nombreUsuario ? _self.nombreUsuario : nombreUsuario // ignore: cast_nullable_to_non_nullable
as String?,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,modificarPedido: null == modificarPedido ? _self.modificarPedido : modificarPedido // ignore: cast_nullable_to_non_nullable
as String,verTotalVentas: null == verTotalVentas ? _self.verTotalVentas : verTotalVentas // ignore: cast_nullable_to_non_nullable
as String,margenComercial: null == margenComercial ? _self.margenComercial : margenComercial // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
