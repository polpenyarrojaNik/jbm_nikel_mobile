// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_competencia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VisitaCompetenciaDTO _$VisitaCompetenciaDTOFromJson(Map<String, dynamic> json) {
  return _VisitaCompetenciaDTO.fromJson(json);
}

/// @nodoc
mixin _$VisitaCompetenciaDTO {
  @JsonKey(name: 'COD_VISITA')
  String get visitaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_COMPETENCIA')
  int get codigoCompetencia => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this VisitaCompetenciaDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisitaCompetenciaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitaCompetenciaDTOCopyWith<VisitaCompetenciaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaCompetenciaDTOCopyWith<$Res> {
  factory $VisitaCompetenciaDTOCopyWith(
    VisitaCompetenciaDTO value,
    $Res Function(VisitaCompetenciaDTO) then,
  ) = _$VisitaCompetenciaDTOCopyWithImpl<$Res, VisitaCompetenciaDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'COD_VISITA') String visitaId,
    @JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class _$VisitaCompetenciaDTOCopyWithImpl<
  $Res,
  $Val extends VisitaCompetenciaDTO
>
    implements $VisitaCompetenciaDTOCopyWith<$Res> {
  _$VisitaCompetenciaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitaCompetenciaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitaId = null,
    Object? codigoCompetencia = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _value.copyWith(
            visitaId:
                null == visitaId
                    ? _value.visitaId
                    : visitaId // ignore: cast_nullable_to_non_nullable
                        as String,
            codigoCompetencia:
                null == codigoCompetencia
                    ? _value.codigoCompetencia
                    : codigoCompetencia // ignore: cast_nullable_to_non_nullable
                        as int,
            lastUpdated:
                null == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VisitaCompetenciaDTOImplCopyWith<$Res>
    implements $VisitaCompetenciaDTOCopyWith<$Res> {
  factory _$$VisitaCompetenciaDTOImplCopyWith(
    _$VisitaCompetenciaDTOImpl value,
    $Res Function(_$VisitaCompetenciaDTOImpl) then,
  ) = __$$VisitaCompetenciaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'COD_VISITA') String visitaId,
    @JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class __$$VisitaCompetenciaDTOImplCopyWithImpl<$Res>
    extends _$VisitaCompetenciaDTOCopyWithImpl<$Res, _$VisitaCompetenciaDTOImpl>
    implements _$$VisitaCompetenciaDTOImplCopyWith<$Res> {
  __$$VisitaCompetenciaDTOImplCopyWithImpl(
    _$VisitaCompetenciaDTOImpl _value,
    $Res Function(_$VisitaCompetenciaDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitaCompetenciaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitaId = null,
    Object? codigoCompetencia = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _$VisitaCompetenciaDTOImpl(
        visitaId:
            null == visitaId
                ? _value.visitaId
                : visitaId // ignore: cast_nullable_to_non_nullable
                    as String,
        codigoCompetencia:
            null == codigoCompetencia
                ? _value.codigoCompetencia
                : codigoCompetencia // ignore: cast_nullable_to_non_nullable
                    as int,
        lastUpdated:
            null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VisitaCompetenciaDTOImpl extends _VisitaCompetenciaDTO {
  const _$VisitaCompetenciaDTOImpl({
    @JsonKey(name: 'COD_VISITA') required this.visitaId,
    @JsonKey(name: 'CODIGO_COMPETENCIA') required this.codigoCompetencia,
    @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
    @JsonKey(name: 'DELETED') this.deleted = 'N',
  }) : super._();

  factory _$VisitaCompetenciaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitaCompetenciaDTOImplFromJson(json);

  @override
  @JsonKey(name: 'COD_VISITA')
  final String visitaId;
  @override
  @JsonKey(name: 'CODIGO_COMPETENCIA')
  final int codigoCompetencia;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'VisitaCompetenciaDTO(visitaId: $visitaId, codigoCompetencia: $codigoCompetencia, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitaCompetenciaDTOImpl &&
            (identical(other.visitaId, visitaId) ||
                other.visitaId == visitaId) &&
            (identical(other.codigoCompetencia, codigoCompetencia) ||
                other.codigoCompetencia == codigoCompetencia) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    visitaId,
    codigoCompetencia,
    lastUpdated,
    deleted,
  );

  /// Create a copy of VisitaCompetenciaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitaCompetenciaDTOImplCopyWith<_$VisitaCompetenciaDTOImpl>
  get copyWith =>
      __$$VisitaCompetenciaDTOImplCopyWithImpl<_$VisitaCompetenciaDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitaCompetenciaDTOImplToJson(this);
  }
}

abstract class _VisitaCompetenciaDTO extends VisitaCompetenciaDTO {
  const factory _VisitaCompetenciaDTO({
    @JsonKey(name: 'COD_VISITA') required final String visitaId,
    @JsonKey(name: 'CODIGO_COMPETENCIA') required final int codigoCompetencia,
    @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
    @JsonKey(name: 'DELETED') final String deleted,
  }) = _$VisitaCompetenciaDTOImpl;
  const _VisitaCompetenciaDTO._() : super._();

  factory _VisitaCompetenciaDTO.fromJson(Map<String, dynamic> json) =
      _$VisitaCompetenciaDTOImpl.fromJson;

  @override
  @JsonKey(name: 'COD_VISITA')
  String get visitaId;
  @override
  @JsonKey(name: 'CODIGO_COMPETENCIA')
  int get codigoCompetencia;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of VisitaCompetenciaDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitaCompetenciaDTOImplCopyWith<_$VisitaCompetenciaDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
