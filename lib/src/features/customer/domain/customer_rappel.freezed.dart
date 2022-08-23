// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_rappel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerRappel {
  String get customerId => throw _privateConstructorUsedError;
  String get rappelId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dateFrom => throw _privateConstructorUsedError;
  DateTime? get dateTo => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerRappelCopyWith<CustomerRappel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRappelCopyWith<$Res> {
  factory $CustomerRappelCopyWith(
          CustomerRappel value, $Res Function(CustomerRappel) then) =
      _$CustomerRappelCopyWithImpl<$Res>;
  $Res call(
      {String customerId,
      String rappelId,
      String description,
      DateTime dateFrom,
      DateTime? dateTo,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$CustomerRappelCopyWithImpl<$Res>
    implements $CustomerRappelCopyWith<$Res> {
  _$CustomerRappelCopyWithImpl(this._value, this._then);

  final CustomerRappel _value;
  // ignore: unused_field
  final $Res Function(CustomerRappel) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? rappelId = freezed,
    Object? description = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$_CustomerRappelCopyWith<$Res>
    implements $CustomerRappelCopyWith<$Res> {
  factory _$$_CustomerRappelCopyWith(
          _$_CustomerRappel value, $Res Function(_$_CustomerRappel) then) =
      __$$_CustomerRappelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String customerId,
      String rappelId,
      String description,
      DateTime dateFrom,
      DateTime? dateTo,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_CustomerRappelCopyWithImpl<$Res>
    extends _$CustomerRappelCopyWithImpl<$Res>
    implements _$$_CustomerRappelCopyWith<$Res> {
  __$$_CustomerRappelCopyWithImpl(
      _$_CustomerRappel _value, $Res Function(_$_CustomerRappel) _then)
      : super(_value, (v) => _then(v as _$_CustomerRappel));

  @override
  _$_CustomerRappel get _value => super._value as _$_CustomerRappel;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? rappelId = freezed,
    Object? description = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerRappel(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$_CustomerRappel extends _CustomerRappel {
  const _$_CustomerRappel(
      {required this.customerId,
      required this.rappelId,
      required this.description,
      required this.dateFrom,
      this.dateTo,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String customerId;
  @override
  final String rappelId;
  @override
  final String description;
  @override
  final DateTime dateFrom;
  @override
  final DateTime? dateTo;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'CustomerRappel(customerId: $customerId, rappelId: $rappelId, description: $description, dateFrom: $dateFrom, dateTo: $dateTo, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerRappel &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.rappelId, rappelId) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.dateFrom, dateFrom) &&
            const DeepCollectionEquality().equals(other.dateTo, dateTo) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(rappelId),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(dateFrom),
      const DeepCollectionEquality().hash(dateTo),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerRappelCopyWith<_$_CustomerRappel> get copyWith =>
      __$$_CustomerRappelCopyWithImpl<_$_CustomerRappel>(this, _$identity);
}

abstract class _CustomerRappel extends CustomerRappel {
  const factory _CustomerRappel(
      {required final String customerId,
      required final String rappelId,
      required final String description,
      required final DateTime dateFrom,
      final DateTime? dateTo,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_CustomerRappel;
  const _CustomerRappel._() : super._();

  @override
  String get customerId;
  @override
  String get rappelId;
  @override
  String get description;
  @override
  DateTime get dateFrom;
  @override
  DateTime? get dateTo;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerRappelCopyWith<_$_CustomerRappel> get copyWith =>
      throw _privateConstructorUsedError;
}
