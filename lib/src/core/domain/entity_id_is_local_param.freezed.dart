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
  String get id => throw _privateConstructorUsedError;
  bool get isLocal => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityIdIsLocalParamCopyWith<EntityIdIsLocalParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityIdIsLocalParamCopyWith<$Res> {
  factory $EntityIdIsLocalParamCopyWith(EntityIdIsLocalParam value,
          $Res Function(EntityIdIsLocalParam) then) =
      _$EntityIdIsLocalParamCopyWithImpl<$Res, EntityIdIsLocalParam>;
  @useResult
  $Res call({String id, bool isLocal, bool isNew});
}

/// @nodoc
class _$EntityIdIsLocalParamCopyWithImpl<$Res,
        $Val extends EntityIdIsLocalParam>
    implements $EntityIdIsLocalParamCopyWith<$Res> {
  _$EntityIdIsLocalParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isLocal = null,
    Object? isNew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntityIdIsLocalParamCopyWith<$Res>
    implements $EntityIdIsLocalParamCopyWith<$Res> {
  factory _$$_EntityIdIsLocalParamCopyWith(_$_EntityIdIsLocalParam value,
          $Res Function(_$_EntityIdIsLocalParam) then) =
      __$$_EntityIdIsLocalParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool isLocal, bool isNew});
}

/// @nodoc
class __$$_EntityIdIsLocalParamCopyWithImpl<$Res>
    extends _$EntityIdIsLocalParamCopyWithImpl<$Res, _$_EntityIdIsLocalParam>
    implements _$$_EntityIdIsLocalParamCopyWith<$Res> {
  __$$_EntityIdIsLocalParamCopyWithImpl(_$_EntityIdIsLocalParam _value,
      $Res Function(_$_EntityIdIsLocalParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isLocal = null,
    Object? isNew = null,
  }) {
    return _then(_$_EntityIdIsLocalParam(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EntityIdIsLocalParam extends _EntityIdIsLocalParam {
  const _$_EntityIdIsLocalParam(
      {required this.id, required this.isLocal, required this.isNew})
      : super._();

  @override
  final String id;
  @override
  final bool isLocal;
  @override
  final bool isNew;

  @override
  String toString() {
    return 'EntityIdIsLocalParam(id: $id, isLocal: $isLocal, isNew: $isNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityIdIsLocalParam &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal) &&
            (identical(other.isNew, isNew) || other.isNew == isNew));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isLocal, isNew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntityIdIsLocalParamCopyWith<_$_EntityIdIsLocalParam> get copyWith =>
      __$$_EntityIdIsLocalParamCopyWithImpl<_$_EntityIdIsLocalParam>(
          this, _$identity);
}

abstract class _EntityIdIsLocalParam extends EntityIdIsLocalParam {
  const factory _EntityIdIsLocalParam(
      {required final String id,
      required final bool isLocal,
      required final bool isNew}) = _$_EntityIdIsLocalParam;
  const _EntityIdIsLocalParam._() : super._();

  @override
  String get id;
  @override
  bool get isLocal;
  @override
  bool get isNew;
  @override
  @JsonKey(ignore: true)
  _$$_EntityIdIsLocalParamCopyWith<_$_EntityIdIsLocalParam> get copyWith =>
      throw _privateConstructorUsedError;
}
