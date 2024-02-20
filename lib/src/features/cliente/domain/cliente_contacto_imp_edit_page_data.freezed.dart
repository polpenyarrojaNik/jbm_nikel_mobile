// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_imp_edit_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClienteContactoImpEditPageData {
  ClienteContacto? get clienteContacto => throw _privateConstructorUsedError;
  bool get isSent => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteContactoImpEditPageDataCopyWith<ClienteContactoImpEditPageData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteContactoImpEditPageDataCopyWith<$Res> {
  factory $ClienteContactoImpEditPageDataCopyWith(
          ClienteContactoImpEditPageData value,
          $Res Function(ClienteContactoImpEditPageData) then) =
      _$ClienteContactoImpEditPageDataCopyWithImpl<$Res,
          ClienteContactoImpEditPageData>;
  @useResult
  $Res call({ClienteContacto? clienteContacto, bool isSent, Object? error});

  $ClienteContactoCopyWith<$Res>? get clienteContacto;
}

/// @nodoc
class _$ClienteContactoImpEditPageDataCopyWithImpl<$Res,
        $Val extends ClienteContactoImpEditPageData>
    implements $ClienteContactoImpEditPageDataCopyWith<$Res> {
  _$ClienteContactoImpEditPageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteContacto = freezed,
    Object? isSent = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      clienteContacto: freezed == clienteContacto
          ? _value.clienteContacto
          : clienteContacto // ignore: cast_nullable_to_non_nullable
              as ClienteContacto?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClienteContactoCopyWith<$Res>? get clienteContacto {
    if (_value.clienteContacto == null) {
      return null;
    }

    return $ClienteContactoCopyWith<$Res>(_value.clienteContacto!, (value) {
      return _then(_value.copyWith(clienteContacto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClienteContactoImpEditPageDataImplCopyWith<$Res>
    implements $ClienteContactoImpEditPageDataCopyWith<$Res> {
  factory _$$ClienteContactoImpEditPageDataImplCopyWith(
          _$ClienteContactoImpEditPageDataImpl value,
          $Res Function(_$ClienteContactoImpEditPageDataImpl) then) =
      __$$ClienteContactoImpEditPageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClienteContacto? clienteContacto, bool isSent, Object? error});

  @override
  $ClienteContactoCopyWith<$Res>? get clienteContacto;
}

/// @nodoc
class __$$ClienteContactoImpEditPageDataImplCopyWithImpl<$Res>
    extends _$ClienteContactoImpEditPageDataCopyWithImpl<$Res,
        _$ClienteContactoImpEditPageDataImpl>
    implements _$$ClienteContactoImpEditPageDataImplCopyWith<$Res> {
  __$$ClienteContactoImpEditPageDataImplCopyWithImpl(
      _$ClienteContactoImpEditPageDataImpl _value,
      $Res Function(_$ClienteContactoImpEditPageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteContacto = freezed,
    Object? isSent = null,
    Object? error = freezed,
  }) {
    return _then(_$ClienteContactoImpEditPageDataImpl(
      clienteContacto: freezed == clienteContacto
          ? _value.clienteContacto
          : clienteContacto // ignore: cast_nullable_to_non_nullable
              as ClienteContacto?,
      isSent: null == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ClienteContactoImpEditPageDataImpl
    extends _ClienteContactoImpEditPageData {
  const _$ClienteContactoImpEditPageDataImpl(
      {required this.clienteContacto, required this.isSent, this.error})
      : super._();

  @override
  final ClienteContacto? clienteContacto;
  @override
  final bool isSent;
  @override
  final Object? error;

  @override
  String toString() {
    return 'ClienteContactoImpEditPageData(clienteContacto: $clienteContacto, isSent: $isSent, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteContactoImpEditPageDataImpl &&
            (identical(other.clienteContacto, clienteContacto) ||
                other.clienteContacto == clienteContacto) &&
            (identical(other.isSent, isSent) || other.isSent == isSent) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteContacto, isSent,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteContactoImpEditPageDataImplCopyWith<
          _$ClienteContactoImpEditPageDataImpl>
      get copyWith => __$$ClienteContactoImpEditPageDataImplCopyWithImpl<
          _$ClienteContactoImpEditPageDataImpl>(this, _$identity);
}

abstract class _ClienteContactoImpEditPageData
    extends ClienteContactoImpEditPageData {
  const factory _ClienteContactoImpEditPageData(
      {required final ClienteContacto? clienteContacto,
      required final bool isSent,
      final Object? error}) = _$ClienteContactoImpEditPageDataImpl;
  const _ClienteContactoImpEditPageData._() : super._();

  @override
  ClienteContacto? get clienteContacto;
  @override
  bool get isSent;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ClienteContactoImpEditPageDataImplCopyWith<
          _$ClienteContactoImpEditPageDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
