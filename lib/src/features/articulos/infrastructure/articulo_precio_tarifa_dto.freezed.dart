// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_precio_tarifa_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloPrecioTarifaDTO _$ArticuloPrecioTarifaDTOFromJson(
    Map<String, dynamic> json) {
  return _ArticuloPrecioTarifaDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloPrecioTarifaDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_ID')
  String get tarifaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get tarifaDescripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DESDE')
  double get cantidadDesDe => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO')
  double get precio => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  double? get tipoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloPrecioTarifaDTOCopyWith<ArticuloPrecioTarifaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  factory $ArticuloPrecioTarifaDTOCopyWith(ArticuloPrecioTarifaDTO value,
          $Res Function(ArticuloPrecioTarifaDTO) then) =
      _$ArticuloPrecioTarifaDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'TARIFA_ID') String tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
      @JsonKey(name: 'CANTIDAD_DESDE') double cantidadDesDe,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'TIPO_PRECIO') double? tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticuloPrecioTarifaDTOCopyWithImpl<$Res>
    implements $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  _$ArticuloPrecioTarifaDTOCopyWithImpl(this._value, this._then);

  final ArticuloPrecioTarifaDTO _value;
  // ignore: unused_field
  final $Res Function(ArticuloPrecioTarifaDTO) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? tarifaId = freezed,
    Object? tarifaDescripcion = freezed,
    Object? cantidadDesDe = freezed,
    Object? precio = freezed,
    Object? divisaId = freezed,
    Object? tipoPrecio = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaId: tarifaId == freezed
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaDescripcion: tarifaDescripcion == freezed
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantidadDesDe: cantidadDesDe == freezed
          ? _value.cantidadDesDe
          : cantidadDesDe // ignore: cast_nullable_to_non_nullable
              as double,
      precio: precio == freezed
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      divisaId: divisaId == freezed
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticuloPrecioTarifaDTOCopyWith<$Res>
    implements $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  factory _$$_ArticuloPrecioTarifaDTOCopyWith(_$_ArticuloPrecioTarifaDTO value,
          $Res Function(_$_ArticuloPrecioTarifaDTO) then) =
      __$$_ArticuloPrecioTarifaDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'TARIFA_ID') String tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
      @JsonKey(name: 'CANTIDAD_DESDE') double cantidadDesDe,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'TIPO_PRECIO') double? tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticuloPrecioTarifaDTOCopyWithImpl<$Res>
    extends _$ArticuloPrecioTarifaDTOCopyWithImpl<$Res>
    implements _$$_ArticuloPrecioTarifaDTOCopyWith<$Res> {
  __$$_ArticuloPrecioTarifaDTOCopyWithImpl(_$_ArticuloPrecioTarifaDTO _value,
      $Res Function(_$_ArticuloPrecioTarifaDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticuloPrecioTarifaDTO));

  @override
  _$_ArticuloPrecioTarifaDTO get _value =>
      super._value as _$_ArticuloPrecioTarifaDTO;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? tarifaId = freezed,
    Object? tarifaDescripcion = freezed,
    Object? cantidadDesDe = freezed,
    Object? precio = freezed,
    Object? divisaId = freezed,
    Object? tipoPrecio = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticuloPrecioTarifaDTO(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaId: tarifaId == freezed
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaDescripcion: tarifaDescripcion == freezed
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantidadDesDe: cantidadDesDe == freezed
          ? _value.cantidadDesDe
          : cantidadDesDe // ignore: cast_nullable_to_non_nullable
              as double,
      precio: precio == freezed
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      divisaId: divisaId == freezed
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticuloPrecioTarifaDTO extends _ArticuloPrecioTarifaDTO {
  const _$_ArticuloPrecioTarifaDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'TARIFA_ID') required this.tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') this.tarifaDescripcion,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesDe,
      @JsonKey(name: 'PRECIO') required this.precio,
      @JsonKey(name: 'DIVISA_ID') required this.divisaId,
      @JsonKey(name: 'TIPO_PRECIO') this.tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticuloPrecioTarifaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticuloPrecioTarifaDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  final String tarifaId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  final String? tarifaDescripcion;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final double cantidadDesDe;
  @override
  @JsonKey(name: 'PRECIO')
  final double precio;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String divisaId;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final double? tipoPrecio;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticuloPrecioTarifaDTO(articuloId: $articuloId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, cantidadDesDe: $cantidadDesDe, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloPrecioTarifaDTO &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality().equals(other.tarifaId, tarifaId) &&
            const DeepCollectionEquality()
                .equals(other.tarifaDescripcion, tarifaDescripcion) &&
            const DeepCollectionEquality()
                .equals(other.cantidadDesDe, cantidadDesDe) &&
            const DeepCollectionEquality().equals(other.precio, precio) &&
            const DeepCollectionEquality().equals(other.divisaId, divisaId) &&
            const DeepCollectionEquality()
                .equals(other.tipoPrecio, tipoPrecio) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(tarifaId),
      const DeepCollectionEquality().hash(tarifaDescripcion),
      const DeepCollectionEquality().hash(cantidadDesDe),
      const DeepCollectionEquality().hash(precio),
      const DeepCollectionEquality().hash(divisaId),
      const DeepCollectionEquality().hash(tipoPrecio),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloPrecioTarifaDTOCopyWith<_$_ArticuloPrecioTarifaDTO>
      get copyWith =>
          __$$_ArticuloPrecioTarifaDTOCopyWithImpl<_$_ArticuloPrecioTarifaDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticuloPrecioTarifaDTOToJson(
      this,
    );
  }
}

abstract class _ArticuloPrecioTarifaDTO extends ArticuloPrecioTarifaDTO {
  const factory _ArticuloPrecioTarifaDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'TARIFA_ID') required final String tarifaId,
          @JsonKey(name: 'TARIFA_DESCRIPCION') final String? tarifaDescripcion,
          @JsonKey(name: 'CANTIDAD_DESDE') required final double cantidadDesDe,
          @JsonKey(name: 'PRECIO') required final double precio,
          @JsonKey(name: 'DIVISA_ID') required final String divisaId,
          @JsonKey(name: 'TIPO_PRECIO') final double? tipoPrecio,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$_ArticuloPrecioTarifaDTO;
  const _ArticuloPrecioTarifaDTO._() : super._();

  factory _ArticuloPrecioTarifaDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticuloPrecioTarifaDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  String get tarifaId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get tarifaDescripcion;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  double get cantidadDesDe;
  @override
  @JsonKey(name: 'PRECIO')
  double get precio;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  double? get tipoPrecio;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloPrecioTarifaDTOCopyWith<_$_ArticuloPrecioTarifaDTO>
      get copyWith => throw _privateConstructorUsedError;
}
