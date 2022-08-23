// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subfamily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Subfamily {
  String get id => throw _privateConstructorUsedError;
  String get familyId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubfamilyCopyWith<Subfamily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubfamilyCopyWith<$Res> {
  factory $SubfamilyCopyWith(Subfamily value, $Res Function(Subfamily) then) =
      _$SubfamilyCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String familyId,
      String description,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class _$SubfamilyCopyWithImpl<$Res> implements $SubfamilyCopyWith<$Res> {
  _$SubfamilyCopyWithImpl(this._value, this._then);

  final Subfamily _value;
  // ignore: unused_field
  final $Res Function(Subfamily) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? familyId = freezed,
    Object? description = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familyId: familyId == freezed
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SubfamilyCopyWith<$Res> implements $SubfamilyCopyWith<$Res> {
  factory _$$_SubfamilyCopyWith(
          _$_Subfamily value, $Res Function(_$_Subfamily) then) =
      __$$_SubfamilyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String familyId,
      String description,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class __$$_SubfamilyCopyWithImpl<$Res> extends _$SubfamilyCopyWithImpl<$Res>
    implements _$$_SubfamilyCopyWith<$Res> {
  __$$_SubfamilyCopyWithImpl(
      _$_Subfamily _value, $Res Function(_$_Subfamily) _then)
      : super(_value, (v) => _then(v as _$_Subfamily));

  @override
  _$_Subfamily get _value => super._value as _$_Subfamily;

  @override
  $Res call({
    Object? id = freezed,
    Object? familyId = freezed,
    Object? description = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_Subfamily(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familyId: familyId == freezed
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Subfamily extends _Subfamily {
  const _$_Subfamily(
      {required this.id,
      required this.familyId,
      required this.description,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String id;
  @override
  final String familyId;
  @override
  final String description;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Subfamily(id: $id, familyId: $familyId, description: $description, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subfamily &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.familyId, familyId) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdate, lastUpdate) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(familyId),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(lastUpdate),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_SubfamilyCopyWith<_$_Subfamily> get copyWith =>
      __$$_SubfamilyCopyWithImpl<_$_Subfamily>(this, _$identity);
}

abstract class _Subfamily extends Subfamily {
  const factory _Subfamily(
      {required final String id,
      required final String familyId,
      required final String description,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$_Subfamily;
  const _Subfamily._() : super._();

  @override
  String get id;
  @override
  String get familyId;
  @override
  String get description;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_SubfamilyCopyWith<_$_Subfamily> get copyWith =>
      throw _privateConstructorUsedError;
}
