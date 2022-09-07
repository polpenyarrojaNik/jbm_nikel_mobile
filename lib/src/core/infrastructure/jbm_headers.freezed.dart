// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jbm_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JbmHeaders _$JbmHeadersFromJson(Map<String, dynamic> json) {
  return _JBMHeaders.fromJson(json);
}

/// @nodoc
mixin _$JbmHeaders {
  String? get etag => throw _privateConstructorUsedError;
  int? get maxPage => throw _privateConstructorUsedError;
  int? get totalRows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JbmHeadersCopyWith<JbmHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JbmHeadersCopyWith<$Res> {
  factory $JbmHeadersCopyWith(
          JbmHeaders value, $Res Function(JbmHeaders) then) =
      _$JbmHeadersCopyWithImpl<$Res>;
  $Res call({String? etag, int? maxPage, int? totalRows});
}

/// @nodoc
class _$JbmHeadersCopyWithImpl<$Res> implements $JbmHeadersCopyWith<$Res> {
  _$JbmHeadersCopyWithImpl(this._value, this._then);

  final JbmHeaders _value;
  // ignore: unused_field
  final $Res Function(JbmHeaders) _then;

  @override
  $Res call({
    Object? etag = freezed,
    Object? maxPage = freezed,
    Object? totalRows = freezed,
  }) {
    return _then(_value.copyWith(
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_JBMHeadersCopyWith<$Res>
    implements $JbmHeadersCopyWith<$Res> {
  factory _$$_JBMHeadersCopyWith(
          _$_JBMHeaders value, $Res Function(_$_JBMHeaders) then) =
      __$$_JBMHeadersCopyWithImpl<$Res>;
  @override
  $Res call({String? etag, int? maxPage, int? totalRows});
}

/// @nodoc
class __$$_JBMHeadersCopyWithImpl<$Res> extends _$JbmHeadersCopyWithImpl<$Res>
    implements _$$_JBMHeadersCopyWith<$Res> {
  __$$_JBMHeadersCopyWithImpl(
      _$_JBMHeaders _value, $Res Function(_$_JBMHeaders) _then)
      : super(_value, (v) => _then(v as _$_JBMHeaders));

  @override
  _$_JBMHeaders get _value => super._value as _$_JBMHeaders;

  @override
  $Res call({
    Object? etag = freezed,
    Object? maxPage = freezed,
    Object? totalRows = freezed,
  }) {
    return _then(_$_JBMHeaders(
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_JBMHeaders extends _JBMHeaders {
  const _$_JBMHeaders({this.etag, this.maxPage, this.totalRows}) : super._();

  factory _$_JBMHeaders.fromJson(Map<String, dynamic> json) =>
      _$$_JBMHeadersFromJson(json);

  @override
  final String? etag;
  @override
  final int? maxPage;
  @override
  final int? totalRows;

  @override
  String toString() {
    return 'JbmHeaders(etag: $etag, maxPage: $maxPage, totalRows: $totalRows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JBMHeaders &&
            const DeepCollectionEquality().equals(other.etag, etag) &&
            const DeepCollectionEquality().equals(other.maxPage, maxPage) &&
            const DeepCollectionEquality().equals(other.totalRows, totalRows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(etag),
      const DeepCollectionEquality().hash(maxPage),
      const DeepCollectionEquality().hash(totalRows));

  @JsonKey(ignore: true)
  @override
  _$$_JBMHeadersCopyWith<_$_JBMHeaders> get copyWith =>
      __$$_JBMHeadersCopyWithImpl<_$_JBMHeaders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JBMHeadersToJson(
      this,
    );
  }
}

abstract class _JBMHeaders extends JbmHeaders {
  const factory _JBMHeaders(
      {final String? etag,
      final int? maxPage,
      final int? totalRows}) = _$_JBMHeaders;
  const _JBMHeaders._() : super._();

  factory _JBMHeaders.fromJson(Map<String, dynamic> json) =
      _$_JBMHeaders.fromJson;

  @override
  String? get etag;
  @override
  int? get maxPage;
  @override
  int? get totalRows;
  @override
  @JsonKey(ignore: true)
  _$$_JBMHeadersCopyWith<_$_JBMHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}
