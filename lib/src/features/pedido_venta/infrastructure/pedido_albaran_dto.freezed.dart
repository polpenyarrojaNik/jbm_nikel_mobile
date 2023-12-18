// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_albaran_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PedidoAlbaranDTO _$PedidoAlbaranDTOFromJson(Map<String, dynamic> json) {
  return _PedidoAlbaranDTO.fromJson(json);
}

/// @nodoc
mixin _$PedidoAlbaranDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ID')
  String get pedidoVentaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ALBARAN_ID')
  String get albaranId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_ALBARAN')
  DateTime get fechaAlbaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'AGENCIA')
  String? get agencia => throw _privateConstructorUsedError;
  @JsonKey(name: 'TRACK_ID')
  String? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PedidoAlbaranDTOCopyWith<PedidoAlbaranDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoAlbaranDTOCopyWith<$Res> {
  factory $PedidoAlbaranDTOCopyWith(
          PedidoAlbaranDTO value, $Res Function(PedidoAlbaranDTO) then) =
      _$PedidoAlbaranDTOCopyWithImpl<$Res, PedidoAlbaranDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,
      @JsonKey(name: 'ALBARAN_ID') String albaranId,
      @JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,
      @JsonKey(name: 'AGENCIA') String? agencia,
      @JsonKey(name: 'TRACK_ID') String? trackId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$PedidoAlbaranDTOCopyWithImpl<$Res, $Val extends PedidoAlbaranDTO>
    implements $PedidoAlbaranDTOCopyWith<$Res> {
  _$PedidoAlbaranDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoVentaId = null,
    Object? albaranId = null,
    Object? fechaAlbaran = null,
    Object? agencia = freezed,
    Object? trackId = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaId: null == pedidoVentaId
          ? _value.pedidoVentaId
          : pedidoVentaId // ignore: cast_nullable_to_non_nullable
              as String,
      albaranId: null == albaranId
          ? _value.albaranId
          : albaranId // ignore: cast_nullable_to_non_nullable
              as String,
      fechaAlbaran: null == fechaAlbaran
          ? _value.fechaAlbaran
          : fechaAlbaran // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agencia: freezed == agencia
          ? _value.agencia
          : agencia // ignore: cast_nullable_to_non_nullable
              as String?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PedidoAlbaranDTOImplCopyWith<$Res>
    implements $PedidoAlbaranDTOCopyWith<$Res> {
  factory _$$PedidoAlbaranDTOImplCopyWith(_$PedidoAlbaranDTOImpl value,
          $Res Function(_$PedidoAlbaranDTOImpl) then) =
      __$$PedidoAlbaranDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,
      @JsonKey(name: 'ALBARAN_ID') String albaranId,
      @JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,
      @JsonKey(name: 'AGENCIA') String? agencia,
      @JsonKey(name: 'TRACK_ID') String? trackId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$PedidoAlbaranDTOImplCopyWithImpl<$Res>
    extends _$PedidoAlbaranDTOCopyWithImpl<$Res, _$PedidoAlbaranDTOImpl>
    implements _$$PedidoAlbaranDTOImplCopyWith<$Res> {
  __$$PedidoAlbaranDTOImplCopyWithImpl(_$PedidoAlbaranDTOImpl _value,
      $Res Function(_$PedidoAlbaranDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoVentaId = null,
    Object? albaranId = null,
    Object? fechaAlbaran = null,
    Object? agencia = freezed,
    Object? trackId = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$PedidoAlbaranDTOImpl(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaId: null == pedidoVentaId
          ? _value.pedidoVentaId
          : pedidoVentaId // ignore: cast_nullable_to_non_nullable
              as String,
      albaranId: null == albaranId
          ? _value.albaranId
          : albaranId // ignore: cast_nullable_to_non_nullable
              as String,
      fechaAlbaran: null == fechaAlbaran
          ? _value.fechaAlbaran
          : fechaAlbaran // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agencia: freezed == agencia
          ? _value.agencia
          : agencia // ignore: cast_nullable_to_non_nullable
              as String?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PedidoAlbaranDTOImpl extends _PedidoAlbaranDTO {
  const _$PedidoAlbaranDTOImpl(
      {@JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'PEDIDO_ID') required this.pedidoVentaId,
      @JsonKey(name: 'ALBARAN_ID') required this.albaranId,
      @JsonKey(name: 'FECHA_ALBARAN') required this.fechaAlbaran,
      @JsonKey(name: 'AGENCIA') this.agencia,
      @JsonKey(name: 'TRACK_ID') this.trackId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') required this.deleted})
      : super._();

  factory _$PedidoAlbaranDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PedidoAlbaranDTOImplFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  final String pedidoVentaId;
  @override
  @JsonKey(name: 'ALBARAN_ID')
  final String albaranId;
  @override
  @JsonKey(name: 'FECHA_ALBARAN')
  final DateTime fechaAlbaran;
  @override
  @JsonKey(name: 'AGENCIA')
  final String? agencia;
  @override
  @JsonKey(name: 'TRACK_ID')
  final String? trackId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'PedidoAlbaranDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, albaranId: $albaranId, fechaAlbaran: $fechaAlbaran, agencia: $agencia, trackId: $trackId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoAlbaranDTOImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoVentaId, pedidoVentaId) ||
                other.pedidoVentaId == pedidoVentaId) &&
            (identical(other.albaranId, albaranId) ||
                other.albaranId == albaranId) &&
            (identical(other.fechaAlbaran, fechaAlbaran) ||
                other.fechaAlbaran == fechaAlbaran) &&
            (identical(other.agencia, agencia) || other.agencia == agencia) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, empresaId, pedidoVentaId,
      albaranId, fechaAlbaran, agencia, trackId, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PedidoAlbaranDTOImplCopyWith<_$PedidoAlbaranDTOImpl> get copyWith =>
      __$$PedidoAlbaranDTOImplCopyWithImpl<_$PedidoAlbaranDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PedidoAlbaranDTOImplToJson(
      this,
    );
  }
}

abstract class _PedidoAlbaranDTO extends PedidoAlbaranDTO {
  const factory _PedidoAlbaranDTO(
          {@JsonKey(name: 'EMPRESA_ID') required final String empresaId,
          @JsonKey(name: 'PEDIDO_ID') required final String pedidoVentaId,
          @JsonKey(name: 'ALBARAN_ID') required final String albaranId,
          @JsonKey(name: 'FECHA_ALBARAN') required final DateTime fechaAlbaran,
          @JsonKey(name: 'AGENCIA') final String? agencia,
          @JsonKey(name: 'TRACK_ID') final String? trackId,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') required final String deleted}) =
      _$PedidoAlbaranDTOImpl;
  const _PedidoAlbaranDTO._() : super._();

  factory _PedidoAlbaranDTO.fromJson(Map<String, dynamic> json) =
      _$PedidoAlbaranDTOImpl.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  String get pedidoVentaId;
  @override
  @JsonKey(name: 'ALBARAN_ID')
  String get albaranId;
  @override
  @JsonKey(name: 'FECHA_ALBARAN')
  DateTime get fechaAlbaran;
  @override
  @JsonKey(name: 'AGENCIA')
  String? get agencia;
  @override
  @JsonKey(name: 'TRACK_ID')
  String? get trackId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$PedidoAlbaranDTOImplCopyWith<_$PedidoAlbaranDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
