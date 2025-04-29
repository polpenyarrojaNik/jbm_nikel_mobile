// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adjunto_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AdjuntoParam {
  String get id => throw _privateConstructorUsedError;
  String? get nombreArchivo => throw _privateConstructorUsedError;
  bool? get descarga => throw _privateConstructorUsedError;

  /// Create a copy of AdjuntoParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdjuntoParamCopyWith<AdjuntoParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjuntoParamCopyWith<$Res> {
  factory $AdjuntoParamCopyWith(
    AdjuntoParam value,
    $Res Function(AdjuntoParam) then,
  ) = _$AdjuntoParamCopyWithImpl<$Res, AdjuntoParam>;
  @useResult
  $Res call({String id, String? nombreArchivo, bool? descarga});
}

/// @nodoc
class _$AdjuntoParamCopyWithImpl<$Res, $Val extends AdjuntoParam>
    implements $AdjuntoParamCopyWith<$Res> {
  _$AdjuntoParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdjuntoParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombreArchivo = freezed,
    Object? descarga = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            nombreArchivo:
                freezed == nombreArchivo
                    ? _value.nombreArchivo
                    : nombreArchivo // ignore: cast_nullable_to_non_nullable
                        as String?,
            descarga:
                freezed == descarga
                    ? _value.descarga
                    : descarga // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdjuntoParamImplCopyWith<$Res>
    implements $AdjuntoParamCopyWith<$Res> {
  factory _$$AdjuntoParamImplCopyWith(
    _$AdjuntoParamImpl value,
    $Res Function(_$AdjuntoParamImpl) then,
  ) = __$$AdjuntoParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? nombreArchivo, bool? descarga});
}

/// @nodoc
class __$$AdjuntoParamImplCopyWithImpl<$Res>
    extends _$AdjuntoParamCopyWithImpl<$Res, _$AdjuntoParamImpl>
    implements _$$AdjuntoParamImplCopyWith<$Res> {
  __$$AdjuntoParamImplCopyWithImpl(
    _$AdjuntoParamImpl _value,
    $Res Function(_$AdjuntoParamImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdjuntoParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombreArchivo = freezed,
    Object? descarga = freezed,
  }) {
    return _then(
      _$AdjuntoParamImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        nombreArchivo:
            freezed == nombreArchivo
                ? _value.nombreArchivo
                : nombreArchivo // ignore: cast_nullable_to_non_nullable
                    as String?,
        descarga:
            freezed == descarga
                ? _value.descarga
                : descarga // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc

class _$AdjuntoParamImpl extends _AdjuntoParam {
  const _$AdjuntoParamImpl({
    required this.id,
    required this.nombreArchivo,
    this.descarga,
  }) : super._();

  @override
  final String id;
  @override
  final String? nombreArchivo;
  @override
  final bool? descarga;

  @override
  String toString() {
    return 'AdjuntoParam(id: $id, nombreArchivo: $nombreArchivo, descarga: $descarga)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdjuntoParamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombreArchivo, nombreArchivo) ||
                other.nombreArchivo == nombreArchivo) &&
            (identical(other.descarga, descarga) ||
                other.descarga == descarga));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nombreArchivo, descarga);

  /// Create a copy of AdjuntoParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdjuntoParamImplCopyWith<_$AdjuntoParamImpl> get copyWith =>
      __$$AdjuntoParamImplCopyWithImpl<_$AdjuntoParamImpl>(this, _$identity);
}

abstract class _AdjuntoParam extends AdjuntoParam {
  const factory _AdjuntoParam({
    required final String id,
    required final String? nombreArchivo,
    final bool? descarga,
  }) = _$AdjuntoParamImpl;
  const _AdjuntoParam._() : super._();

  @override
  String get id;
  @override
  String? get nombreArchivo;
  @override
  bool? get descarga;

  /// Create a copy of AdjuntoParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdjuntoParamImplCopyWith<_$AdjuntoParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
