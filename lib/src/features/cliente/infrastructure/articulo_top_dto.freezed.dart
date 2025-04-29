// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_top_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArticuloTopDTO _$ArticuloTopDTOFromJson(Map<String, dynamic> json) {
  return _ArticuloTopDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloTopDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_ES')
  String get descripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_TOTAL')
  double get ventasTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_CLIENTE')
  double get ventasCliente => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId => throw _privateConstructorUsedError;

  /// Serializes this ArticuloTopDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticuloTopDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticuloTopDTOCopyWith<ArticuloTopDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloTopDTOCopyWith<$Res> {
  factory $ArticuloTopDTOCopyWith(
    ArticuloTopDTO value,
    $Res Function(ArticuloTopDTO) then,
  ) = _$ArticuloTopDTOCopyWithImpl<$Res, ArticuloTopDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'ARTICULO_ID') String articuloId,
    @JsonKey(name: 'DESCRIPCION_ES') String descripcion,
    @JsonKey(name: 'VENTAS_TOTAL') double ventasTotal,
    @JsonKey(name: 'VENTAS_CLIENTE') double ventasCliente,
    @JsonKey(name: 'DIVISA_ID') String divisaId,
  });
}

/// @nodoc
class _$ArticuloTopDTOCopyWithImpl<$Res, $Val extends ArticuloTopDTO>
    implements $ArticuloTopDTOCopyWith<$Res> {
  _$ArticuloTopDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticuloTopDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? descripcion = null,
    Object? ventasTotal = null,
    Object? ventasCliente = null,
    Object? divisaId = null,
  }) {
    return _then(
      _value.copyWith(
            articuloId:
                null == articuloId
                    ? _value.articuloId
                    : articuloId // ignore: cast_nullable_to_non_nullable
                        as String,
            descripcion:
                null == descripcion
                    ? _value.descripcion
                    : descripcion // ignore: cast_nullable_to_non_nullable
                        as String,
            ventasTotal:
                null == ventasTotal
                    ? _value.ventasTotal
                    : ventasTotal // ignore: cast_nullable_to_non_nullable
                        as double,
            ventasCliente:
                null == ventasCliente
                    ? _value.ventasCliente
                    : ventasCliente // ignore: cast_nullable_to_non_nullable
                        as double,
            divisaId:
                null == divisaId
                    ? _value.divisaId
                    : divisaId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArticuloTopDTOImplCopyWith<$Res>
    implements $ArticuloTopDTOCopyWith<$Res> {
  factory _$$ArticuloTopDTOImplCopyWith(
    _$ArticuloTopDTOImpl value,
    $Res Function(_$ArticuloTopDTOImpl) then,
  ) = __$$ArticuloTopDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ARTICULO_ID') String articuloId,
    @JsonKey(name: 'DESCRIPCION_ES') String descripcion,
    @JsonKey(name: 'VENTAS_TOTAL') double ventasTotal,
    @JsonKey(name: 'VENTAS_CLIENTE') double ventasCliente,
    @JsonKey(name: 'DIVISA_ID') String divisaId,
  });
}

/// @nodoc
class __$$ArticuloTopDTOImplCopyWithImpl<$Res>
    extends _$ArticuloTopDTOCopyWithImpl<$Res, _$ArticuloTopDTOImpl>
    implements _$$ArticuloTopDTOImplCopyWith<$Res> {
  __$$ArticuloTopDTOImplCopyWithImpl(
    _$ArticuloTopDTOImpl _value,
    $Res Function(_$ArticuloTopDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArticuloTopDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? descripcion = null,
    Object? ventasTotal = null,
    Object? ventasCliente = null,
    Object? divisaId = null,
  }) {
    return _then(
      _$ArticuloTopDTOImpl(
        articuloId:
            null == articuloId
                ? _value.articuloId
                : articuloId // ignore: cast_nullable_to_non_nullable
                    as String,
        descripcion:
            null == descripcion
                ? _value.descripcion
                : descripcion // ignore: cast_nullable_to_non_nullable
                    as String,
        ventasTotal:
            null == ventasTotal
                ? _value.ventasTotal
                : ventasTotal // ignore: cast_nullable_to_non_nullable
                    as double,
        ventasCliente:
            null == ventasCliente
                ? _value.ventasCliente
                : ventasCliente // ignore: cast_nullable_to_non_nullable
                    as double,
        divisaId:
            null == divisaId
                ? _value.divisaId
                : divisaId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticuloTopDTOImpl extends _ArticuloTopDTO {
  const _$ArticuloTopDTOImpl({
    @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
    @JsonKey(name: 'DESCRIPCION_ES') required this.descripcion,
    @JsonKey(name: 'VENTAS_TOTAL') required this.ventasTotal,
    @JsonKey(name: 'VENTAS_CLIENTE') required this.ventasCliente,
    @JsonKey(name: 'DIVISA_ID') required this.divisaId,
  }) : super._();

  factory _$ArticuloTopDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticuloTopDTOImplFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'DESCRIPCION_ES')
  final String descripcion;
  @override
  @JsonKey(name: 'VENTAS_TOTAL')
  final double ventasTotal;
  @override
  @JsonKey(name: 'VENTAS_CLIENTE')
  final double ventasCliente;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String divisaId;

  @override
  String toString() {
    return 'ArticuloTopDTO(articuloId: $articuloId, descripcion: $descripcion, ventasTotal: $ventasTotal, ventasCliente: $ventasCliente, divisaId: $divisaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloTopDTOImpl &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.ventasTotal, ventasTotal) ||
                other.ventasTotal == ventasTotal) &&
            (identical(other.ventasCliente, ventasCliente) ||
                other.ventasCliente == ventasCliente) &&
            (identical(other.divisaId, divisaId) ||
                other.divisaId == divisaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    articuloId,
    descripcion,
    ventasTotal,
    ventasCliente,
    divisaId,
  );

  /// Create a copy of ArticuloTopDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloTopDTOImplCopyWith<_$ArticuloTopDTOImpl> get copyWith =>
      __$$ArticuloTopDTOImplCopyWithImpl<_$ArticuloTopDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticuloTopDTOImplToJson(this);
  }
}

abstract class _ArticuloTopDTO extends ArticuloTopDTO {
  const factory _ArticuloTopDTO({
    @JsonKey(name: 'ARTICULO_ID') required final String articuloId,
    @JsonKey(name: 'DESCRIPCION_ES') required final String descripcion,
    @JsonKey(name: 'VENTAS_TOTAL') required final double ventasTotal,
    @JsonKey(name: 'VENTAS_CLIENTE') required final double ventasCliente,
    @JsonKey(name: 'DIVISA_ID') required final String divisaId,
  }) = _$ArticuloTopDTOImpl;
  const _ArticuloTopDTO._() : super._();

  factory _ArticuloTopDTO.fromJson(Map<String, dynamic> json) =
      _$ArticuloTopDTOImpl.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'DESCRIPCION_ES')
  String get descripcion;
  @override
  @JsonKey(name: 'VENTAS_TOTAL')
  double get ventasTotal;
  @override
  @JsonKey(name: 'VENTAS_CLIENTE')
  double get ventasCliente;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId;

  /// Create a copy of ArticuloTopDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticuloTopDTOImplCopyWith<_$ArticuloTopDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
