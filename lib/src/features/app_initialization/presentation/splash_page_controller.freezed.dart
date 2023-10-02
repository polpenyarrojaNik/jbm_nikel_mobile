// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashControllerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lastScehmaVersion, int newScehmaVersion)
        downloadDatabase,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function() notDownloaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function()? notDownloaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function()? notDownloaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_downloadDatabase value) downloadDatabase,
    required TResult Function(_loading value) loading,
    required TResult Function(_initial value) initial,
    required TResult Function(_notDownloaded value) notDownloaded,
    required TResult Function(_error value) error,
    required TResult Function(_data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_downloadDatabase value)? downloadDatabase,
    TResult? Function(_loading value)? loading,
    TResult? Function(_initial value)? initial,
    TResult? Function(_notDownloaded value)? notDownloaded,
    TResult? Function(_error value)? error,
    TResult? Function(_data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_downloadDatabase value)? downloadDatabase,
    TResult Function(_loading value)? loading,
    TResult Function(_initial value)? initial,
    TResult Function(_notDownloaded value)? notDownloaded,
    TResult Function(_error value)? error,
    TResult Function(_data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashControllerStateCopyWith<$Res> {
  factory $SplashControllerStateCopyWith(SplashControllerState value,
          $Res Function(SplashControllerState) then) =
      _$SplashControllerStateCopyWithImpl<$Res, SplashControllerState>;
}

/// @nodoc
class _$SplashControllerStateCopyWithImpl<$Res,
        $Val extends SplashControllerState>
    implements $SplashControllerStateCopyWith<$Res> {
  _$SplashControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$downloadDatabaseImplCopyWith<$Res> {
  factory _$$downloadDatabaseImplCopyWith(_$downloadDatabaseImpl value,
          $Res Function(_$downloadDatabaseImpl) then) =
      __$$downloadDatabaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int lastScehmaVersion, int newScehmaVersion});
}

/// @nodoc
class __$$downloadDatabaseImplCopyWithImpl<$Res>
    extends _$SplashControllerStateCopyWithImpl<$Res, _$downloadDatabaseImpl>
    implements _$$downloadDatabaseImplCopyWith<$Res> {
  __$$downloadDatabaseImplCopyWithImpl(_$downloadDatabaseImpl _value,
      $Res Function(_$downloadDatabaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastScehmaVersion = null,
    Object? newScehmaVersion = null,
  }) {
    return _then(_$downloadDatabaseImpl(
      null == lastScehmaVersion
          ? _value.lastScehmaVersion
          : lastScehmaVersion // ignore: cast_nullable_to_non_nullable
              as int,
      null == newScehmaVersion
          ? _value.newScehmaVersion
          : newScehmaVersion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$downloadDatabaseImpl extends _downloadDatabase
    with DiagnosticableTreeMixin {
  const _$downloadDatabaseImpl(this.lastScehmaVersion, this.newScehmaVersion)
      : super._();

  @override
  final int lastScehmaVersion;
  @override
  final int newScehmaVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashControllerState.downloadDatabase(lastScehmaVersion: $lastScehmaVersion, newScehmaVersion: $newScehmaVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SplashControllerState.downloadDatabase'))
      ..add(DiagnosticsProperty('lastScehmaVersion', lastScehmaVersion))
      ..add(DiagnosticsProperty('newScehmaVersion', newScehmaVersion));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$downloadDatabaseImpl &&
            (identical(other.lastScehmaVersion, lastScehmaVersion) ||
                other.lastScehmaVersion == lastScehmaVersion) &&
            (identical(other.newScehmaVersion, newScehmaVersion) ||
                other.newScehmaVersion == newScehmaVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, lastScehmaVersion, newScehmaVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$downloadDatabaseImplCopyWith<_$downloadDatabaseImpl> get copyWith =>
      __$$downloadDatabaseImplCopyWithImpl<_$downloadDatabaseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lastScehmaVersion, int newScehmaVersion)
        downloadDatabase,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function() notDownloaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() data,
  }) {
    return downloadDatabase(lastScehmaVersion, newScehmaVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function()? notDownloaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? data,
  }) {
    return downloadDatabase?.call(lastScehmaVersion, newScehmaVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function()? notDownloaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (downloadDatabase != null) {
      return downloadDatabase(lastScehmaVersion, newScehmaVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_downloadDatabase value) downloadDatabase,
    required TResult Function(_loading value) loading,
    required TResult Function(_initial value) initial,
    required TResult Function(_notDownloaded value) notDownloaded,
    required TResult Function(_error value) error,
    required TResult Function(_data value) data,
  }) {
    return downloadDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_downloadDatabase value)? downloadDatabase,
    TResult? Function(_loading value)? loading,
    TResult? Function(_initial value)? initial,
    TResult? Function(_notDownloaded value)? notDownloaded,
    TResult? Function(_error value)? error,
    TResult? Function(_data value)? data,
  }) {
    return downloadDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_downloadDatabase value)? downloadDatabase,
    TResult Function(_loading value)? loading,
    TResult Function(_initial value)? initial,
    TResult Function(_notDownloaded value)? notDownloaded,
    TResult Function(_error value)? error,
    TResult Function(_data value)? data,
    required TResult orElse(),
  }) {
    if (downloadDatabase != null) {
      return downloadDatabase(this);
    }
    return orElse();
  }
}

abstract class _downloadDatabase extends SplashControllerState {
  const factory _downloadDatabase(
          final int lastScehmaVersion, final int newScehmaVersion) =
      _$downloadDatabaseImpl;
  const _downloadDatabase._() : super._();

  int get lastScehmaVersion;
  int get newScehmaVersion;
  @JsonKey(ignore: true)
  _$$downloadDatabaseImplCopyWith<_$downloadDatabaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$SplashControllerStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl extends _loading with DiagnosticableTreeMixin {
  const _$loadingImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashControllerState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SplashControllerState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lastScehmaVersion, int newScehmaVersion)
        downloadDatabase,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function() notDownloaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function()? notDownloaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function()? notDownloaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_downloadDatabase value) downloadDatabase,
    required TResult Function(_loading value) loading,
    required TResult Function(_initial value) initial,
    required TResult Function(_notDownloaded value) notDownloaded,
    required TResult Function(_error value) error,
    required TResult Function(_data value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_downloadDatabase value)? downloadDatabase,
    TResult? Function(_loading value)? loading,
    TResult? Function(_initial value)? initial,
    TResult? Function(_notDownloaded value)? notDownloaded,
    TResult? Function(_error value)? error,
    TResult? Function(_data value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_downloadDatabase value)? downloadDatabase,
    TResult Function(_loading value)? loading,
    TResult Function(_initial value)? initial,
    TResult Function(_notDownloaded value)? notDownloaded,
    TResult Function(_error value)? error,
    TResult Function(_data value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading extends SplashControllerState {
  const factory _loading() = _$loadingImpl;
  const _loading._() : super._();
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$SplashControllerStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialImpl extends _initial with DiagnosticableTreeMixin {
  const _$initialImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashControllerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SplashControllerState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lastScehmaVersion, int newScehmaVersion)
        downloadDatabase,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function() notDownloaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function()? notDownloaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function()? notDownloaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_downloadDatabase value) downloadDatabase,
    required TResult Function(_loading value) loading,
    required TResult Function(_initial value) initial,
    required TResult Function(_notDownloaded value) notDownloaded,
    required TResult Function(_error value) error,
    required TResult Function(_data value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_downloadDatabase value)? downloadDatabase,
    TResult? Function(_loading value)? loading,
    TResult? Function(_initial value)? initial,
    TResult? Function(_notDownloaded value)? notDownloaded,
    TResult? Function(_error value)? error,
    TResult? Function(_data value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_downloadDatabase value)? downloadDatabase,
    TResult Function(_loading value)? loading,
    TResult Function(_initial value)? initial,
    TResult Function(_notDownloaded value)? notDownloaded,
    TResult Function(_error value)? error,
    TResult Function(_data value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial extends SplashControllerState {
  const factory _initial() = _$initialImpl;
  const _initial._() : super._();
}

/// @nodoc
abstract class _$$notDownloadedImplCopyWith<$Res> {
  factory _$$notDownloadedImplCopyWith(
          _$notDownloadedImpl value, $Res Function(_$notDownloadedImpl) then) =
      __$$notDownloadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$notDownloadedImplCopyWithImpl<$Res>
    extends _$SplashControllerStateCopyWithImpl<$Res, _$notDownloadedImpl>
    implements _$$notDownloadedImplCopyWith<$Res> {
  __$$notDownloadedImplCopyWithImpl(
      _$notDownloadedImpl _value, $Res Function(_$notDownloadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$notDownloadedImpl extends _notDownloaded with DiagnosticableTreeMixin {
  const _$notDownloadedImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashControllerState.notDownloaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'SplashControllerState.notDownloaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$notDownloadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lastScehmaVersion, int newScehmaVersion)
        downloadDatabase,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function() notDownloaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() data,
  }) {
    return notDownloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function()? notDownloaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? data,
  }) {
    return notDownloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function()? notDownloaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (notDownloaded != null) {
      return notDownloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_downloadDatabase value) downloadDatabase,
    required TResult Function(_loading value) loading,
    required TResult Function(_initial value) initial,
    required TResult Function(_notDownloaded value) notDownloaded,
    required TResult Function(_error value) error,
    required TResult Function(_data value) data,
  }) {
    return notDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_downloadDatabase value)? downloadDatabase,
    TResult? Function(_loading value)? loading,
    TResult? Function(_initial value)? initial,
    TResult? Function(_notDownloaded value)? notDownloaded,
    TResult? Function(_error value)? error,
    TResult? Function(_data value)? data,
  }) {
    return notDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_downloadDatabase value)? downloadDatabase,
    TResult Function(_loading value)? loading,
    TResult Function(_initial value)? initial,
    TResult Function(_notDownloaded value)? notDownloaded,
    TResult Function(_error value)? error,
    TResult Function(_data value)? data,
    required TResult orElse(),
  }) {
    if (notDownloaded != null) {
      return notDownloaded(this);
    }
    return orElse();
  }
}

abstract class _notDownloaded extends SplashControllerState {
  const factory _notDownloaded() = _$notDownloadedImpl;
  const _notDownloaded._() : super._();
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$SplashControllerStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$errorImpl(
      null == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$errorImpl extends _error with DiagnosticableTreeMixin {
  const _$errorImpl(this.error, {this.stackTrace}) : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashControllerState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SplashControllerState.error'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      __$$errorImplCopyWithImpl<_$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lastScehmaVersion, int newScehmaVersion)
        downloadDatabase,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function() notDownloaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() data,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function()? notDownloaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? data,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function()? notDownloaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_downloadDatabase value) downloadDatabase,
    required TResult Function(_loading value) loading,
    required TResult Function(_initial value) initial,
    required TResult Function(_notDownloaded value) notDownloaded,
    required TResult Function(_error value) error,
    required TResult Function(_data value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_downloadDatabase value)? downloadDatabase,
    TResult? Function(_loading value)? loading,
    TResult? Function(_initial value)? initial,
    TResult? Function(_notDownloaded value)? notDownloaded,
    TResult? Function(_error value)? error,
    TResult? Function(_data value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_downloadDatabase value)? downloadDatabase,
    TResult Function(_loading value)? loading,
    TResult Function(_initial value)? initial,
    TResult Function(_notDownloaded value)? notDownloaded,
    TResult Function(_error value)? error,
    TResult Function(_data value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error extends SplashControllerState {
  const factory _error(final Object error, {final StackTrace? stackTrace}) =
      _$errorImpl;
  const _error._() : super._();

  Object get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$dataImplCopyWith<$Res> {
  factory _$$dataImplCopyWith(
          _$dataImpl value, $Res Function(_$dataImpl) then) =
      __$$dataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$dataImplCopyWithImpl<$Res>
    extends _$SplashControllerStateCopyWithImpl<$Res, _$dataImpl>
    implements _$$dataImplCopyWith<$Res> {
  __$$dataImplCopyWithImpl(_$dataImpl _value, $Res Function(_$dataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$dataImpl extends _data with DiagnosticableTreeMixin {
  const _$dataImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashControllerState.data()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SplashControllerState.data'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$dataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int lastScehmaVersion, int newScehmaVersion)
        downloadDatabase,
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function() notDownloaded,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function() data,
  }) {
    return data();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function()? notDownloaded,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function()? data,
  }) {
    return data?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int lastScehmaVersion, int newScehmaVersion)?
        downloadDatabase,
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function()? notDownloaded,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_downloadDatabase value) downloadDatabase,
    required TResult Function(_loading value) loading,
    required TResult Function(_initial value) initial,
    required TResult Function(_notDownloaded value) notDownloaded,
    required TResult Function(_error value) error,
    required TResult Function(_data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_downloadDatabase value)? downloadDatabase,
    TResult? Function(_loading value)? loading,
    TResult? Function(_initial value)? initial,
    TResult? Function(_notDownloaded value)? notDownloaded,
    TResult? Function(_error value)? error,
    TResult? Function(_data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_downloadDatabase value)? downloadDatabase,
    TResult Function(_loading value)? loading,
    TResult Function(_initial value)? initial,
    TResult Function(_notDownloaded value)? notDownloaded,
    TResult Function(_error value)? error,
    TResult Function(_data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _data extends SplashControllerState {
  const factory _data() = _$dataImpl;
  const _data._() : super._();
}
