// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipo_catalogo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipoCatalogo {
  String get tipoCatalogoId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipoCatalogoCopyWith<TipoCatalogo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipoCatalogoCopyWith<$Res> {
  factory $TipoCatalogoCopyWith(
          TipoCatalogo value, $Res Function(TipoCatalogo) then) =
      _$TipoCatalogoCopyWithImpl<$Res, TipoCatalogo>;
  @useResult
  $Res call({String tipoCatalogoId, String descripcion});
}

/// @nodoc
class _$TipoCatalogoCopyWithImpl<$Res, $Val extends TipoCatalogo>
    implements $TipoCatalogoCopyWith<$Res> {
  _$TipoCatalogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipoCatalogoId = null,
    Object? descripcion = null,
  }) {
    return _then(_value.copyWith(
      tipoCatalogoId: null == tipoCatalogoId
          ? _value.tipoCatalogoId
          : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipoCatalogoImplCopyWith<$Res>
    implements $TipoCatalogoCopyWith<$Res> {
  factory _$$TipoCatalogoImplCopyWith(
          _$TipoCatalogoImpl value, $Res Function(_$TipoCatalogoImpl) then) =
      __$$TipoCatalogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tipoCatalogoId, String descripcion});
}

/// @nodoc
class __$$TipoCatalogoImplCopyWithImpl<$Res>
    extends _$TipoCatalogoCopyWithImpl<$Res, _$TipoCatalogoImpl>
    implements _$$TipoCatalogoImplCopyWith<$Res> {
  __$$TipoCatalogoImplCopyWithImpl(
      _$TipoCatalogoImpl _value, $Res Function(_$TipoCatalogoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipoCatalogoId = null,
    Object? descripcion = null,
  }) {
    return _then(_$TipoCatalogoImpl(
      tipoCatalogoId: null == tipoCatalogoId
          ? _value.tipoCatalogoId
          : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TipoCatalogoImpl extends _TipoCatalogo {
  const _$TipoCatalogoImpl(
      {required this.tipoCatalogoId, required this.descripcion})
      : super._();

  @override
  final String tipoCatalogoId;
  @override
  final String descripcion;

  @override
  String toString() {
    return 'TipoCatalogo(tipoCatalogoId: $tipoCatalogoId, descripcion: $descripcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipoCatalogoImpl &&
            (identical(other.tipoCatalogoId, tipoCatalogoId) ||
                other.tipoCatalogoId == tipoCatalogoId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tipoCatalogoId, descripcion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipoCatalogoImplCopyWith<_$TipoCatalogoImpl> get copyWith =>
      __$$TipoCatalogoImplCopyWithImpl<_$TipoCatalogoImpl>(this, _$identity);
}

abstract class _TipoCatalogo extends TipoCatalogo {
  const factory _TipoCatalogo(
      {required final String tipoCatalogoId,
      required final String descripcion}) = _$TipoCatalogoImpl;
  const _TipoCatalogo._() : super._();

  @override
  String get tipoCatalogoId;
  @override
  String get descripcion;
  @override
  @JsonKey(ignore: true)
  _$$TipoCatalogoImplCopyWith<_$TipoCatalogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
