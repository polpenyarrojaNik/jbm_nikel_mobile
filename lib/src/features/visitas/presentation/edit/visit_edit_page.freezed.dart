// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_edit_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VisitEditScreenData {

 Visita? get visita; List<Pais> get paises; List<Provincia> get provincias; Cliente? get createVisitaFromCliente;
/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitEditScreenDataCopyWith<VisitEditScreenData> get copyWith => _$VisitEditScreenDataCopyWithImpl<VisitEditScreenData>(this as VisitEditScreenData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitEditScreenData&&(identical(other.visita, visita) || other.visita == visita)&&const DeepCollectionEquality().equals(other.paises, paises)&&const DeepCollectionEquality().equals(other.provincias, provincias)&&(identical(other.createVisitaFromCliente, createVisitaFromCliente) || other.createVisitaFromCliente == createVisitaFromCliente));
}


@override
int get hashCode => Object.hash(runtimeType,visita,const DeepCollectionEquality().hash(paises),const DeepCollectionEquality().hash(provincias),createVisitaFromCliente);

@override
String toString() {
  return 'VisitEditScreenData(visita: $visita, paises: $paises, provincias: $provincias, createVisitaFromCliente: $createVisitaFromCliente)';
}


}

/// @nodoc
abstract mixin class $VisitEditScreenDataCopyWith<$Res>  {
  factory $VisitEditScreenDataCopyWith(VisitEditScreenData value, $Res Function(VisitEditScreenData) _then) = _$VisitEditScreenDataCopyWithImpl;
@useResult
$Res call({
 Visita? visita, List<Pais> paises, List<Provincia> provincias, Cliente? createVisitaFromCliente
});


$VisitaCopyWith<$Res>? get visita;$ClienteCopyWith<$Res>? get createVisitaFromCliente;

}
/// @nodoc
class _$VisitEditScreenDataCopyWithImpl<$Res>
    implements $VisitEditScreenDataCopyWith<$Res> {
  _$VisitEditScreenDataCopyWithImpl(this._self, this._then);

  final VisitEditScreenData _self;
  final $Res Function(VisitEditScreenData) _then;

/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visita = freezed,Object? paises = null,Object? provincias = null,Object? createVisitaFromCliente = freezed,}) {
  return _then(VisitEditScreenData(
visita: freezed == visita ? _self.visita : visita // ignore: cast_nullable_to_non_nullable
as Visita?,paises: null == paises ? _self.paises : paises // ignore: cast_nullable_to_non_nullable
as List<Pais>,provincias: null == provincias ? _self.provincias : provincias // ignore: cast_nullable_to_non_nullable
as List<Provincia>,createVisitaFromCliente: freezed == createVisitaFromCliente ? _self.createVisitaFromCliente : createVisitaFromCliente // ignore: cast_nullable_to_non_nullable
as Cliente?,
  ));
}
/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisitaCopyWith<$Res>? get visita {
    if (_self.visita == null) {
    return null;
  }

  return $VisitaCopyWith<$Res>(_self.visita!, (value) {
    return _then(_self.copyWith(visita: value));
  });
}/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res>? get createVisitaFromCliente {
    if (_self.createVisitaFromCliente == null) {
    return null;
  }

  return $ClienteCopyWith<$Res>(_self.createVisitaFromCliente!, (value) {
    return _then(_self.copyWith(createVisitaFromCliente: value));
  });
}
}


/// Adds pattern-matching-related methods to [VisitEditScreenData].
extension VisitEditScreenDataPatterns on VisitEditScreenData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitEditScreenData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitEditScreenData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitEditScreenData value)  $default,){
final _that = this;
switch (_that) {
case _VisitEditScreenData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitEditScreenData value)?  $default,){
final _that = this;
switch (_that) {
case _VisitEditScreenData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Visita? visita,  List<Pais> paises,  List<Provincia> provincias,  Cliente? createVisitaFromCliente)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitEditScreenData() when $default != null:
return $default(_that.visita,_that.paises,_that.provincias,_that.createVisitaFromCliente);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Visita? visita,  List<Pais> paises,  List<Provincia> provincias,  Cliente? createVisitaFromCliente)  $default,) {final _that = this;
switch (_that) {
case _VisitEditScreenData():
return $default(_that.visita,_that.paises,_that.provincias,_that.createVisitaFromCliente);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Visita? visita,  List<Pais> paises,  List<Provincia> provincias,  Cliente? createVisitaFromCliente)?  $default,) {final _that = this;
switch (_that) {
case _VisitEditScreenData() when $default != null:
return $default(_that.visita,_that.paises,_that.provincias,_that.createVisitaFromCliente);case _:
  return null;

}
}

}

/// @nodoc


class _VisitEditScreenData extends VisitEditScreenData {
  const _VisitEditScreenData({this.visita, required  List<Pais> paises, required  List<Provincia> provincias, this.createVisitaFromCliente}): _paises = paises,_provincias = provincias,super._();
  

@override final  Visita? visita;
 final  List<Pais> _paises;
@override List<Pais> get paises {
  if (_paises is EqualUnmodifiableListView) return _paises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paises);
}

 final  List<Provincia> _provincias;
@override List<Provincia> get provincias {
  if (_provincias is EqualUnmodifiableListView) return _provincias;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_provincias);
}

@override final  Cliente? createVisitaFromCliente;

/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitEditScreenDataCopyWith<_VisitEditScreenData> get copyWith => __$VisitEditScreenDataCopyWithImpl<_VisitEditScreenData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitEditScreenData&&(identical(other.visita, visita) || other.visita == visita)&&const DeepCollectionEquality().equals(other._paises, _paises)&&const DeepCollectionEquality().equals(other._provincias, _provincias)&&(identical(other.createVisitaFromCliente, createVisitaFromCliente) || other.createVisitaFromCliente == createVisitaFromCliente));
}


@override
int get hashCode => Object.hash(runtimeType,visita,const DeepCollectionEquality().hash(_paises),const DeepCollectionEquality().hash(_provincias),createVisitaFromCliente);

@override
String toString() {
  return 'VisitEditScreenData(visita: $visita, paises: $paises, provincias: $provincias, createVisitaFromCliente: $createVisitaFromCliente)';
}


}

/// @nodoc
abstract mixin class _$VisitEditScreenDataCopyWith<$Res> implements $VisitEditScreenDataCopyWith<$Res> {
  factory _$VisitEditScreenDataCopyWith(_VisitEditScreenData value, $Res Function(_VisitEditScreenData) _then) = __$VisitEditScreenDataCopyWithImpl;
@override @useResult
$Res call({
 Visita? visita, List<Pais> paises, List<Provincia> provincias, Cliente? createVisitaFromCliente
});


@override $VisitaCopyWith<$Res>? get visita;@override $ClienteCopyWith<$Res>? get createVisitaFromCliente;

}
/// @nodoc
class __$VisitEditScreenDataCopyWithImpl<$Res>
    implements _$VisitEditScreenDataCopyWith<$Res> {
  __$VisitEditScreenDataCopyWithImpl(this._self, this._then);

  final _VisitEditScreenData _self;
  final $Res Function(_VisitEditScreenData) _then;

/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visita = freezed,Object? paises = null,Object? provincias = null,Object? createVisitaFromCliente = freezed,}) {
  return _then(_VisitEditScreenData(
visita: freezed == visita ? _self.visita : visita // ignore: cast_nullable_to_non_nullable
as Visita?,paises: null == paises ? _self._paises : paises // ignore: cast_nullable_to_non_nullable
as List<Pais>,provincias: null == provincias ? _self._provincias : provincias // ignore: cast_nullable_to_non_nullable
as List<Provincia>,createVisitaFromCliente: freezed == createVisitaFromCliente ? _self.createVisitaFromCliente : createVisitaFromCliente // ignore: cast_nullable_to_non_nullable
as Cliente?,
  ));
}

/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VisitaCopyWith<$Res>? get visita {
    if (_self.visita == null) {
    return null;
  }

  return $VisitaCopyWith<$Res>(_self.visita!, (value) {
    return _then(_self.copyWith(visita: value));
  });
}/// Create a copy of VisitEditScreenData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res>? get createVisitaFromCliente {
    if (_self.createVisitaFromCliente == null) {
    return null;
  }

  return $ClienteCopyWith<$Res>(_self.createVisitaFromCliente!, (value) {
    return _then(_self.copyWith(createVisitaFromCliente: value));
  });
}
}

// dart format on
