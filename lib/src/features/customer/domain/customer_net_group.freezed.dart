// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_net_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerNetGroup {
  String get customerId => throw _privateConstructorUsedError;
  String get netGroupId => throw _privateConstructorUsedError;
  String? get netGroupDescription => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerNetGroupCopyWith<CustomerNetGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerNetGroupCopyWith<$Res> {
  factory $CustomerNetGroupCopyWith(
          CustomerNetGroup value, $Res Function(CustomerNetGroup) then) =
      _$CustomerNetGroupCopyWithImpl<$Res>;
  $Res call(
      {String customerId,
      String netGroupId,
      String? netGroupDescription,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$CustomerNetGroupCopyWithImpl<$Res>
    implements $CustomerNetGroupCopyWith<$Res> {
  _$CustomerNetGroupCopyWithImpl(this._value, this._then);

  final CustomerNetGroup _value;
  // ignore: unused_field
  final $Res Function(CustomerNetGroup) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? netGroupId = freezed,
    Object? netGroupDescription = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupId: netGroupId == freezed
          ? _value.netGroupId
          : netGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupDescription: netGroupDescription == freezed
          ? _value.netGroupDescription
          : netGroupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_CustomerNetGroupCopyWith<$Res>
    implements $CustomerNetGroupCopyWith<$Res> {
  factory _$$_CustomerNetGroupCopyWith(
          _$_CustomerNetGroup value, $Res Function(_$_CustomerNetGroup) then) =
      __$$_CustomerNetGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerId,
      String netGroupId,
      String? netGroupDescription,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_CustomerNetGroupCopyWithImpl<$Res>
    extends _$CustomerNetGroupCopyWithImpl<$Res>
    implements _$$_CustomerNetGroupCopyWith<$Res> {
  __$$_CustomerNetGroupCopyWithImpl(
      _$_CustomerNetGroup _value, $Res Function(_$_CustomerNetGroup) _then)
      : super(_value, (v) => _then(v as _$_CustomerNetGroup));

  @override
  _$_CustomerNetGroup get _value => super._value as _$_CustomerNetGroup;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? netGroupId = freezed,
    Object? netGroupDescription = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerNetGroup(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupId: netGroupId == freezed
          ? _value.netGroupId
          : netGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupDescription: netGroupDescription == freezed
          ? _value.netGroupDescription
          : netGroupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_CustomerNetGroup extends _CustomerNetGroup {
  const _$_CustomerNetGroup(
      {required this.customerId,
      required this.netGroupId,
      this.netGroupDescription,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String customerId;
  @override
  final String netGroupId;
  @override
  final String? netGroupDescription;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'CustomerNetGroup(customerId: $customerId, netGroupId: $netGroupId, netGroupDescription: $netGroupDescription, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerNetGroup &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.netGroupId, netGroupId) &&
            const DeepCollectionEquality()
                .equals(other.netGroupDescription, netGroupDescription) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(netGroupId),
      const DeepCollectionEquality().hash(netGroupDescription),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerNetGroupCopyWith<_$_CustomerNetGroup> get copyWith =>
      __$$_CustomerNetGroupCopyWithImpl<_$_CustomerNetGroup>(this, _$identity);
}

abstract class _CustomerNetGroup extends CustomerNetGroup {
  const factory _CustomerNetGroup(
      {required final String customerId,
      required final String netGroupId,
      final String? netGroupDescription,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_CustomerNetGroup;
  const _CustomerNetGroup._() : super._();

  @override
  String get customerId;
  @override
  String get netGroupId;
  @override
  String? get netGroupDescription;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerNetGroupCopyWith<_$_CustomerNetGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
