// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jbm_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JBMHeaders _$JBMHeadersFromJson(Map<String, dynamic> json) {
  return _JBMHeaders.fromJson(json);
}

/// @nodoc
mixin _$JBMHeaders {
  String? get etag => throw _privateConstructorUsedError;
  int? get maxPage => throw _privateConstructorUsedError;
  int? get totalRows => throw _privateConstructorUsedError;

  /// Serializes this JBMHeaders to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JBMHeaders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JBMHeadersCopyWith<JBMHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JBMHeadersCopyWith<$Res> {
  factory $JBMHeadersCopyWith(
    JBMHeaders value,
    $Res Function(JBMHeaders) then,
  ) = _$JBMHeadersCopyWithImpl<$Res, JBMHeaders>;
  @useResult
  $Res call({String? etag, int? maxPage, int? totalRows});
}

/// @nodoc
class _$JBMHeadersCopyWithImpl<$Res, $Val extends JBMHeaders>
    implements $JBMHeadersCopyWith<$Res> {
  _$JBMHeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JBMHeaders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? maxPage = freezed,
    Object? totalRows = freezed,
  }) {
    return _then(
      _value.copyWith(
            etag:
                freezed == etag
                    ? _value.etag
                    : etag // ignore: cast_nullable_to_non_nullable
                        as String?,
            maxPage:
                freezed == maxPage
                    ? _value.maxPage
                    : maxPage // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalRows:
                freezed == totalRows
                    ? _value.totalRows
                    : totalRows // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JBMHeadersImplCopyWith<$Res>
    implements $JBMHeadersCopyWith<$Res> {
  factory _$$JBMHeadersImplCopyWith(
    _$JBMHeadersImpl value,
    $Res Function(_$JBMHeadersImpl) then,
  ) = __$$JBMHeadersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? etag, int? maxPage, int? totalRows});
}

/// @nodoc
class __$$JBMHeadersImplCopyWithImpl<$Res>
    extends _$JBMHeadersCopyWithImpl<$Res, _$JBMHeadersImpl>
    implements _$$JBMHeadersImplCopyWith<$Res> {
  __$$JBMHeadersImplCopyWithImpl(
    _$JBMHeadersImpl _value,
    $Res Function(_$JBMHeadersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JBMHeaders
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? maxPage = freezed,
    Object? totalRows = freezed,
  }) {
    return _then(
      _$JBMHeadersImpl(
        etag:
            freezed == etag
                ? _value.etag
                : etag // ignore: cast_nullable_to_non_nullable
                    as String?,
        maxPage:
            freezed == maxPage
                ? _value.maxPage
                : maxPage // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalRows:
            freezed == totalRows
                ? _value.totalRows
                : totalRows // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JBMHeadersImpl extends _JBMHeaders {
  const _$JBMHeadersImpl({this.etag, this.maxPage, this.totalRows}) : super._();

  factory _$JBMHeadersImpl.fromJson(Map<String, dynamic> json) =>
      _$$JBMHeadersImplFromJson(json);

  @override
  final String? etag;
  @override
  final int? maxPage;
  @override
  final int? totalRows;

  @override
  String toString() {
    return 'JBMHeaders(etag: $etag, maxPage: $maxPage, totalRows: $totalRows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JBMHeadersImpl &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage) &&
            (identical(other.totalRows, totalRows) ||
                other.totalRows == totalRows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, etag, maxPage, totalRows);

  /// Create a copy of JBMHeaders
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JBMHeadersImplCopyWith<_$JBMHeadersImpl> get copyWith =>
      __$$JBMHeadersImplCopyWithImpl<_$JBMHeadersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JBMHeadersImplToJson(this);
  }
}

abstract class _JBMHeaders extends JBMHeaders {
  const factory _JBMHeaders({
    final String? etag,
    final int? maxPage,
    final int? totalRows,
  }) = _$JBMHeadersImpl;
  const _JBMHeaders._() : super._();

  factory _JBMHeaders.fromJson(Map<String, dynamic> json) =
      _$JBMHeadersImpl.fromJson;

  @override
  String? get etag;
  @override
  int? get maxPage;
  @override
  int? get totalRows;

  /// Create a copy of JBMHeaders
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JBMHeadersImplCopyWith<_$JBMHeadersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
