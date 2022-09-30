// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_id_is_local_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityIdIsLocalParam {
  String? get id => throw _privateConstructorUsedError;
  bool get isLocal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityIdIsLocalParamCopyWith<EntityIdIsLocalParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityIdIsLocalParamCopyWith<$Res> {
  factory $EntityIdIsLocalParamCopyWith(EntityIdIsLocalParam value,
          $Res Function(EntityIdIsLocalParam) then) =
      _$EntityIdIsLocalParamCopyWithImpl<$Res>;
  $Res call({String? id, bool isLocal});
}

/// @nodoc
class _$EntityIdIsLocalParamCopyWithImpl<$Res>
    implements $EntityIdIsLocalParamCopyWith<$Res> {
  _$EntityIdIsLocalParamCopyWithImpl(this._value, this._then);

  final EntityIdIsLocalParam _value;
  // ignore: unused_field
  final $Res Function(EntityIdIsLocalParam) _then;

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
abstract class _$$_EntityIdIsLocalParamCopyWith<$Res>
    implements $EntityIdIsLocalParamCopyWith<$Res> {
  factory _$$_EntityIdIsLocalParamCopyWith(_$_EntityIdIsLocalParam value,
          $Res Function(_$_EntityIdIsLocalParam) then) =
      __$$_EntityIdIsLocalParamCopyWithImpl<$Res>;
  @override
  $Res call({String? id, bool isLocal});
}

/// @nodoc
class __$$_EntityIdIsLocalParamCopyWithImpl<$Res>
    extends _$EntityIdIsLocalParamCopyWithImpl<$Res>
    implements _$$_EntityIdIsLocalParamCopyWith<$Res> {
  __$$_EntityIdIsLocalParamCopyWithImpl(_$_EntityIdIsLocalParam _value,
      $Res Function(_$_EntityIdIsLocalParam) _then)
      : super(_value, (v) => _then(v as _$_EntityIdIsLocalParam));

  @override
  _$_EntityIdIsLocalParam get _value => super._value as _$_EntityIdIsLocalParam;

  @override
  $Res call({
    Object? id = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_$_EntityIdIsLocalParam(
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

class _$_EntityIdIsLocalParam extends _EntityIdIsLocalParam {
  const _$_EntityIdIsLocalParam({this.id, required this.isLocal}) : super._();

  @override
  final String? id;
  @override
  final bool isLocal;

  @override
  String toString() {
    return 'EntityIdIsLocalParam(id: $id, isLocal: $isLocal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityIdIsLocalParam &&
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
  _$$_EntityIdIsLocalParamCopyWith<_$_EntityIdIsLocalParam> get copyWith =>
      __$$_EntityIdIsLocalParamCopyWithImpl<_$_EntityIdIsLocalParam>(
          this, _$identity);
}

abstract class _EntityIdIsLocalParam extends EntityIdIsLocalParam {
  const factory _EntityIdIsLocalParam(
      {final String? id,
      required final bool isLocal}) = _$_EntityIdIsLocalParam;
  const _EntityIdIsLocalParam._() : super._();

  @override
  String? get id;
  @override
  bool get isLocal;
  @override
  @JsonKey(ignore: true)
  _$$_EntityIdIsLocalParamCopyWith<_$_EntityIdIsLocalParam> get copyWith =>
      throw _privateConstructorUsedError;
}
