// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'idioma_catalogo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IdiomaCatalogo {
  String get idiomaId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdiomaCatalogoCopyWith<IdiomaCatalogo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdiomaCatalogoCopyWith<$Res> {
  factory $IdiomaCatalogoCopyWith(
          IdiomaCatalogo value, $Res Function(IdiomaCatalogo) then) =
      _$IdiomaCatalogoCopyWithImpl<$Res, IdiomaCatalogo>;
  @useResult
  $Res call({String idiomaId, String descripcion});
}

/// @nodoc
class _$IdiomaCatalogoCopyWithImpl<$Res, $Val extends IdiomaCatalogo>
    implements $IdiomaCatalogoCopyWith<$Res> {
  _$IdiomaCatalogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idiomaId = null,
    Object? descripcion = null,
  }) {
    return _then(_value.copyWith(
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdiomaCatalogoImplCopyWith<$Res>
    implements $IdiomaCatalogoCopyWith<$Res> {
  factory _$$IdiomaCatalogoImplCopyWith(_$IdiomaCatalogoImpl value,
          $Res Function(_$IdiomaCatalogoImpl) then) =
      __$$IdiomaCatalogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idiomaId, String descripcion});
}

/// @nodoc
class __$$IdiomaCatalogoImplCopyWithImpl<$Res>
    extends _$IdiomaCatalogoCopyWithImpl<$Res, _$IdiomaCatalogoImpl>
    implements _$$IdiomaCatalogoImplCopyWith<$Res> {
  __$$IdiomaCatalogoImplCopyWithImpl(
      _$IdiomaCatalogoImpl _value, $Res Function(_$IdiomaCatalogoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idiomaId = null,
    Object? descripcion = null,
  }) {
    return _then(_$IdiomaCatalogoImpl(
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdiomaCatalogoImpl extends _IdiomaCatalogo {
  const _$IdiomaCatalogoImpl(
      {required this.idiomaId, required this.descripcion})
      : super._();

  @override
  final String idiomaId;
  @override
  final String descripcion;

  @override
  String toString() {
    return 'IdiomaCatalogo(idiomaId: $idiomaId, descripcion: $descripcion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdiomaCatalogoImpl &&
            (identical(other.idiomaId, idiomaId) ||
                other.idiomaId == idiomaId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idiomaId, descripcion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdiomaCatalogoImplCopyWith<_$IdiomaCatalogoImpl> get copyWith =>
      __$$IdiomaCatalogoImplCopyWithImpl<_$IdiomaCatalogoImpl>(
          this, _$identity);
}

abstract class _IdiomaCatalogo extends IdiomaCatalogo {
  const factory _IdiomaCatalogo(
      {required final String idiomaId,
      required final String descripcion}) = _$IdiomaCatalogoImpl;
  const _IdiomaCatalogo._() : super._();

  @override
  String get idiomaId;
  @override
  String get descripcion;
  @override
  @JsonKey(ignore: true)
  _$$IdiomaCatalogoImplCopyWith<_$IdiomaCatalogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
