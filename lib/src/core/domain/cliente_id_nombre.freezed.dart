// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_id_nombre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClienteIdNombre {
  String get id => throw _privateConstructorUsedError;
  String? get nombreCliente => throw _privateConstructorUsedError;

  /// Create a copy of ClienteIdNombre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteIdNombreCopyWith<ClienteIdNombre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteIdNombreCopyWith<$Res> {
  factory $ClienteIdNombreCopyWith(
          ClienteIdNombre value, $Res Function(ClienteIdNombre) then) =
      _$ClienteIdNombreCopyWithImpl<$Res, ClienteIdNombre>;
  @useResult
  $Res call({String id, String? nombreCliente});
}

/// @nodoc
class _$ClienteIdNombreCopyWithImpl<$Res, $Val extends ClienteIdNombre>
    implements $ClienteIdNombreCopyWith<$Res> {
  _$ClienteIdNombreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteIdNombre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombreCliente = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: freezed == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClienteIdNombreImplCopyWith<$Res>
    implements $ClienteIdNombreCopyWith<$Res> {
  factory _$$ClienteIdNombreImplCopyWith(_$ClienteIdNombreImpl value,
          $Res Function(_$ClienteIdNombreImpl) then) =
      __$$ClienteIdNombreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? nombreCliente});
}

/// @nodoc
class __$$ClienteIdNombreImplCopyWithImpl<$Res>
    extends _$ClienteIdNombreCopyWithImpl<$Res, _$ClienteIdNombreImpl>
    implements _$$ClienteIdNombreImplCopyWith<$Res> {
  __$$ClienteIdNombreImplCopyWithImpl(
      _$ClienteIdNombreImpl _value, $Res Function(_$ClienteIdNombreImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClienteIdNombre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombreCliente = freezed,
  }) {
    return _then(_$ClienteIdNombreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: freezed == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ClienteIdNombreImpl extends _ClienteIdNombre {
  const _$ClienteIdNombreImpl({required this.id, required this.nombreCliente})
      : super._();

  @override
  final String id;
  @override
  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteIdNombre(id: $id, nombreCliente: $nombreCliente)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteIdNombreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombreCliente, nombreCliente) ||
                other.nombreCliente == nombreCliente));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nombreCliente);

  /// Create a copy of ClienteIdNombre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteIdNombreImplCopyWith<_$ClienteIdNombreImpl> get copyWith =>
      __$$ClienteIdNombreImplCopyWithImpl<_$ClienteIdNombreImpl>(
          this, _$identity);
}

abstract class _ClienteIdNombre extends ClienteIdNombre {
  const factory _ClienteIdNombre(
      {required final String id,
      required final String? nombreCliente}) = _$ClienteIdNombreImpl;
  const _ClienteIdNombre._() : super._();

  @override
  String get id;
  @override
  String? get nombreCliente;

  /// Create a copy of ClienteIdNombre
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteIdNombreImplCopyWith<_$ClienteIdNombreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
