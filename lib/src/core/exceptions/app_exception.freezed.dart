// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res> implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  final AppException _value;
  // ignore: unused_field
  final $Res Function(AppException) _then;
}

/// @nodoc
abstract class _$$RestApiFailureCopyWith<$Res> {
  factory _$$RestApiFailureCopyWith(
          _$RestApiFailure value, $Res Function(_$RestApiFailure) then) =
      __$$RestApiFailureCopyWithImpl<$Res>;
  $Res call({int errorCode, String errorMessage});
}

/// @nodoc
class __$$RestApiFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$RestApiFailureCopyWith<$Res> {
  __$$RestApiFailureCopyWithImpl(
      _$RestApiFailure _value, $Res Function(_$RestApiFailure) _then)
      : super(_value, (v) => _then(v as _$RestApiFailure));

  @override
  _$RestApiFailure get _value => super._value as _$RestApiFailure;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RestApiFailure(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestApiFailure implements RestApiFailure {
  const _$RestApiFailure(this.errorCode, this.errorMessage);

  @override
  final int errorCode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.restApiFailure(errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestApiFailure &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$RestApiFailureCopyWith<_$RestApiFailure> get copyWith =>
      __$$RestApiFailureCopyWithImpl<_$RestApiFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return restApiFailure(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return restApiFailure?.call(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (restApiFailure != null) {
      return restApiFailure(errorCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return restApiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return restApiFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (restApiFailure != null) {
      return restApiFailure(this);
    }
    return orElse();
  }
}

abstract class RestApiFailure implements AppException {
  const factory RestApiFailure(final int errorCode, final String errorMessage) =
      _$RestApiFailure;

  int get errorCode;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$RestApiFailureCopyWith<_$RestApiFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchLocalDataFailureCopyWith<$Res> {
  factory _$$FetchLocalDataFailureCopyWith(_$FetchLocalDataFailure value,
          $Res Function(_$FetchLocalDataFailure) then) =
      __$$FetchLocalDataFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FetchLocalDataFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$FetchLocalDataFailureCopyWith<$Res> {
  __$$FetchLocalDataFailureCopyWithImpl(_$FetchLocalDataFailure _value,
      $Res Function(_$FetchLocalDataFailure) _then)
      : super(_value, (v) => _then(v as _$FetchLocalDataFailure));

  @override
  _$FetchLocalDataFailure get _value => super._value as _$FetchLocalDataFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$FetchLocalDataFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchLocalDataFailure implements FetchLocalDataFailure {
  const _$FetchLocalDataFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.fetchLocalDataFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchLocalDataFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$FetchLocalDataFailureCopyWith<_$FetchLocalDataFailure> get copyWith =>
      __$$FetchLocalDataFailureCopyWithImpl<_$FetchLocalDataFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return fetchLocalDataFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return fetchLocalDataFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (fetchLocalDataFailure != null) {
      return fetchLocalDataFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return fetchLocalDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return fetchLocalDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (fetchLocalDataFailure != null) {
      return fetchLocalDataFailure(this);
    }
    return orElse();
  }
}

abstract class FetchLocalDataFailure implements AppException {
  const factory FetchLocalDataFailure(final String errorMessage) =
      _$FetchLocalDataFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FetchLocalDataFailureCopyWith<_$FetchLocalDataFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncFailureCopyWith<$Res> {
  factory _$$SyncFailureCopyWith(
          _$SyncFailure value, $Res Function(_$SyncFailure) then) =
      __$$SyncFailureCopyWithImpl<$Res>;
  $Res call({String tableToSync, String errorMessage});
}

/// @nodoc
class __$$SyncFailureCopyWithImpl<$Res> extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$SyncFailureCopyWith<$Res> {
  __$$SyncFailureCopyWithImpl(
      _$SyncFailure _value, $Res Function(_$SyncFailure) _then)
      : super(_value, (v) => _then(v as _$SyncFailure));

  @override
  _$SyncFailure get _value => super._value as _$SyncFailure;

  @override
  $Res call({
    Object? tableToSync = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SyncFailure(
      tableToSync == freezed
          ? _value.tableToSync
          : tableToSync // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SyncFailure implements SyncFailure {
  const _$SyncFailure(this.tableToSync, this.errorMessage);

  @override
  final String tableToSync;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.syncFailure(tableToSync: $tableToSync, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncFailure &&
            const DeepCollectionEquality()
                .equals(other.tableToSync, tableToSync) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tableToSync),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$SyncFailureCopyWith<_$SyncFailure> get copyWith =>
      __$$SyncFailureCopyWithImpl<_$SyncFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return syncFailure(tableToSync, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return syncFailure?.call(tableToSync, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (syncFailure != null) {
      return syncFailure(tableToSync, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return syncFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return syncFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (syncFailure != null) {
      return syncFailure(this);
    }
    return orElse();
  }
}

abstract class SyncFailure implements AppException {
  const factory SyncFailure(
      final String tableToSync, final String errorMessage) = _$SyncFailure;

  String get tableToSync;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SyncFailureCopyWith<_$SyncFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerNotFoundFailureCopyWith<$Res> {
  factory _$$CustomerNotFoundFailureCopyWith(_$CustomerNotFoundFailure value,
          $Res Function(_$CustomerNotFoundFailure) then) =
      __$$CustomerNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerNotFoundFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$CustomerNotFoundFailureCopyWith<$Res> {
  __$$CustomerNotFoundFailureCopyWithImpl(_$CustomerNotFoundFailure _value,
      $Res Function(_$CustomerNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$CustomerNotFoundFailure));

  @override
  _$CustomerNotFoundFailure get _value =>
      super._value as _$CustomerNotFoundFailure;
}

/// @nodoc

class _$CustomerNotFoundFailure implements CustomerNotFoundFailure {
  const _$CustomerNotFoundFailure();

  @override
  String toString() {
    return 'AppException.customerNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return customerNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return customerNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (customerNotFound != null) {
      return customerNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return customerNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return customerNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (customerNotFound != null) {
      return customerNotFound(this);
    }
    return orElse();
  }
}

abstract class CustomerNotFoundFailure implements AppException {
  const factory CustomerNotFoundFailure() = _$CustomerNotFoundFailure;
}

/// @nodoc
abstract class _$$ArticleNotFoundFailureCopyWith<$Res> {
  factory _$$ArticleNotFoundFailureCopyWith(_$ArticleNotFoundFailure value,
          $Res Function(_$ArticleNotFoundFailure) then) =
      __$$ArticleNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArticleNotFoundFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$ArticleNotFoundFailureCopyWith<$Res> {
  __$$ArticleNotFoundFailureCopyWithImpl(_$ArticleNotFoundFailure _value,
      $Res Function(_$ArticleNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$ArticleNotFoundFailure));

  @override
  _$ArticleNotFoundFailure get _value =>
      super._value as _$ArticleNotFoundFailure;
}

/// @nodoc

class _$ArticleNotFoundFailure implements ArticleNotFoundFailure {
  const _$ArticleNotFoundFailure();

  @override
  String toString() {
    return 'AppException.articleNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ArticleNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return articleNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return articleNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (articleNotFound != null) {
      return articleNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return articleNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return articleNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (articleNotFound != null) {
      return articleNotFound(this);
    }
    return orElse();
  }
}

abstract class ArticleNotFoundFailure implements AppException {
  const factory ArticleNotFoundFailure() = _$ArticleNotFoundFailure;
}

/// @nodoc
abstract class _$$SalesOrderNotFoundFailureCopyWith<$Res> {
  factory _$$SalesOrderNotFoundFailureCopyWith(
          _$SalesOrderNotFoundFailure value,
          $Res Function(_$SalesOrderNotFoundFailure) then) =
      __$$SalesOrderNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SalesOrderNotFoundFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$SalesOrderNotFoundFailureCopyWith<$Res> {
  __$$SalesOrderNotFoundFailureCopyWithImpl(_$SalesOrderNotFoundFailure _value,
      $Res Function(_$SalesOrderNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$SalesOrderNotFoundFailure));

  @override
  _$SalesOrderNotFoundFailure get _value =>
      super._value as _$SalesOrderNotFoundFailure;
}

/// @nodoc

class _$SalesOrderNotFoundFailure implements SalesOrderNotFoundFailure {
  const _$SalesOrderNotFoundFailure();

  @override
  String toString() {
    return 'AppException.salesOrderNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return salesOrderNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return salesOrderNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (salesOrderNotFound != null) {
      return salesOrderNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return salesOrderNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return salesOrderNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (salesOrderNotFound != null) {
      return salesOrderNotFound(this);
    }
    return orElse();
  }
}

abstract class SalesOrderNotFoundFailure implements AppException {
  const factory SalesOrderNotFoundFailure() = _$SalesOrderNotFoundFailure;
}

/// @nodoc
abstract class _$$SalesOrderUpsertFailureCopyWith<$Res> {
  factory _$$SalesOrderUpsertFailureCopyWith(_$SalesOrderUpsertFailure value,
          $Res Function(_$SalesOrderUpsertFailure) then) =
      __$$SalesOrderUpsertFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SalesOrderUpsertFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$SalesOrderUpsertFailureCopyWith<$Res> {
  __$$SalesOrderUpsertFailureCopyWithImpl(_$SalesOrderUpsertFailure _value,
      $Res Function(_$SalesOrderUpsertFailure) _then)
      : super(_value, (v) => _then(v as _$SalesOrderUpsertFailure));

  @override
  _$SalesOrderUpsertFailure get _value =>
      super._value as _$SalesOrderUpsertFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$SalesOrderUpsertFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SalesOrderUpsertFailure implements SalesOrderUpsertFailure {
  const _$SalesOrderUpsertFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.salesOrderUpsertFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderUpsertFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$SalesOrderUpsertFailureCopyWith<_$SalesOrderUpsertFailure> get copyWith =>
      __$$SalesOrderUpsertFailureCopyWithImpl<_$SalesOrderUpsertFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return salesOrderUpsertFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return salesOrderUpsertFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (salesOrderUpsertFailure != null) {
      return salesOrderUpsertFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return salesOrderUpsertFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return salesOrderUpsertFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (salesOrderUpsertFailure != null) {
      return salesOrderUpsertFailure(this);
    }
    return orElse();
  }
}

abstract class SalesOrderUpsertFailure implements AppException {
  const factory SalesOrderUpsertFailure(final String errorMessage) =
      _$SalesOrderUpsertFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SalesOrderUpsertFailureCopyWith<_$SalesOrderUpsertFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SalesOrderDeleteFailureCopyWith<$Res> {
  factory _$$SalesOrderDeleteFailureCopyWith(_$SalesOrderDeleteFailure value,
          $Res Function(_$SalesOrderDeleteFailure) then) =
      __$$SalesOrderDeleteFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SalesOrderDeleteFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$SalesOrderDeleteFailureCopyWith<$Res> {
  __$$SalesOrderDeleteFailureCopyWithImpl(_$SalesOrderDeleteFailure _value,
      $Res Function(_$SalesOrderDeleteFailure) _then)
      : super(_value, (v) => _then(v as _$SalesOrderDeleteFailure));

  @override
  _$SalesOrderDeleteFailure get _value =>
      super._value as _$SalesOrderDeleteFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$SalesOrderDeleteFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SalesOrderDeleteFailure implements SalesOrderDeleteFailure {
  const _$SalesOrderDeleteFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.salesOrderDeleteFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderDeleteFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$SalesOrderDeleteFailureCopyWith<_$SalesOrderDeleteFailure> get copyWith =>
      __$$SalesOrderDeleteFailureCopyWithImpl<_$SalesOrderDeleteFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() customerNotFound,
    required TResult Function() articleNotFound,
    required TResult Function() salesOrderNotFound,
    required TResult Function(String errorMessage) salesOrderUpsertFailure,
    required TResult Function(String errorMessage) salesOrderDeleteFailure,
  }) {
    return salesOrderDeleteFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
  }) {
    return salesOrderDeleteFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? customerNotFound,
    TResult Function()? articleNotFound,
    TResult Function()? salesOrderNotFound,
    TResult Function(String errorMessage)? salesOrderUpsertFailure,
    TResult Function(String errorMessage)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (salesOrderDeleteFailure != null) {
      return salesOrderDeleteFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(CustomerNotFoundFailure value) customerNotFound,
    required TResult Function(ArticleNotFoundFailure value) articleNotFound,
    required TResult Function(SalesOrderNotFoundFailure value)
        salesOrderNotFound,
    required TResult Function(SalesOrderUpsertFailure value)
        salesOrderUpsertFailure,
    required TResult Function(SalesOrderDeleteFailure value)
        salesOrderDeleteFailure,
  }) {
    return salesOrderDeleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
  }) {
    return salesOrderDeleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(CustomerNotFoundFailure value)? customerNotFound,
    TResult Function(ArticleNotFoundFailure value)? articleNotFound,
    TResult Function(SalesOrderNotFoundFailure value)? salesOrderNotFound,
    TResult Function(SalesOrderUpsertFailure value)? salesOrderUpsertFailure,
    TResult Function(SalesOrderDeleteFailure value)? salesOrderDeleteFailure,
    required TResult orElse(),
  }) {
    if (salesOrderDeleteFailure != null) {
      return salesOrderDeleteFailure(this);
    }
    return orElse();
  }
}

abstract class SalesOrderDeleteFailure implements AppException {
  const factory SalesOrderDeleteFailure(final String errorMessage) =
      _$SalesOrderDeleteFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SalesOrderDeleteFailureCopyWith<_$SalesOrderDeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
