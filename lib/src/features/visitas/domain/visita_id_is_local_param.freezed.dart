// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'visita_id_is_local_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisitaIdIsLocalParam {
  String? get id => throw _privateConstructorUsedError;
  bool get isLocal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitaIdIsLocalParamCopyWith<VisitaIdIsLocalParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaIdIsLocalParamCopyWith<$Res> {
  factory $VisitaIdIsLocalParamCopyWith(VisitaIdIsLocalParam value,
          $Res Function(VisitaIdIsLocalParam) then) =
      _$VisitaIdIsLocalParamCopyWithImpl<$Res>;
  $Res call({String? id, bool isLocal});
}

/// @nodoc
class _$VisitaIdIsLocalParamCopyWithImpl<$Res>
    implements $VisitaIdIsLocalParamCopyWith<$Res> {
  _$VisitaIdIsLocalParamCopyWithImpl(this._value, this._then);

  final VisitaIdIsLocalParam _value;
  // ignore: unused_field
  final $Res Function(VisitaIdIsLocalParam) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: isLocal == freezed
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_VisitaIdIsLocalParamCopyWith<$Res>
    implements $VisitaIdIsLocalParamCopyWith<$Res> {
  factory _$$_VisitaIdIsLocalParamCopyWith(_$_VisitaIdIsLocalParam value,
          $Res Function(_$_VisitaIdIsLocalParam) then) =
      __$$_VisitaIdIsLocalParamCopyWithImpl<$Res>;
  @override
  $Res call({String? id, bool isLocal});
}

/// @nodoc
class __$$_VisitaIdIsLocalParamCopyWithImpl<$Res>
    extends _$VisitaIdIsLocalParamCopyWithImpl<$Res>
    implements _$$_VisitaIdIsLocalParamCopyWith<$Res> {
  __$$_VisitaIdIsLocalParamCopyWithImpl(_$_VisitaIdIsLocalParam _value,
      $Res Function(_$_VisitaIdIsLocalParam) _then)
      : super(_value, (v) => _then(v as _$_VisitaIdIsLocalParam));

  @override
  _$_VisitaIdIsLocalParam get _value => super._value as _$_VisitaIdIsLocalParam;

  @override
  $Res call({
    Object? id = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_$_VisitaIdIsLocalParam(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: isLocal == freezed
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VisitaIdIsLocalParam extends _VisitaIdIsLocalParam {
  const _$_VisitaIdIsLocalParam({this.id, required this.isLocal}) : super._();

  @override
  final String? id;
  @override
  final bool isLocal;

  @override
  String toString() {
    return 'VisitaIdIsLocalParam(id: $id, isLocal: $isLocal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitaIdIsLocalParam &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isLocal, isLocal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isLocal));

  @JsonKey(ignore: true)
  @override
  _$$_VisitaIdIsLocalParamCopyWith<_$_VisitaIdIsLocalParam> get copyWith =>
      __$$_VisitaIdIsLocalParamCopyWithImpl<_$_VisitaIdIsLocalParam>(
          this, _$identity);
}

abstract class _VisitaIdIsLocalParam extends VisitaIdIsLocalParam {
  const factory _VisitaIdIsLocalParam(
      {final String? id,
      required final bool isLocal}) = _$_VisitaIdIsLocalParam;
  const _VisitaIdIsLocalParam._() : super._();

  @override
  String? get id;
  @override
  bool get isLocal;
  @override
  @JsonKey(ignore: true)
  _$$_VisitaIdIsLocalParamCopyWith<_$_VisitaIdIsLocalParam> get copyWith =>
      throw _privateConstructorUsedError;
}
