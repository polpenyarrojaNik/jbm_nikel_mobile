// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_edit_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClienteDireccionEditPageData {
  ClienteDireccion? get clienteDireccion => throw _privateConstructorUsedError;
  bool get isSent => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteDireccionEditPageDataCopyWith<ClienteDireccionEditPageData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDireccionEditPageDataCopyWith<$Res> {
  factory $ClienteDireccionEditPageDataCopyWith(
          ClienteDireccionEditPageData value,
          $Res Function(ClienteDireccionEditPageData) then) =
      _$ClienteDireccionEditPageDataCopyWithImpl<$Res,
          ClienteDireccionEditPageData>;
  @useResult
  $Res call({ClienteDireccion? clienteDireccion, bool isSent, Object? error});

  $ClienteDireccionCopyWith<$Res>? get clienteDireccion;
}

/// @nodoc
class _$ClienteDireccionEditPageDataCopyWithImpl<$Res,
        $Val extends ClienteDireccionEditPageData>
    implements $ClienteDireccionEditPageDataCopyWith<$Res> {
  _$ClienteDireccionEditPageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteDireccion = freezed,
    Object? isSent = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      clienteDireccion: freezed == clienteDireccion
          ? _value.clienteDireccion
          : clienteDireccion // ignore: cast_nullable_to_non_nullable
              as ClienteDireccion?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClienteDireccionCopyWith<$Res>? get clienteDireccion {
    if (_value.clienteDireccion == null) {
      return null;
    }

    return $ClienteDireccionCopyWith<$Res>(_value.clienteDireccion!, (value) {
      return _then(_value.copyWith(clienteDireccion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClienteDireccionEditPageDataImplCopyWith<$Res>
    implements $ClienteDireccionEditPageDataCopyWith<$Res> {
  factory _$$ClienteDireccionEditPageDataImplCopyWith(
          _$ClienteDireccionEditPageDataImpl value,
          $Res Function(_$ClienteDireccionEditPageDataImpl) then) =
      __$$ClienteDireccionEditPageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClienteDireccion? clienteDireccion, bool isSent, Object? error});

  @override
  $ClienteDireccionCopyWith<$Res>? get clienteDireccion;
}

/// @nodoc
class __$$ClienteDireccionEditPageDataImplCopyWithImpl<$Res>
    extends _$ClienteDireccionEditPageDataCopyWithImpl<$Res,
        _$ClienteDireccionEditPageDataImpl>
    implements _$$ClienteDireccionEditPageDataImplCopyWith<$Res> {
  __$$ClienteDireccionEditPageDataImplCopyWithImpl(
      _$ClienteDireccionEditPageDataImpl _value,
      $Res Function(_$ClienteDireccionEditPageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteDireccion = freezed,
    Object? isSent = null,
    Object? error = freezed,
  }) {
    return _then(_$ClienteDireccionEditPageDataImpl(
      clienteDireccion: freezed == clienteDireccion
          ? _value.clienteDireccion
          : clienteDireccion // ignore: cast_nullable_to_non_nullable
              as ClienteDireccion?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ClienteDireccionEditPageDataImpl extends _ClienteDireccionEditPageData {
  const _$ClienteDireccionEditPageDataImpl(
      {required this.clienteDireccion, required this.isSent, this.error})
      : super._();

  @override
  final ClienteDireccion? clienteDireccion;
  @override
  final bool isSent;
  @override
  final Object? error;

  @override
  String toString() {
    return 'ClienteDireccionEditPageData(clienteDireccion: $clienteDireccion, isSent: $isSent, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteDireccionEditPageDataImpl &&
            (identical(other.clienteDireccion, clienteDireccion) ||
                other.clienteDireccion == clienteDireccion) &&
            (identical(other.isSent, isSent) || other.isSent == isSent) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteDireccion, isSent,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteDireccionEditPageDataImplCopyWith<
          _$ClienteDireccionEditPageDataImpl>
      get copyWith => __$$ClienteDireccionEditPageDataImplCopyWithImpl<
          _$ClienteDireccionEditPageDataImpl>(this, _$identity);
}

abstract class _ClienteDireccionEditPageData
    extends ClienteDireccionEditPageData {
  const factory _ClienteDireccionEditPageData(
      {required final ClienteDireccion? clienteDireccion,
      required final bool isSent,
      final Object? error}) = _$ClienteDireccionEditPageDataImpl;
  const _ClienteDireccionEditPageData._() : super._();

  @override
  ClienteDireccion? get clienteDireccion;
  @override
  bool get isSent;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ClienteDireccionEditPageDataImplCopyWith<
          _$ClienteDireccionEditPageDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
