// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jbm_mobile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JbmMobileFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String? message) db,
    required TResult Function(String? message) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_DB value) db,
    required TResult Function(_Local value) local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JbmMobileFailureCopyWith<JbmMobileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JbmMobileFailureCopyWith<$Res> {
  factory $JbmMobileFailureCopyWith(
          JbmMobileFailure value, $Res Function(JbmMobileFailure) then) =
      _$JbmMobileFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$JbmMobileFailureCopyWithImpl<$Res>
    implements $JbmMobileFailureCopyWith<$Res> {
  _$JbmMobileFailureCopyWithImpl(this._value, this._then);

  final JbmMobileFailure _value;
  // ignore: unused_field
  final $Res Function(JbmMobileFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiCopyWith<$Res>
    implements $JbmMobileFailureCopyWith<$Res> {
  factory _$$_ApiCopyWith(_$_Api value, $Res Function(_$_Api) then) =
      __$$_ApiCopyWithImpl<$Res>;
  @override
  $Res call({int? errorCode, String? message});
}

/// @nodoc
class __$$_ApiCopyWithImpl<$Res> extends _$JbmMobileFailureCopyWithImpl<$Res>
    implements _$$_ApiCopyWith<$Res> {
  __$$_ApiCopyWithImpl(_$_Api _value, $Res Function(_$_Api) _then)
      : super(_value, (v) => _then(v as _$_Api));

  @override
  _$_Api get _value => super._value as _$_Api;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Api(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Api extends _Api {
  const _$_Api(this.errorCode, this.message) : super._();

  @override
  final int? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'JbmMobileFailure.api(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Api &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ApiCopyWith<_$_Api> get copyWith =>
      __$$_ApiCopyWithImpl<_$_Api>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String? message) db,
    required TResult Function(String? message) local,
  }) {
    return api(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
  }) {
    return api?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_DB value) db,
    required TResult Function(_Local value) local,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _Api extends JbmMobileFailure {
  const factory _Api(final int? errorCode, final String? message) = _$_Api;
  const _Api._() : super._();

  int? get errorCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ApiCopyWith<_$_Api> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DBCopyWith<$Res> implements $JbmMobileFailureCopyWith<$Res> {
  factory _$$_DBCopyWith(_$_DB value, $Res Function(_$_DB) then) =
      __$$_DBCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_DBCopyWithImpl<$Res> extends _$JbmMobileFailureCopyWithImpl<$Res>
    implements _$$_DBCopyWith<$Res> {
  __$$_DBCopyWithImpl(_$_DB _value, $Res Function(_$_DB) _then)
      : super(_value, (v) => _then(v as _$_DB));

  @override
  _$_DB get _value => super._value as _$_DB;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_DB(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DB extends _DB {
  const _$_DB(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'JbmMobileFailure.db(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DB &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_DBCopyWith<_$_DB> get copyWith =>
      __$$_DBCopyWithImpl<_$_DB>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String? message) db,
    required TResult Function(String? message) local,
  }) {
    return db(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
  }) {
    return db?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
    required TResult orElse(),
  }) {
    if (db != null) {
      return db(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_DB value) db,
    required TResult Function(_Local value) local,
  }) {
    return db(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
  }) {
    return db?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
    required TResult orElse(),
  }) {
    if (db != null) {
      return db(this);
    }
    return orElse();
  }
}

abstract class _DB extends JbmMobileFailure {
  const factory _DB(final String? message) = _$_DB;
  const _DB._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DBCopyWith<_$_DB> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalCopyWith<$Res>
    implements $JbmMobileFailureCopyWith<$Res> {
  factory _$$_LocalCopyWith(_$_Local value, $Res Function(_$_Local) then) =
      __$$_LocalCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_LocalCopyWithImpl<$Res> extends _$JbmMobileFailureCopyWithImpl<$Res>
    implements _$$_LocalCopyWith<$Res> {
  __$$_LocalCopyWithImpl(_$_Local _value, $Res Function(_$_Local) _then)
      : super(_value, (v) => _then(v as _$_Local));

  @override
  _$_Local get _value => super._value as _$_Local;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Local(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Local extends _Local {
  const _$_Local(this.message) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'JbmMobileFailure.local(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Local &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_LocalCopyWith<_$_Local> get copyWith =>
      __$$_LocalCopyWithImpl<_$_Local>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
    required TResult Function(String? message) db,
    required TResult Function(String? message) local,
  }) {
    return local(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
  }) {
    return local?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    TResult Function(String? message)? db,
    TResult Function(String? message)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_DB value) db,
    required TResult Function(_Local value) local,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_DB value)? db,
    TResult Function(_Local value)? local,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _Local extends JbmMobileFailure {
  const factory _Local(final String? message) = _$_Local;
  const _Local._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_LocalCopyWith<_$_Local> get copyWith =>
      throw _privateConstructorUsedError;
}
