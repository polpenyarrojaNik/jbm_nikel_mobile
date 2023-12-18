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
abstract class _$$RestApiFailureImplCopyWith<$Res> {
  factory _$$RestApiFailureImplCopyWith(_$RestApiFailureImpl value,
          $Res Function(_$RestApiFailureImpl) then) =
      __$$RestApiFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int errorCode, String errorMessage});
}

/// @nodoc
class __$$RestApiFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$RestApiFailureImpl>
    implements _$$RestApiFailureImplCopyWith<$Res> {
  __$$RestApiFailureImplCopyWithImpl(
      _$RestApiFailureImpl _value, $Res Function(_$RestApiFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RestApiFailureImpl(
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

class _$RestApiFailureImpl implements RestApiFailure {
  const _$RestApiFailureImpl(this.errorCode, this.errorMessage);

  @override
  final int errorCode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.restApiFailure(errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestApiFailureImpl &&
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
  _$$RestApiFailureImplCopyWith<_$RestApiFailureImpl> get copyWith =>
      __$$RestApiFailureImplCopyWithImpl<_$RestApiFailureImpl>(
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
      _$RestApiFailureImpl;

  int get errorCode;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$RestApiFailureImplCopyWith<_$RestApiFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLocalFailureImplCopyWith<$Res> {
  factory _$$AuthLocalFailureImplCopyWith(_$AuthLocalFailureImpl value,
          $Res Function(_$AuthLocalFailureImpl) then) =
      __$$AuthLocalFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AuthLocalFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AuthLocalFailureImpl>
    implements _$$AuthLocalFailureImplCopyWith<$Res> {
  __$$AuthLocalFailureImplCopyWithImpl(_$AuthLocalFailureImpl _value,
      $Res Function(_$AuthLocalFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AuthLocalFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthLocalFailureImpl implements AuthLocalFailure {
  const _$AuthLocalFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.authLocalFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLocalFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLocalFailureImplCopyWith<_$AuthLocalFailureImpl> get copyWith =>
      __$$AuthLocalFailureImplCopyWithImpl<_$AuthLocalFailureImpl>(
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
      _$AuthLocalFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$AuthLocalFailureImplCopyWith<_$AuthLocalFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchLocalDataFailureImplCopyWith<$Res> {
  factory _$$FetchLocalDataFailureImplCopyWith(
          _$FetchLocalDataFailureImpl value,
          $Res Function(_$FetchLocalDataFailureImpl) then) =
      __$$FetchLocalDataFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FetchLocalDataFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$FetchLocalDataFailureImpl>
    implements _$$FetchLocalDataFailureImplCopyWith<$Res> {
  __$$FetchLocalDataFailureImplCopyWithImpl(_$FetchLocalDataFailureImpl _value,
      $Res Function(_$FetchLocalDataFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FetchLocalDataFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchLocalDataFailureImpl implements FetchLocalDataFailure {
  const _$FetchLocalDataFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.fetchLocalDataFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchLocalDataFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchLocalDataFailureImplCopyWith<_$FetchLocalDataFailureImpl>
      get copyWith => __$$FetchLocalDataFailureImplCopyWithImpl<
          _$FetchLocalDataFailureImpl>(this, _$identity);

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
      _$FetchLocalDataFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FetchLocalDataFailureImplCopyWith<_$FetchLocalDataFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateFileInCahceFailureImplCopyWith<$Res> {
  factory _$$CreateFileInCahceFailureImplCopyWith(
          _$CreateFileInCahceFailureImpl value,
          $Res Function(_$CreateFileInCahceFailureImpl) then) =
      __$$CreateFileInCahceFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CreateFileInCahceFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$CreateFileInCahceFailureImpl>
    implements _$$CreateFileInCahceFailureImplCopyWith<$Res> {
  __$$CreateFileInCahceFailureImplCopyWithImpl(
      _$CreateFileInCahceFailureImpl _value,
      $Res Function(_$CreateFileInCahceFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CreateFileInCahceFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateFileInCahceFailureImpl implements CreateFileInCahceFailure {
  const _$CreateFileInCahceFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.createFileInCacheFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFileInCahceFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFileInCahceFailureImplCopyWith<_$CreateFileInCahceFailureImpl>
      get copyWith => __$$CreateFileInCahceFailureImplCopyWithImpl<
          _$CreateFileInCahceFailureImpl>(this, _$identity);

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
      _$CreateFileInCahceFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$CreateFileInCahceFailureImplCopyWith<_$CreateFileInCahceFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncFailureImplCopyWith<$Res> {
  factory _$$SyncFailureImplCopyWith(
          _$SyncFailureImpl value, $Res Function(_$SyncFailureImpl) then) =
      __$$SyncFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tableToSync, String errorMessage});
}

/// @nodoc
class __$$SyncFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$SyncFailureImpl>
    implements _$$SyncFailureImplCopyWith<$Res> {
  __$$SyncFailureImplCopyWithImpl(
      _$SyncFailureImpl _value, $Res Function(_$SyncFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableToSync = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SyncFailureImpl(
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

class _$SyncFailureImpl implements SyncFailure {
  const _$SyncFailureImpl(this.tableToSync, this.errorMessage);

  @override
  final String tableToSync;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.syncFailure(tableToSync: $tableToSync, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncFailureImpl &&
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
  _$$SyncFailureImplCopyWith<_$SyncFailureImpl> get copyWith =>
      __$$SyncFailureImplCopyWithImpl<_$SyncFailureImpl>(this, _$identity);

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
      final String tableToSync, final String errorMessage) = _$SyncFailureImpl;

  String get tableToSync;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$SyncFailureImplCopyWith<_$SyncFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClienteNotFoundFailureImplCopyWith<$Res> {
  factory _$$ClienteNotFoundFailureImplCopyWith(
          _$ClienteNotFoundFailureImpl value,
          $Res Function(_$ClienteNotFoundFailureImpl) then) =
      __$$ClienteNotFoundFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClienteNotFoundFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ClienteNotFoundFailureImpl>
    implements _$$ClienteNotFoundFailureImplCopyWith<$Res> {
  __$$ClienteNotFoundFailureImplCopyWithImpl(
      _$ClienteNotFoundFailureImpl _value,
      $Res Function(_$ClienteNotFoundFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClienteNotFoundFailureImpl implements ClienteNotFoundFailure {
  const _$ClienteNotFoundFailureImpl();

  @override
  String toString() {
    return 'AppException.clienteNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteNotFoundFailureImpl);
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
  const factory ClienteNotFoundFailure() = _$ClienteNotFoundFailureImpl;
}

/// @nodoc
abstract class _$$ArticuloNotFoundFailureImplCopyWith<$Res> {
  factory _$$ArticuloNotFoundFailureImplCopyWith(
          _$ArticuloNotFoundFailureImpl value,
          $Res Function(_$ArticuloNotFoundFailureImpl) then) =
      __$$ArticuloNotFoundFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArticuloNotFoundFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ArticuloNotFoundFailureImpl>
    implements _$$ArticuloNotFoundFailureImplCopyWith<$Res> {
  __$$ArticuloNotFoundFailureImplCopyWithImpl(
      _$ArticuloNotFoundFailureImpl _value,
      $Res Function(_$ArticuloNotFoundFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArticuloNotFoundFailureImpl implements ArticuloNotFoundFailure {
  const _$ArticuloNotFoundFailureImpl();

  @override
  String toString() {
    return 'AppException.articuloNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloNotFoundFailureImpl);
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
  const factory ArticuloNotFoundFailure() = _$ArticuloNotFoundFailureImpl;
}

/// @nodoc
abstract class _$$PedidoVentaNotFoundFailureImplCopyWith<$Res> {
  factory _$$PedidoVentaNotFoundFailureImplCopyWith(
          _$PedidoVentaNotFoundFailureImpl value,
          $Res Function(_$PedidoVentaNotFoundFailureImpl) then) =
      __$$PedidoVentaNotFoundFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PedidoVentaNotFoundFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$PedidoVentaNotFoundFailureImpl>
    implements _$$PedidoVentaNotFoundFailureImplCopyWith<$Res> {
  __$$PedidoVentaNotFoundFailureImplCopyWithImpl(
      _$PedidoVentaNotFoundFailureImpl _value,
      $Res Function(_$PedidoVentaNotFoundFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PedidoVentaNotFoundFailureImpl implements PedidoVentaNotFoundFailure {
  const _$PedidoVentaNotFoundFailureImpl();

  @override
  String toString() {
    return 'AppException.pedidoVentaNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaNotFoundFailureImpl);
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
  const factory PedidoVentaNotFoundFailure() = _$PedidoVentaNotFoundFailureImpl;
}

/// @nodoc
abstract class _$$PedidoVentaDeleteFailureImplCopyWith<$Res> {
  factory _$$PedidoVentaDeleteFailureImplCopyWith(
          _$PedidoVentaDeleteFailureImpl value,
          $Res Function(_$PedidoVentaDeleteFailureImpl) then) =
      __$$PedidoVentaDeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PedidoVentaDeleteFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$PedidoVentaDeleteFailureImpl>
    implements _$$PedidoVentaDeleteFailureImplCopyWith<$Res> {
  __$$PedidoVentaDeleteFailureImplCopyWithImpl(
      _$PedidoVentaDeleteFailureImpl _value,
      $Res Function(_$PedidoVentaDeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$PedidoVentaDeleteFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PedidoVentaDeleteFailureImpl implements PedidoVentaDeleteFailure {
  const _$PedidoVentaDeleteFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.pedidoVentaDeleteFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaDeleteFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PedidoVentaDeleteFailureImplCopyWith<_$PedidoVentaDeleteFailureImpl>
      get copyWith => __$$PedidoVentaDeleteFailureImplCopyWithImpl<
          _$PedidoVentaDeleteFailureImpl>(this, _$identity);

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
      _$PedidoVentaDeleteFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$PedidoVentaDeleteFailureImplCopyWith<_$PedidoVentaDeleteFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertDataFailureImplCopyWith<$Res> {
  factory _$$InsertDataFailureImplCopyWith(_$InsertDataFailureImpl value,
          $Res Function(_$InsertDataFailureImpl) then) =
      __$$InsertDataFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$InsertDataFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$InsertDataFailureImpl>
    implements _$$InsertDataFailureImplCopyWith<$Res> {
  __$$InsertDataFailureImplCopyWithImpl(_$InsertDataFailureImpl _value,
      $Res Function(_$InsertDataFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$InsertDataFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InsertDataFailureImpl implements InsertDataFailure {
  const _$InsertDataFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppException.insertDataFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertDataFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertDataFailureImplCopyWith<_$InsertDataFailureImpl> get copyWith =>
      __$$InsertDataFailureImplCopyWithImpl<_$InsertDataFailureImpl>(
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
      _$InsertDataFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$InsertDataFailureImplCopyWith<_$InsertDataFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotConnectionFailureImplCopyWith<$Res> {
  factory _$$NotConnectionFailureImplCopyWith(_$NotConnectionFailureImpl value,
          $Res Function(_$NotConnectionFailureImpl) then) =
      __$$NotConnectionFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectionFailureImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NotConnectionFailureImpl>
    implements _$$NotConnectionFailureImplCopyWith<$Res> {
  __$$NotConnectionFailureImplCopyWithImpl(_$NotConnectionFailureImpl _value,
      $Res Function(_$NotConnectionFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotConnectionFailureImpl implements NotConnectionFailure {
  const _$NotConnectionFailureImpl();

  @override
  String toString() {
    return 'AppException.notConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotConnectionFailureImpl);
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
  const factory NotConnectionFailure() = _$NotConnectionFailureImpl;
}

/// @nodoc
abstract class _$$ArchivoNoEncontradoImplCopyWith<$Res> {
  factory _$$ArchivoNoEncontradoImplCopyWith(_$ArchivoNoEncontradoImpl value,
          $Res Function(_$ArchivoNoEncontradoImpl) then) =
      __$$ArchivoNoEncontradoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArchivoNoEncontradoImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ArchivoNoEncontradoImpl>
    implements _$$ArchivoNoEncontradoImplCopyWith<$Res> {
  __$$ArchivoNoEncontradoImplCopyWithImpl(_$ArchivoNoEncontradoImpl _value,
      $Res Function(_$ArchivoNoEncontradoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArchivoNoEncontradoImpl implements ArchivoNoEncontrado {
  const _$ArchivoNoEncontradoImpl();

  @override
  String toString() {
    return 'AppException.noSuchFileOrDirectory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchivoNoEncontradoImpl);
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
  const factory ArchivoNoEncontrado() = _$ArchivoNoEncontradoImpl;
}
