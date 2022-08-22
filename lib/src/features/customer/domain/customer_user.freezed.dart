// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerUser {
  String get customerId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerUserCopyWith<CustomerUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerUserCopyWith<$Res> {
  factory $CustomerUserCopyWith(
          CustomerUser value, $Res Function(CustomerUser) then) =
      _$CustomerUserCopyWithImpl<$Res>;
  $Res call(
      {String customerId, String userId, DateTime lastUpdated, bool deleted});
}

/// @nodoc
class _$CustomerUserCopyWithImpl<$Res> implements $CustomerUserCopyWith<$Res> {
  _$CustomerUserCopyWithImpl(this._value, this._then);

  final CustomerUser _value;
  // ignore: unused_field
  final $Res Function(CustomerUser) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? userId = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerUserCopyWith<$Res>
    implements $CustomerUserCopyWith<$Res> {
  factory _$$_CustomerUserCopyWith(
          _$_CustomerUser value, $Res Function(_$_CustomerUser) then) =
      __$$_CustomerUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerId, String userId, DateTime lastUpdated, bool deleted});
}

/// @nodoc
class __$$_CustomerUserCopyWithImpl<$Res>
    extends _$CustomerUserCopyWithImpl<$Res>
    implements _$$_CustomerUserCopyWith<$Res> {
  __$$_CustomerUserCopyWithImpl(
      _$_CustomerUser _value, $Res Function(_$_CustomerUser) _then)
      : super(_value, (v) => _then(v as _$_CustomerUser));

  @override
  _$_CustomerUser get _value => super._value as _$_CustomerUser;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? userId = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerUser(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CustomerUser extends _CustomerUser {
  const _$_CustomerUser(
      {required this.customerId,
      required this.userId,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String customerId;
  @override
  final String userId;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'CustomerUser(customerId: $customerId, userId: $userId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerUser &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerUserCopyWith<_$_CustomerUser> get copyWith =>
      __$$_CustomerUserCopyWithImpl<_$_CustomerUser>(this, _$identity);
}

abstract class _CustomerUser extends CustomerUser {
  const factory _CustomerUser(
      {required final String customerId,
      required final String userId,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_CustomerUser;
  const _CustomerUser._() : super._();

  @override
  String get customerId;
  @override
  String get userId;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerUserCopyWith<_$_CustomerUser> get copyWith =>
      throw _privateConstructorUsedError;
}
