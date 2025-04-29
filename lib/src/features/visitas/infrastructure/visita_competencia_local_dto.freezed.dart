// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_competencia_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisitaCompetenciaLocalDTO _$VisitaCompetenciaLocalDTOFromJson(
    Map<String, dynamic> json) {
  return _VisitaCompetenciaLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$VisitaCompetenciaLocalDTO {
  @JsonKey(name: 'COD_VISITA_APP')
  String get visitaAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_COMPETENCIA')
  int get codigoCompetencia => throw _privateConstructorUsedError;

  /// Serializes this VisitaCompetenciaLocalDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisitaCompetenciaLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitaCompetenciaLocalDTOCopyWith<VisitaCompetenciaLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaCompetenciaLocalDTOCopyWith<$Res> {
  factory $VisitaCompetenciaLocalDTOCopyWith(VisitaCompetenciaLocalDTO value,
          $Res Function(VisitaCompetenciaLocalDTO) then) =
      _$VisitaCompetenciaLocalDTOCopyWithImpl<$Res, VisitaCompetenciaLocalDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'COD_VISITA_APP') String visitaAppId,
      @JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia});
}

/// @nodoc
class _$VisitaCompetenciaLocalDTOCopyWithImpl<$Res,
        $Val extends VisitaCompetenciaLocalDTO>
    implements $VisitaCompetenciaLocalDTOCopyWith<$Res> {
  _$VisitaCompetenciaLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitaCompetenciaLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitaAppId = null,
    Object? codigoCompetencia = null,
  }) {
    return _then(_value.copyWith(
      visitaAppId: null == visitaAppId
          ? _value.visitaAppId
          : visitaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      codigoCompetencia: null == codigoCompetencia
          ? _value.codigoCompetencia
          : codigoCompetencia // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisitaCompetenciaLocalDTOImplCopyWith<$Res>
    implements $VisitaCompetenciaLocalDTOCopyWith<$Res> {
  factory _$$VisitaCompetenciaLocalDTOImplCopyWith(
          _$VisitaCompetenciaLocalDTOImpl value,
          $Res Function(_$VisitaCompetenciaLocalDTOImpl) then) =
      __$$VisitaCompetenciaLocalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'COD_VISITA_APP') String visitaAppId,
      @JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia});
}

/// @nodoc
class __$$VisitaCompetenciaLocalDTOImplCopyWithImpl<$Res>
    extends _$VisitaCompetenciaLocalDTOCopyWithImpl<$Res,
        _$VisitaCompetenciaLocalDTOImpl>
    implements _$$VisitaCompetenciaLocalDTOImplCopyWith<$Res> {
  __$$VisitaCompetenciaLocalDTOImplCopyWithImpl(
      _$VisitaCompetenciaLocalDTOImpl _value,
      $Res Function(_$VisitaCompetenciaLocalDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisitaCompetenciaLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitaAppId = null,
    Object? codigoCompetencia = null,
  }) {
    return _then(_$VisitaCompetenciaLocalDTOImpl(
      visitaAppId: null == visitaAppId
          ? _value.visitaAppId
          : visitaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      codigoCompetencia: null == codigoCompetencia
          ? _value.codigoCompetencia
          : codigoCompetencia // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisitaCompetenciaLocalDTOImpl extends _VisitaCompetenciaLocalDTO {
  const _$VisitaCompetenciaLocalDTOImpl(
      {@JsonKey(name: 'COD_VISITA_APP') required this.visitaAppId,
      @JsonKey(name: 'CODIGO_COMPETENCIA') required this.codigoCompetencia})
      : super._();

  factory _$VisitaCompetenciaLocalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitaCompetenciaLocalDTOImplFromJson(json);

  @override
  @JsonKey(name: 'COD_VISITA_APP')
  final String visitaAppId;
  @override
  @JsonKey(name: 'CODIGO_COMPETENCIA')
  final int codigoCompetencia;

  @override
  String toString() {
    return 'VisitaCompetenciaLocalDTO(visitaAppId: $visitaAppId, codigoCompetencia: $codigoCompetencia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitaCompetenciaLocalDTOImpl &&
            (identical(other.visitaAppId, visitaAppId) ||
                other.visitaAppId == visitaAppId) &&
            (identical(other.codigoCompetencia, codigoCompetencia) ||
                other.codigoCompetencia == codigoCompetencia));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, visitaAppId, codigoCompetencia);

  /// Create a copy of VisitaCompetenciaLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitaCompetenciaLocalDTOImplCopyWith<_$VisitaCompetenciaLocalDTOImpl>
      get copyWith => __$$VisitaCompetenciaLocalDTOImplCopyWithImpl<
          _$VisitaCompetenciaLocalDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitaCompetenciaLocalDTOImplToJson(
      this,
    );
  }
}

abstract class _VisitaCompetenciaLocalDTO extends VisitaCompetenciaLocalDTO {
  const factory _VisitaCompetenciaLocalDTO(
      {@JsonKey(name: 'COD_VISITA_APP') required final String visitaAppId,
      @JsonKey(name: 'CODIGO_COMPETENCIA')
      required final int codigoCompetencia}) = _$VisitaCompetenciaLocalDTOImpl;
  const _VisitaCompetenciaLocalDTO._() : super._();

  factory _VisitaCompetenciaLocalDTO.fromJson(Map<String, dynamic> json) =
      _$VisitaCompetenciaLocalDTOImpl.fromJson;

  @override
  @JsonKey(name: 'COD_VISITA_APP')
  String get visitaAppId;
  @override
  @JsonKey(name: 'CODIGO_COMPETENCIA')
  int get codigoCompetencia;

  /// Create a copy of VisitaCompetenciaLocalDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitaCompetenciaLocalDTOImplCopyWith<_$VisitaCompetenciaLocalDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
