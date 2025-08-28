// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_local_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PedidoLocalParam {

 String? get pedidoAppId; String? get pedidoId; String? get empresaId; bool get isEdit; bool? get tratada; String? get createPedidoFromClienteId; PedidoVentaLinea? get addLineaDesdeArticulo;
/// Create a copy of PedidoLocalParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoLocalParamCopyWith<PedidoLocalParam> get copyWith => _$PedidoLocalParamCopyWithImpl<PedidoLocalParam>(this as PedidoLocalParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoLocalParam&&(identical(other.pedidoAppId, pedidoAppId) || other.pedidoAppId == pedidoAppId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.isEdit, isEdit) || other.isEdit == isEdit)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.createPedidoFromClienteId, createPedidoFromClienteId) || other.createPedidoFromClienteId == createPedidoFromClienteId)&&(identical(other.addLineaDesdeArticulo, addLineaDesdeArticulo) || other.addLineaDesdeArticulo == addLineaDesdeArticulo));
}


@override
int get hashCode => Object.hash(runtimeType,pedidoAppId,pedidoId,empresaId,isEdit,tratada,createPedidoFromClienteId,addLineaDesdeArticulo);

@override
String toString() {
  return 'PedidoLocalParam(pedidoAppId: $pedidoAppId, pedidoId: $pedidoId, empresaId: $empresaId, isEdit: $isEdit, tratada: $tratada, createPedidoFromClienteId: $createPedidoFromClienteId, addLineaDesdeArticulo: $addLineaDesdeArticulo)';
}


}

/// @nodoc
abstract mixin class $PedidoLocalParamCopyWith<$Res>  {
  factory $PedidoLocalParamCopyWith(PedidoLocalParam value, $Res Function(PedidoLocalParam) _then) = _$PedidoLocalParamCopyWithImpl;
@useResult
$Res call({
 String? pedidoAppId, String? pedidoId, String? empresaId, bool isEdit, bool? tratada, String? createPedidoFromClienteId, PedidoVentaLinea? addLineaDesdeArticulo
});


$PedidoVentaLineaCopyWith<$Res>? get addLineaDesdeArticulo;

}
/// @nodoc
class _$PedidoLocalParamCopyWithImpl<$Res>
    implements $PedidoLocalParamCopyWith<$Res> {
  _$PedidoLocalParamCopyWithImpl(this._self, this._then);

  final PedidoLocalParam _self;
  final $Res Function(PedidoLocalParam) _then;

/// Create a copy of PedidoLocalParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pedidoAppId = freezed,Object? pedidoId = freezed,Object? empresaId = freezed,Object? isEdit = null,Object? tratada = freezed,Object? createPedidoFromClienteId = freezed,Object? addLineaDesdeArticulo = freezed,}) {
  return _then(_self.copyWith(
pedidoAppId: freezed == pedidoAppId ? _self.pedidoAppId : pedidoAppId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,isEdit: null == isEdit ? _self.isEdit : isEdit // ignore: cast_nullable_to_non_nullable
as bool,tratada: freezed == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as bool?,createPedidoFromClienteId: freezed == createPedidoFromClienteId ? _self.createPedidoFromClienteId : createPedidoFromClienteId // ignore: cast_nullable_to_non_nullable
as String?,addLineaDesdeArticulo: freezed == addLineaDesdeArticulo ? _self.addLineaDesdeArticulo : addLineaDesdeArticulo // ignore: cast_nullable_to_non_nullable
as PedidoVentaLinea?,
  ));
}
/// Create a copy of PedidoLocalParam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PedidoVentaLineaCopyWith<$Res>? get addLineaDesdeArticulo {
    if (_self.addLineaDesdeArticulo == null) {
    return null;
  }

  return $PedidoVentaLineaCopyWith<$Res>(_self.addLineaDesdeArticulo!, (value) {
    return _then(_self.copyWith(addLineaDesdeArticulo: value));
  });
}
}


/// Adds pattern-matching-related methods to [PedidoLocalParam].
extension PedidoLocalParamPatterns on PedidoLocalParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoLocalParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoLocalParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoLocalParam value)  $default,){
final _that = this;
switch (_that) {
case _PedidoLocalParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoLocalParam value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoLocalParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? pedidoAppId,  String? pedidoId,  String? empresaId,  bool isEdit,  bool? tratada,  String? createPedidoFromClienteId,  PedidoVentaLinea? addLineaDesdeArticulo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoLocalParam() when $default != null:
return $default(_that.pedidoAppId,_that.pedidoId,_that.empresaId,_that.isEdit,_that.tratada,_that.createPedidoFromClienteId,_that.addLineaDesdeArticulo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? pedidoAppId,  String? pedidoId,  String? empresaId,  bool isEdit,  bool? tratada,  String? createPedidoFromClienteId,  PedidoVentaLinea? addLineaDesdeArticulo)  $default,) {final _that = this;
switch (_that) {
case _PedidoLocalParam():
return $default(_that.pedidoAppId,_that.pedidoId,_that.empresaId,_that.isEdit,_that.tratada,_that.createPedidoFromClienteId,_that.addLineaDesdeArticulo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? pedidoAppId,  String? pedidoId,  String? empresaId,  bool isEdit,  bool? tratada,  String? createPedidoFromClienteId,  PedidoVentaLinea? addLineaDesdeArticulo)?  $default,) {final _that = this;
switch (_that) {
case _PedidoLocalParam() when $default != null:
return $default(_that.pedidoAppId,_that.pedidoId,_that.empresaId,_that.isEdit,_that.tratada,_that.createPedidoFromClienteId,_that.addLineaDesdeArticulo);case _:
  return null;

}
}

}

/// @nodoc


class _PedidoLocalParam extends PedidoLocalParam {
  const _PedidoLocalParam({this.pedidoAppId, this.pedidoId, this.empresaId, required this.isEdit, this.tratada, this.createPedidoFromClienteId, this.addLineaDesdeArticulo}): super._();
  

@override final  String? pedidoAppId;
@override final  String? pedidoId;
@override final  String? empresaId;
@override final  bool isEdit;
@override final  bool? tratada;
@override final  String? createPedidoFromClienteId;
@override final  PedidoVentaLinea? addLineaDesdeArticulo;

/// Create a copy of PedidoLocalParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoLocalParamCopyWith<_PedidoLocalParam> get copyWith => __$PedidoLocalParamCopyWithImpl<_PedidoLocalParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoLocalParam&&(identical(other.pedidoAppId, pedidoAppId) || other.pedidoAppId == pedidoAppId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.isEdit, isEdit) || other.isEdit == isEdit)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.createPedidoFromClienteId, createPedidoFromClienteId) || other.createPedidoFromClienteId == createPedidoFromClienteId)&&(identical(other.addLineaDesdeArticulo, addLineaDesdeArticulo) || other.addLineaDesdeArticulo == addLineaDesdeArticulo));
}


@override
int get hashCode => Object.hash(runtimeType,pedidoAppId,pedidoId,empresaId,isEdit,tratada,createPedidoFromClienteId,addLineaDesdeArticulo);

@override
String toString() {
  return 'PedidoLocalParam(pedidoAppId: $pedidoAppId, pedidoId: $pedidoId, empresaId: $empresaId, isEdit: $isEdit, tratada: $tratada, createPedidoFromClienteId: $createPedidoFromClienteId, addLineaDesdeArticulo: $addLineaDesdeArticulo)';
}


}

/// @nodoc
abstract mixin class _$PedidoLocalParamCopyWith<$Res> implements $PedidoLocalParamCopyWith<$Res> {
  factory _$PedidoLocalParamCopyWith(_PedidoLocalParam value, $Res Function(_PedidoLocalParam) _then) = __$PedidoLocalParamCopyWithImpl;
@override @useResult
$Res call({
 String? pedidoAppId, String? pedidoId, String? empresaId, bool isEdit, bool? tratada, String? createPedidoFromClienteId, PedidoVentaLinea? addLineaDesdeArticulo
});


@override $PedidoVentaLineaCopyWith<$Res>? get addLineaDesdeArticulo;

}
/// @nodoc
class __$PedidoLocalParamCopyWithImpl<$Res>
    implements _$PedidoLocalParamCopyWith<$Res> {
  __$PedidoLocalParamCopyWithImpl(this._self, this._then);

  final _PedidoLocalParam _self;
  final $Res Function(_PedidoLocalParam) _then;

/// Create a copy of PedidoLocalParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pedidoAppId = freezed,Object? pedidoId = freezed,Object? empresaId = freezed,Object? isEdit = null,Object? tratada = freezed,Object? createPedidoFromClienteId = freezed,Object? addLineaDesdeArticulo = freezed,}) {
  return _then(_PedidoLocalParam(
pedidoAppId: freezed == pedidoAppId ? _self.pedidoAppId : pedidoAppId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,isEdit: null == isEdit ? _self.isEdit : isEdit // ignore: cast_nullable_to_non_nullable
as bool,tratada: freezed == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as bool?,createPedidoFromClienteId: freezed == createPedidoFromClienteId ? _self.createPedidoFromClienteId : createPedidoFromClienteId // ignore: cast_nullable_to_non_nullable
as String?,addLineaDesdeArticulo: freezed == addLineaDesdeArticulo ? _self.addLineaDesdeArticulo : addLineaDesdeArticulo // ignore: cast_nullable_to_non_nullable
as PedidoVentaLinea?,
  ));
}

/// Create a copy of PedidoLocalParam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PedidoVentaLineaCopyWith<$Res>? get addLineaDesdeArticulo {
    if (_self.addLineaDesdeArticulo == null) {
    return null;
  }

  return $PedidoVentaLineaCopyWith<$Res>(_self.addLineaDesdeArticulo!, (value) {
    return _then(_self.copyWith(addLineaDesdeArticulo: value));
  });
}
}

// dart format on
