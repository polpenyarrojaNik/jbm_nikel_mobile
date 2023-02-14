// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_edit_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactoModificacionEditPageData {
  ClienteContacto? get clienteContacto => throw _privateConstructorUsedError;
  bool get isSent => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactoModificacionEditPageDataCopyWith<ContactoModificacionEditPageData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactoModificacionEditPageDataCopyWith<$Res> {
  factory $ContactoModificacionEditPageDataCopyWith(
          ContactoModificacionEditPageData value,
          $Res Function(ContactoModificacionEditPageData) then) =
      _$ContactoModificacionEditPageDataCopyWithImpl<$Res,
          ContactoModificacionEditPageData>;
  @useResult
  $Res call({ClienteContacto? clienteContacto, bool isSent, Object? error});

  $ClienteContactoCopyWith<$Res>? get clienteContacto;
}

/// @nodoc
class _$ContactoModificacionEditPageDataCopyWithImpl<$Res,
        $Val extends ContactoModificacionEditPageData>
    implements $ContactoModificacionEditPageDataCopyWith<$Res> {
  _$ContactoModificacionEditPageDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_ContactoModificacionEditPageDataCopyWith<$Res>
    implements $ContactoModificacionEditPageDataCopyWith<$Res> {
  factory _$$_ContactoModificacionEditPageDataCopyWith(
          _$_ContactoModificacionEditPageData value,
          $Res Function(_$_ContactoModificacionEditPageData) then) =
      __$$_ContactoModificacionEditPageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClienteContacto? clienteContacto, bool isSent, Object? error});

  @override
  $ClienteContactoCopyWith<$Res>? get clienteContacto;
}

/// @nodoc
class __$$_ContactoModificacionEditPageDataCopyWithImpl<$Res>
    extends _$ContactoModificacionEditPageDataCopyWithImpl<$Res,
        _$_ContactoModificacionEditPageData>
    implements _$$_ContactoModificacionEditPageDataCopyWith<$Res> {
  __$$_ContactoModificacionEditPageDataCopyWithImpl(
      _$_ContactoModificacionEditPageData _value,
      $Res Function(_$_ContactoModificacionEditPageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteContacto = freezed,
    Object? isSent = null,
    Object? error = freezed,
  }) {
    return _then(_$_ContactoModificacionEditPageData(
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

class _$_ContactoModificacionEditPageData
    extends _ContactoModificacionEditPageData {
  const _$_ContactoModificacionEditPageData(
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
    return 'ContactoModificacionEditPageData(clienteContacto: $clienteContacto, isSent: $isSent, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactoModificacionEditPageData &&
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
  _$$_ContactoModificacionEditPageDataCopyWith<
          _$_ContactoModificacionEditPageData>
      get copyWith => __$$_ContactoModificacionEditPageDataCopyWithImpl<
          _$_ContactoModificacionEditPageData>(this, _$identity);
}

abstract class _ContactoModificacionEditPageData
    extends ContactoModificacionEditPageData {
  const factory _ContactoModificacionEditPageData(
      {required final ClienteContacto? clienteContacto,
      required final bool isSent,
      final Object? error}) = _$_ContactoModificacionEditPageData;
  const _ContactoModificacionEditPageData._() : super._();

  @override
  ClienteContacto? get clienteContacto;
  @override
  bool get isSent;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_ContactoModificacionEditPageDataCopyWith<
          _$_ContactoModificacionEditPageData>
      get copyWith => throw _privateConstructorUsedError;
}
