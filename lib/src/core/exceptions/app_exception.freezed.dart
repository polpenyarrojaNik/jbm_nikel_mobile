// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function() noSuchFileOrDirectory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RestApiFailureCopyWith<$Res> {
  factory _$$RestApiFailureCopyWith(
          _$RestApiFailure value, $Res Function(_$RestApiFailure) then) =
      __$$RestApiFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({int errorCode, String errorMessage});
}

/// @nodoc
class __$$RestApiFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$RestApiFailure>
    implements _$$RestApiFailureCopyWith<$Res> {
  __$$RestApiFailureCopyWithImpl(
      _$RestApiFailure _value, $Res Function(_$RestApiFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RestApiFailure(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == errorMessage
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
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return restApiFailure(errorCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return restApiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AuthLocalFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AuthLocalFailure>
    implements _$$AuthLocalFailureCopyWith<$Res> {
  __$$AuthLocalFailureCopyWithImpl(
      _$AuthLocalFailure _value, $Res Function(_$AuthLocalFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AuthLocalFailure(
      null == errorMessage
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
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return authLocalFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return authLocalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FetchLocalDataFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$FetchLocalDataFailure>
    implements _$$FetchLocalDataFailureCopyWith<$Res> {
  __$$FetchLocalDataFailureCopyWithImpl(_$FetchLocalDataFailure _value,
      $Res Function(_$FetchLocalDataFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FetchLocalDataFailure(
      null == errorMessage
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
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return fetchLocalDataFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return fetchLocalDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CreateFileInCahceFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$CreateFileInCahceFailure>
    implements _$$CreateFileInCahceFailureCopyWith<$Res> {
  __$$CreateFileInCahceFailureCopyWithImpl(_$CreateFileInCahceFailure _value,
      $Res Function(_$CreateFileInCahceFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CreateFileInCahceFailure(
      null == errorMessage
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
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return createFileInCacheFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return createFileInCacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
  @useResult
  $Res call({String tableToSync, String errorMessage});
}

/// @nodoc
class __$$SyncFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$SyncFailure>
    implements _$$SyncFailureCopyWith<$Res> {
  __$$SyncFailureCopyWithImpl(
      _$SyncFailure _value, $Res Function(_$SyncFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableToSync = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SyncFailure(
      null == tableToSync
          ? _value.tableToSync
          : tableToSync // ignore: cast_nullable_to_non_nullable
              as String,
      null == errorMessage
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
            (identical(other.tableToSync, tableToSync) ||
                other.tableToSync == tableToSync) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableToSync, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return syncFailure(tableToSync, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return syncFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    extends _$AppExceptionCopyWithImpl<$Res, _$ClienteNotFoundFailure>
    implements _$$ClienteNotFoundFailureCopyWith<$Res> {
  __$$ClienteNotFoundFailureCopyWithImpl(_$ClienteNotFoundFailure _value,
      $Res Function(_$ClienteNotFoundFailure) _then)
      : super(_value, _then);
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return clienteNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return clienteNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    extends _$AppExceptionCopyWithImpl<$Res, _$ArticuloNotFoundFailure>
    implements _$$ArticuloNotFoundFailureCopyWith<$Res> {
  __$$ArticuloNotFoundFailureCopyWithImpl(_$ArticuloNotFoundFailure _value,
      $Res Function(_$ArticuloNotFoundFailure) _then)
      : super(_value, _then);
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return articuloNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return articuloNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    extends _$AppExceptionCopyWithImpl<$Res, _$PedidoVentaNotFoundFailure>
    implements _$$PedidoVentaNotFoundFailureCopyWith<$Res> {
  __$$PedidoVentaNotFoundFailureCopyWithImpl(
      _$PedidoVentaNotFoundFailure _value,
      $Res Function(_$PedidoVentaNotFoundFailure) _then)
      : super(_value, _then);
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return pedidoVentaNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return pedidoVentaNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PedidoVentaDeleteFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$PedidoVentaDeleteFailure>
    implements _$$PedidoVentaDeleteFailureCopyWith<$Res> {
  __$$PedidoVentaDeleteFailureCopyWithImpl(_$PedidoVentaDeleteFailure _value,
      $Res Function(_$PedidoVentaDeleteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$PedidoVentaDeleteFailure(
      null == errorMessage
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
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return pedidoVentaDeleteFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return pedidoVentaDeleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$InsertDataFailureCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$InsertDataFailure>
    implements _$$InsertDataFailureCopyWith<$Res> {
  __$$InsertDataFailureCopyWithImpl(
      _$InsertDataFailure _value, $Res Function(_$InsertDataFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$InsertDataFailure(
      null == errorMessage
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
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return insertDataFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return insertDataFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    extends _$AppExceptionCopyWithImpl<$Res, _$NotConnectionFailure>
    implements _$$NotConnectionFailureCopyWith<$Res> {
  __$$NotConnectionFailureCopyWithImpl(_$NotConnectionFailure _value,
      $Res Function(_$NotConnectionFailure) _then)
      : super(_value, _then);
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return notConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
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
    TResult Function()? noSuchFileOrDirectory,
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return notConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
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

/// @nodoc
abstract class _$$ArchivoNoEncontradoCopyWith<$Res> {
  factory _$$ArchivoNoEncontradoCopyWith(_$ArchivoNoEncontrado value,
          $Res Function(_$ArchivoNoEncontrado) then) =
      __$$ArchivoNoEncontradoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArchivoNoEncontradoCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ArchivoNoEncontrado>
    implements _$$ArchivoNoEncontradoCopyWith<$Res> {
  __$$ArchivoNoEncontradoCopyWithImpl(
      _$ArchivoNoEncontrado _value, $Res Function(_$ArchivoNoEncontrado) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArchivoNoEncontrado implements ArchivoNoEncontrado {
  const _$ArchivoNoEncontrado();

  @override
  String toString() {
    return 'AppException.noSuchFileOrDirectory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ArchivoNoEncontrado);
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
    required TResult Function() noSuchFileOrDirectory,
  }) {
    return noSuchFileOrDirectory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode, String errorMessage)? restApiFailure,
    TResult? Function(String errorMessage)? authLocalFailure,
    TResult? Function(String errorMessage)? fetchLocalDataFailure,
    TResult? Function(String errorMessage)? createFileInCacheFailure,
    TResult? Function(String tableToSync, String errorMessage)? syncFailure,
    TResult? Function()? clienteNotFound,
    TResult? Function()? articuloNotFound,
    TResult? Function()? pedidoVentaNotFound,
    TResult? Function(String errorMessage)? pedidoVentaDeleteFailure,
    TResult? Function(String errorMessage)? insertDataFailure,
    TResult? Function()? notConnection,
    TResult? Function()? noSuchFileOrDirectory,
  }) {
    return noSuchFileOrDirectory?.call();
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
    TResult Function()? noSuchFileOrDirectory,
    required TResult orElse(),
  }) {
    if (noSuchFileOrDirectory != null) {
      return noSuchFileOrDirectory();
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
    required TResult Function(ArchivoNoEncontrado value) noSuchFileOrDirectory,
  }) {
    return noSuchFileOrDirectory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestApiFailure value)? restApiFailure,
    TResult? Function(AuthLocalFailure value)? authLocalFailure,
    TResult? Function(FetchLocalDataFailure value)? fetchLocalDataFailure,
    TResult? Function(CreateFileInCahceFailure value)? createFileInCacheFailure,
    TResult? Function(SyncFailure value)? syncFailure,
    TResult? Function(ClienteNotFoundFailure value)? clienteNotFound,
    TResult? Function(ArticuloNotFoundFailure value)? articuloNotFound,
    TResult? Function(PedidoVentaNotFoundFailure value)? pedidoVentaNotFound,
    TResult? Function(PedidoVentaDeleteFailure value)? pedidoVentaDeleteFailure,
    TResult? Function(InsertDataFailure value)? insertDataFailure,
    TResult? Function(NotConnectionFailure value)? notConnection,
    TResult? Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
  }) {
    return noSuchFileOrDirectory?.call(this);
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
    TResult Function(ArchivoNoEncontrado value)? noSuchFileOrDirectory,
    required TResult orElse(),
  }) {
    if (noSuchFileOrDirectory != null) {
      return noSuchFileOrDirectory(this);
    }
    return orElse();
  }
}

abstract class ArchivoNoEncontrado implements AppException {
  const factory ArchivoNoEncontrado() = _$ArchivoNoEncontrado;
}
