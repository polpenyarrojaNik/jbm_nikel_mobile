// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipo_precio_catalogo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipoPrecioCatalogo {
  String get tipoPrecioCatalogoId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipoPrecioCatalogoCopyWith<TipoPrecioCatalogo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipoPrecioCatalogoCopyWith<$Res> {
  factory $TipoPrecioCatalogoCopyWith(
          TipoPrecioCatalogo value, $Res Function(TipoPrecioCatalogo) then) =
      _$TipoPrecioCatalogoCopyWithImpl<$Res, TipoPrecioCatalogo>;
  @useResult
  $Res call({String tipoPrecioCatalogoId, String descripcion});
}

/// @nodoc
class _$TipoPrecioCatalogoCopyWithImpl<$Res, $Val extends TipoPrecioCatalogo>
    implements $TipoPrecioCatalogoCopyWith<$Res> {
  _$TipoPrecioCatalogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipoPrecioCatalogoId = null,
    Object? descripcion = null,
  }) {
    return _then(_value.copyWith(
      tipoPrecioCatalogoId: null == tipoPrecioCatalogoId
          ? _value.tipoPrecioCatalogoId
          : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipoPrecioCatalogoImplCopyWith<$Res>
    implements $TipoPrecioCatalogoCopyWith<$Res> {
  factory _$$TipoPrecioCatalogoImplCopyWith(_$TipoPrecioCatalogoImpl value,
          $Res Function(_$TipoPrecioCatalogoImpl) then) =
      __$$TipoPrecioCatalogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tipoPrecioCatalogoId, String descripcion});
}

/// @nodoc
class __$$TipoPrecioCatalogoImplCopyWithImpl<$Res>
    extends _$TipoPrecioCatalogoCopyWithImpl<$Res, _$TipoPrecioCatalogoImpl>
    implements _$$TipoPrecioCatalogoImplCopyWith<$Res> {
  __$$TipoPrecioCatalogoImplCopyWithImpl(_$TipoPrecioCatalogoImpl _value,
      $Res Function(_$TipoPrecioCatalogoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tipoPrecioCatalogoId = null,
    Object? descripcion = null,
  }) {
    return _then(_$TipoPrecioCatalogoImpl(
      tipoPrecioCatalogoId: null == tipoPrecioCatalogoId
          ? _value.tipoPrecioCatalogoId
          : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TipoPrecioCatalogoImpl extends _TipoPrecioCatalogo {
  const _$TipoPrecioCatalogoImpl(
      {required this.tipoPrecioCatalogoId, required this.descripcion})
      : super._();

  @override
  final String tipoPrecioCatalogoId;
  @override
  final String descripcion;

  @override
  String toString() {
    return 'TipoPrecioCatalogo(tipoPrecioCatalogoId: $tipoPrecioCatalogoId, descripcion: $descripcion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipoPrecioCatalogoImpl &&
            (identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) ||
                other.tipoPrecioCatalogoId == tipoPrecioCatalogoId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tipoPrecioCatalogoId, descripcion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipoPrecioCatalogoImplCopyWith<_$TipoPrecioCatalogoImpl> get copyWith =>
      __$$TipoPrecioCatalogoImplCopyWithImpl<_$TipoPrecioCatalogoImpl>(
          this, _$identity);
}

abstract class _TipoPrecioCatalogo extends TipoPrecioCatalogo {
  const factory _TipoPrecioCatalogo(
      {required final String tipoPrecioCatalogoId,
      required final String descripcion}) = _$TipoPrecioCatalogoImpl;
  const _TipoPrecioCatalogo._() : super._();

  @override
  String get tipoPrecioCatalogoId;
  @override
  String get descripcion;
  @override
  @JsonKey(ignore: true)
  _$$TipoPrecioCatalogoImplCopyWith<_$TipoPrecioCatalogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
