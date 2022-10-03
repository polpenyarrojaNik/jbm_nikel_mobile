// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'adjunto_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdjuntoParam {
  String get id => throw _privateConstructorUsedError;
  String? get nombreArchivo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdjuntoParamCopyWith<AdjuntoParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjuntoParamCopyWith<$Res> {
  factory $AdjuntoParamCopyWith(
          AdjuntoParam value, $Res Function(AdjuntoParam) then) =
      _$AdjuntoParamCopyWithImpl<$Res>;
  $Res call({String id, String? nombreArchivo});
}

/// @nodoc
class _$AdjuntoParamCopyWithImpl<$Res> implements $AdjuntoParamCopyWith<$Res> {
  _$AdjuntoParamCopyWithImpl(this._value, this._then);

  final AdjuntoParam _value;
  // ignore: unused_field
  final $Res Function(AdjuntoParam) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombreArchivo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: nombreArchivo == freezed
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AdjuntoParamCopyWith<$Res>
    implements $AdjuntoParamCopyWith<$Res> {
  factory _$$_AdjuntoParamCopyWith(
          _$_AdjuntoParam value, $Res Function(_$_AdjuntoParam) then) =
      __$$_AdjuntoParamCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? nombreArchivo});
}

/// @nodoc
class __$$_AdjuntoParamCopyWithImpl<$Res>
    extends _$AdjuntoParamCopyWithImpl<$Res>
    implements _$$_AdjuntoParamCopyWith<$Res> {
  __$$_AdjuntoParamCopyWithImpl(
      _$_AdjuntoParam _value, $Res Function(_$_AdjuntoParam) _then)
      : super(_value, (v) => _then(v as _$_AdjuntoParam));

  @override
  _$_AdjuntoParam get _value => super._value as _$_AdjuntoParam;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombreArchivo = freezed,
  }) {
    return _then(_$_AdjuntoParam(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: nombreArchivo == freezed
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AdjuntoParam extends _AdjuntoParam {
  const _$_AdjuntoParam({required this.id, required this.nombreArchivo})
      : super._();

  @override
  final String id;
  @override
  final String? nombreArchivo;

  @override
  String toString() {
    return 'AdjuntoParam(id: $id, nombreArchivo: $nombreArchivo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdjuntoParam &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.nombreArchivo, nombreArchivo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nombreArchivo));

  @JsonKey(ignore: true)
  @override
  _$$_AdjuntoParamCopyWith<_$_AdjuntoParam> get copyWith =>
      __$$_AdjuntoParamCopyWithImpl<_$_AdjuntoParam>(this, _$identity);
}

abstract class _AdjuntoParam extends AdjuntoParam {
  const factory _AdjuntoParam(
      {required final String id,
      required final String? nombreArchivo}) = _$_AdjuntoParam;
  const _AdjuntoParam._() : super._();

  @override
  String get id;
  @override
  String? get nombreArchivo;
  @override
  @JsonKey(ignore: true)
  _$$_AdjuntoParamCopyWith<_$_AdjuntoParam> get copyWith =>
      throw _privateConstructorUsedError;
}
