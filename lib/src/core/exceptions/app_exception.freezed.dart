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
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
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
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return restApiFailure(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return restApiFailure?.call(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
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
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return restApiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return restApiFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
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
abstract class _$$AuthLocalFailureCopyWith<$Res> {
  factory _$$AuthLocalFailureCopyWith(
          _$AuthLocalFailure value, $Res Function(_$AuthLocalFailure) then) =
      __$$AuthLocalFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AuthLocalFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$AuthLocalFailureCopyWith<$Res> {
  __$$AuthLocalFailureCopyWithImpl(
      _$AuthLocalFailure _value, $Res Function(_$AuthLocalFailure) _then)
      : super(_value, (v) => _then(v as _$AuthLocalFailure));

  @override
  _$AuthLocalFailure get _value => super._value as _$AuthLocalFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthLocalFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthLocalFailure implements AuthLocalFailure {
  const _$AuthLocalFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.authLocalFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLocalFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$AuthLocalFailureCopyWith<_$AuthLocalFailure> get copyWith =>
      __$$AuthLocalFailureCopyWithImpl<_$AuthLocalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return authLocalFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return authLocalFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (authLocalFailure != null) {
      return authLocalFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return authLocalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return authLocalFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (authLocalFailure != null) {
      return authLocalFailure(this);
    }
    return orElse();
  }
}

abstract class AuthLocalFailure implements AppException {
  const factory AuthLocalFailure(final String errorMessage) =
      _$AuthLocalFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$AuthLocalFailureCopyWith<_$AuthLocalFailure> get copyWith =>
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
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return fetchLocalDataFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return fetchLocalDataFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
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
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return fetchLocalDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return fetchLocalDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
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
abstract class _$$CreateFileInCahceFailureCopyWith<$Res> {
  factory _$$CreateFileInCahceFailureCopyWith(_$CreateFileInCahceFailure value,
          $Res Function(_$CreateFileInCahceFailure) then) =
      __$$CreateFileInCahceFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CreateFileInCahceFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$CreateFileInCahceFailureCopyWith<$Res> {
  __$$CreateFileInCahceFailureCopyWithImpl(_$CreateFileInCahceFailure _value,
      $Res Function(_$CreateFileInCahceFailure) _then)
      : super(_value, (v) => _then(v as _$CreateFileInCahceFailure));

  @override
  _$CreateFileInCahceFailure get _value =>
      super._value as _$CreateFileInCahceFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$CreateFileInCahceFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateFileInCahceFailure implements CreateFileInCahceFailure {
  const _$CreateFileInCahceFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.createFileInCacheFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFileInCahceFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$CreateFileInCahceFailureCopyWith<_$CreateFileInCahceFailure>
      get copyWith =>
          __$$CreateFileInCahceFailureCopyWithImpl<_$CreateFileInCahceFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return createFileInCacheFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return createFileInCacheFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (createFileInCacheFailure != null) {
      return createFileInCacheFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return createFileInCacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return createFileInCacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (createFileInCacheFailure != null) {
      return createFileInCacheFailure(this);
    }
    return orElse();
  }
}

abstract class CreateFileInCahceFailure implements AppException {
  const factory CreateFileInCahceFailure(final String errorMessage) =
      _$CreateFileInCahceFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$CreateFileInCahceFailureCopyWith<_$CreateFileInCahceFailure>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return syncFailure(tableToSync, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return syncFailure?.call(tableToSync, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
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
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return syncFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return syncFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
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
abstract class _$$ClienteNotFoundFailureCopyWith<$Res> {
  factory _$$ClienteNotFoundFailureCopyWith(_$ClienteNotFoundFailure value,
          $Res Function(_$ClienteNotFoundFailure) then) =
      __$$ClienteNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClienteNotFoundFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$ClienteNotFoundFailureCopyWith<$Res> {
  __$$ClienteNotFoundFailureCopyWithImpl(_$ClienteNotFoundFailure _value,
      $Res Function(_$ClienteNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$ClienteNotFoundFailure));

  @override
  _$ClienteNotFoundFailure get _value =>
      super._value as _$ClienteNotFoundFailure;
}

/// @nodoc

class _$ClienteNotFoundFailure implements ClienteNotFoundFailure {
  const _$ClienteNotFoundFailure();

  @override
  String toString() {
    return 'AppException.clienteNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClienteNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return clienteNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return clienteNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (clienteNotFound != null) {
      return clienteNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return clienteNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return clienteNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (clienteNotFound != null) {
      return clienteNotFound(this);
    }
    return orElse();
  }
}

abstract class ClienteNotFoundFailure implements AppException {
  const factory ClienteNotFoundFailure() = _$ClienteNotFoundFailure;
}

/// @nodoc
abstract class _$$ArticuloNotFoundFailureCopyWith<$Res> {
  factory _$$ArticuloNotFoundFailureCopyWith(_$ArticuloNotFoundFailure value,
          $Res Function(_$ArticuloNotFoundFailure) then) =
      __$$ArticuloNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArticuloNotFoundFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$ArticuloNotFoundFailureCopyWith<$Res> {
  __$$ArticuloNotFoundFailureCopyWithImpl(_$ArticuloNotFoundFailure _value,
      $Res Function(_$ArticuloNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$ArticuloNotFoundFailure));

  @override
  _$ArticuloNotFoundFailure get _value =>
      super._value as _$ArticuloNotFoundFailure;
}

/// @nodoc

class _$ArticuloNotFoundFailure implements ArticuloNotFoundFailure {
  const _$ArticuloNotFoundFailure();

  @override
  String toString() {
    return 'AppException.articuloNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return articuloNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return articuloNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (articuloNotFound != null) {
      return articuloNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return articuloNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return articuloNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (articuloNotFound != null) {
      return articuloNotFound(this);
    }
    return orElse();
  }
}

abstract class ArticuloNotFoundFailure implements AppException {
  const factory ArticuloNotFoundFailure() = _$ArticuloNotFoundFailure;
}

/// @nodoc
abstract class _$$PedidoVentaNotFoundFailureCopyWith<$Res> {
  factory _$$PedidoVentaNotFoundFailureCopyWith(
          _$PedidoVentaNotFoundFailure value,
          $Res Function(_$PedidoVentaNotFoundFailure) then) =
      __$$PedidoVentaNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PedidoVentaNotFoundFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$PedidoVentaNotFoundFailureCopyWith<$Res> {
  __$$PedidoVentaNotFoundFailureCopyWithImpl(
      _$PedidoVentaNotFoundFailure _value,
      $Res Function(_$PedidoVentaNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$PedidoVentaNotFoundFailure));

  @override
  _$PedidoVentaNotFoundFailure get _value =>
      super._value as _$PedidoVentaNotFoundFailure;
}

/// @nodoc

class _$PedidoVentaNotFoundFailure implements PedidoVentaNotFoundFailure {
  const _$PedidoVentaNotFoundFailure();

  @override
  String toString() {
    return 'AppException.pedidoVentaNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return pedidoVentaNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return pedidoVentaNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (pedidoVentaNotFound != null) {
      return pedidoVentaNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return pedidoVentaNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return pedidoVentaNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (pedidoVentaNotFound != null) {
      return pedidoVentaNotFound(this);
    }
    return orElse();
  }
}

abstract class PedidoVentaNotFoundFailure implements AppException {
  const factory PedidoVentaNotFoundFailure() = _$PedidoVentaNotFoundFailure;
}

/// @nodoc
abstract class _$$PedidoVentaDeleteFailureCopyWith<$Res> {
  factory _$$PedidoVentaDeleteFailureCopyWith(_$PedidoVentaDeleteFailure value,
          $Res Function(_$PedidoVentaDeleteFailure) then) =
      __$$PedidoVentaDeleteFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PedidoVentaDeleteFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$PedidoVentaDeleteFailureCopyWith<$Res> {
  __$$PedidoVentaDeleteFailureCopyWithImpl(_$PedidoVentaDeleteFailure _value,
      $Res Function(_$PedidoVentaDeleteFailure) _then)
      : super(_value, (v) => _then(v as _$PedidoVentaDeleteFailure));

  @override
  _$PedidoVentaDeleteFailure get _value =>
      super._value as _$PedidoVentaDeleteFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$PedidoVentaDeleteFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PedidoVentaDeleteFailure implements PedidoVentaDeleteFailure {
  const _$PedidoVentaDeleteFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.pedidoVentaDeleteFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaDeleteFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$PedidoVentaDeleteFailureCopyWith<_$PedidoVentaDeleteFailure>
      get copyWith =>
          __$$PedidoVentaDeleteFailureCopyWithImpl<_$PedidoVentaDeleteFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return pedidoVentaDeleteFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return pedidoVentaDeleteFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (pedidoVentaDeleteFailure != null) {
      return pedidoVentaDeleteFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return pedidoVentaDeleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return pedidoVentaDeleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (pedidoVentaDeleteFailure != null) {
      return pedidoVentaDeleteFailure(this);
    }
    return orElse();
  }
}

abstract class PedidoVentaDeleteFailure implements AppException {
  const factory PedidoVentaDeleteFailure(final String errorMessage) =
      _$PedidoVentaDeleteFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$PedidoVentaDeleteFailureCopyWith<_$PedidoVentaDeleteFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertDataFailureCopyWith<$Res> {
  factory _$$InsertDataFailureCopyWith(
          _$InsertDataFailure value, $Res Function(_$InsertDataFailure) then) =
      __$$InsertDataFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$InsertDataFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$InsertDataFailureCopyWith<$Res> {
  __$$InsertDataFailureCopyWithImpl(
      _$InsertDataFailure _value, $Res Function(_$InsertDataFailure) _then)
      : super(_value, (v) => _then(v as _$InsertDataFailure));

  @override
  _$InsertDataFailure get _value => super._value as _$InsertDataFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$InsertDataFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InsertDataFailure implements InsertDataFailure {
  const _$InsertDataFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.insertDataFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertDataFailure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$InsertDataFailureCopyWith<_$InsertDataFailure> get copyWith =>
      __$$InsertDataFailureCopyWithImpl<_$InsertDataFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return insertDataFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return insertDataFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (insertDataFailure != null) {
      return insertDataFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return insertDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return insertDataFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (insertDataFailure != null) {
      return insertDataFailure(this);
    }
    return orElse();
  }
}

abstract class InsertDataFailure implements AppException {
  const factory InsertDataFailure(final String errorMessage) =
      _$InsertDataFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$InsertDataFailureCopyWith<_$InsertDataFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotConnectionFailureCopyWith<$Res> {
  factory _$$NotConnectionFailureCopyWith(_$NotConnectionFailure value,
          $Res Function(_$NotConnectionFailure) then) =
      __$$NotConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectionFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res>
    implements _$$NotConnectionFailureCopyWith<$Res> {
  __$$NotConnectionFailureCopyWithImpl(_$NotConnectionFailure _value,
      $Res Function(_$NotConnectionFailure) _then)
      : super(_value, (v) => _then(v as _$NotConnectionFailure));

  @override
  _$NotConnectionFailure get _value => super._value as _$NotConnectionFailure;
}

/// @nodoc

class _$NotConnectionFailure implements NotConnectionFailure {
  const _$NotConnectionFailure();

  @override
  String toString() {
    return 'AppException.notConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode, String errorMessage)
        restApiFailure,
    required TResult Function(String errorMessage) authLocalFailure,
    required TResult Function(String errorMessage) fetchLocalDataFailure,
    required TResult Function(String errorMessage) createFileInCacheFailure,
    required TResult Function(String tableToSync, String errorMessage)
        syncFailure,
    required TResult Function() clienteNotFound,
    required TResult Function() articuloNotFound,
    required TResult Function() pedidoVentaNotFound,
    required TResult Function(String errorMessage) pedidoVentaDeleteFailure,
    required TResult Function(String errorMessage) insertDataFailure,
    required TResult Function() notConnection,
  }) {
    return notConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
  }) {
    return notConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode, String errorMessage)? restApiFailure,
    TResult Function(String errorMessage)? authLocalFailure,
    TResult Function(String errorMessage)? fetchLocalDataFailure,
    TResult Function(String errorMessage)? createFileInCacheFailure,
    TResult Function(String tableToSync, String errorMessage)? syncFailure,
    TResult Function()? clienteNotFound,
    TResult Function()? articuloNotFound,
    TResult Function()? pedidoVentaNotFound,
    TResult Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult Function(String errorMessage)? insertDataFailure,
    TResult Function()? notConnection,
    required TResult orElse(),
  }) {
    if (notConnection != null) {
      return notConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestApiFailure value) restApiFailure,
    required TResult Function(AuthLocalFailure value) authLocalFailure,
    required TResult Function(FetchLocalDataFailure value)
        fetchLocalDataFailure,
    required TResult Function(CreateFileInCahceFailure value)
        createFileInCacheFailure,
    required TResult Function(SyncFailure value) syncFailure,
    required TResult Function(ClienteNotFoundFailure value) clienteNotFound,
    required TResult Function(ArticuloNotFoundFailure value) articuloNotFound,
    required TResult Function(PedidoVentaNotFoundFailure value)
        pedidoVentaNotFound,
    required TResult Function(PedidoVentaDeleteFailure value)
        pedidoVentaDeleteFailure,
    required TResult Function(InsertDataFailure value) insertDataFailure,
    required TResult Function(NotConnectionFailure value) notConnection,
  }) {
    return notConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
  }) {
    return notConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestApiFailure value)? restApiFailure,
    TResult Function(AuthLocalFailure value)? authLocalFailure,
    TResult Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult Function(SyncFailure value)? syncFailure,
    TResult Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult Function(InsertDataFailure value)? insertDataFailure,
    TResult Function(NotConnectionFailure value)? notConnection,
    required TResult orElse(),
  }) {
    if (notConnection != null) {
      return notConnection(this);
    }
    return orElse();
  }
}

abstract class NotConnectionFailure implements AppException {
  const factory NotConnectionFailure() = _$NotConnectionFailure;
}
