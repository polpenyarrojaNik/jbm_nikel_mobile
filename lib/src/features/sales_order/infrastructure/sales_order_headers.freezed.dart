// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_order_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesOrderHeaders _$SalesOrderHeadersFromJson(Map<String, dynamic> json) {
  return _SalesOrderHeaders.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderHeaders {
  int? get maxPage => throw _privateConstructorUsedError;
  int? get totalRows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderHeadersCopyWith<SalesOrderHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderHeadersCopyWith<$Res> {
  factory $SalesOrderHeadersCopyWith(
          SalesOrderHeaders value, $Res Function(SalesOrderHeaders) then) =
      _$SalesOrderHeadersCopyWithImpl<$Res>;
  $Res call({int? maxPage, int? totalRows});
}

/// @nodoc
class _$SalesOrderHeadersCopyWithImpl<$Res>
    implements $SalesOrderHeadersCopyWith<$Res> {
  _$SalesOrderHeadersCopyWithImpl(this._value, this._then);

  final SalesOrderHeaders _value;
  // ignore: unused_field
  final $Res Function(SalesOrderHeaders) _then;

  @override
  $Res call({
    Object? maxPage = freezed,
    Object? totalRows = freezed,
  }) {
    return _then(_value.copyWith(
      maxPage: maxPage == freezed
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRows: totalRows == freezed
          ? _value.totalRows
          : totalRows // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SalesOrderHeadersCopyWith<$Res>
    implements $SalesOrderHeadersCopyWith<$Res> {
  factory _$$_SalesOrderHeadersCopyWith(_$_SalesOrderHeaders value,
          $Res Function(_$_SalesOrderHeaders) then) =
      __$$_SalesOrderHeadersCopyWithImpl<$Res>;
  @override
  $Res call({int? maxPage, int? totalRows});
}

/// @nodoc
class __$$_SalesOrderHeadersCopyWithImpl<$Res>
    extends _$SalesOrderHeadersCopyWithImpl<$Res>
    implements _$$_SalesOrderHeadersCopyWith<$Res> {
  __$$_SalesOrderHeadersCopyWithImpl(
      _$_SalesOrderHeaders _value, $Res Function(_$_SalesOrderHeaders) _then)
      : super(_value, (v) => _then(v as _$_SalesOrderHeaders));

  @override
  _$_SalesOrderHeaders get _value => super._value as _$_SalesOrderHeaders;

  @override
  $Res call({
    Object? maxPage = freezed,
    Object? totalRows = freezed,
  }) {
    return _then(_$_SalesOrderHeaders(
      maxPage: maxPage == freezed
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRows: totalRows == freezed
          ? _value.totalRows
          : totalRows // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesOrderHeaders extends _SalesOrderHeaders {
  const _$_SalesOrderHeaders({this.maxPage, this.totalRows}) : super._();

  factory _$_SalesOrderHeaders.fromJson(Map<String, dynamic> json) =>
      _$$_SalesOrderHeadersFromJson(json);

  @override
  final int? maxPage;
  @override
  final int? totalRows;

  @override
  String toString() {
    return 'SalesOrderHeaders(maxPage: $maxPage, totalRows: $totalRows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesOrderHeaders &&
            const DeepCollectionEquality().equals(other.maxPage, maxPage) &&
            const DeepCollectionEquality().equals(other.totalRows, totalRows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxPage),
      const DeepCollectionEquality().hash(totalRows));

  @JsonKey(ignore: true)
  @override
  _$$_SalesOrderHeadersCopyWith<_$_SalesOrderHeaders> get copyWith =>
      __$$_SalesOrderHeadersCopyWithImpl<_$_SalesOrderHeaders>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesOrderHeadersToJson(
      this,
    );
  }
}

abstract class _SalesOrderHeaders extends SalesOrderHeaders {
  const factory _SalesOrderHeaders({final int? maxPage, final int? totalRows}) =
      _$_SalesOrderHeaders;
  const _SalesOrderHeaders._() : super._();

  factory _SalesOrderHeaders.fromJson(Map<String, dynamic> json) =
      _$_SalesOrderHeaders.fromJson;

  @override
  int? get maxPage;
  @override
  int? get totalRows;
  @override
  @JsonKey(ignore: true)
  _$$_SalesOrderHeadersCopyWith<_$_SalesOrderHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}
