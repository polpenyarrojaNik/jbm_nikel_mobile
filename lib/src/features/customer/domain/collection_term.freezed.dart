// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collection_term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionTerm {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionTermCopyWith<CollectionTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionTermCopyWith<$Res> {
  factory $CollectionTermCopyWith(
          CollectionTerm value, $Res Function(CollectionTerm) then) =
      _$CollectionTermCopyWithImpl<$Res>;
  $Res call({String id, String description, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class _$CollectionTermCopyWithImpl<$Res>
    implements $CollectionTermCopyWith<$Res> {
  _$CollectionTermCopyWithImpl(this._value, this._then);

  final CollectionTerm _value;
  // ignore: unused_field
  final $Res Function(CollectionTerm) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CollectionTermCopyWith<$Res>
    implements $CollectionTermCopyWith<$Res> {
  factory _$$_CollectionTermCopyWith(
          _$_CollectionTerm value, $Res Function(_$_CollectionTerm) then) =
      __$$_CollectionTermCopyWithImpl<$Res>;
  @override
  $Res call({String id, String description, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class __$$_CollectionTermCopyWithImpl<$Res>
    extends _$CollectionTermCopyWithImpl<$Res>
    implements _$$_CollectionTermCopyWith<$Res> {
  __$$_CollectionTermCopyWithImpl(
      _$_CollectionTerm _value, $Res Function(_$_CollectionTerm) _then)
      : super(_value, (v) => _then(v as _$_CollectionTerm));

  @override
  _$_CollectionTerm get _value => super._value as _$_CollectionTerm;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CollectionTerm(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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

class _$_CollectionTerm extends _CollectionTerm {
  const _$_CollectionTerm(
      {required this.id,
      required this.description,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String id;
  @override
  final String description;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'CollectionTerm(id: $id, description: $description, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionTerm &&
            const DeepCollectionEquality().equals(other.id, id) &&
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
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(lastUpdate),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CollectionTermCopyWith<_$_CollectionTerm> get copyWith =>
      __$$_CollectionTermCopyWithImpl<_$_CollectionTerm>(this, _$identity);
}

abstract class _CollectionTerm extends CollectionTerm {
  const factory _CollectionTerm(
      {required final String id,
      required final String description,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$_CollectionTerm;
  const _CollectionTerm._() : super._();

  @override
  String get id;
  @override
  String get description;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionTermCopyWith<_$_CollectionTerm> get copyWith =>
      throw _privateConstructorUsedError;
}
