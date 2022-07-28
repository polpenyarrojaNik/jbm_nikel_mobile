// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_order_list_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesOrderListState {
  List<SalesOrder> get salesOrderList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrder> salesOrderList) initial,
    required TResult Function(List<SalesOrder> salesOrderList) loadInProgress,
    required TResult Function(
            List<SalesOrder> salesOrderList, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            List<SalesOrder> salesOrderList, JbmMobileFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SyncSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesOrderListStateCopyWith<SalesOrderListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderListStateCopyWith<$Res> {
  factory $SalesOrderListStateCopyWith(
          SalesOrderListState value, $Res Function(SalesOrderListState) then) =
      _$SalesOrderListStateCopyWithImpl<$Res>;
  $Res call({List<SalesOrder> salesOrderList});
}

/// @nodoc
class _$SalesOrderListStateCopyWithImpl<$Res>
    implements $SalesOrderListStateCopyWith<$Res> {
  _$SalesOrderListStateCopyWithImpl(this._value, this._then);

  final SalesOrderListState _value;
  // ignore: unused_field
  final $Res Function(SalesOrderListState) _then;

  @override
  $Res call({
    Object? salesOrderList = freezed,
  }) {
    return _then(_value.copyWith(
      salesOrderList: salesOrderList == freezed
          ? _value.salesOrderList
          : salesOrderList // ignore: cast_nullable_to_non_nullable
              as List<SalesOrder>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SalesOrderListStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<SalesOrder> salesOrderList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SalesOrderListStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? salesOrderList = freezed,
  }) {
    return _then(_$_Initial(
      salesOrderList == freezed
          ? _value._salesOrderList
          : salesOrderList // ignore: cast_nullable_to_non_nullable
              as List<SalesOrder>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(final List<SalesOrder> salesOrderList)
      : _salesOrderList = salesOrderList,
        super._();

  final List<SalesOrder> _salesOrderList;
  @override
  List<SalesOrder> get salesOrderList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesOrderList);
  }

  @override
  String toString() {
    return 'SalesOrderListState.initial(salesOrderList: $salesOrderList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._salesOrderList, _salesOrderList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_salesOrderList));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrder> salesOrderList) initial,
    required TResult Function(List<SalesOrder> salesOrderList) loadInProgress,
    required TResult Function(
            List<SalesOrder> salesOrderList, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            List<SalesOrder> salesOrderList, JbmMobileFailure failure)
        loadFailure,
  }) {
    return initial(salesOrderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
  }) {
    return initial?.call(salesOrderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(salesOrderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SyncSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SalesOrderListState {
  const factory _Initial(final List<SalesOrder> salesOrderList) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<SalesOrder> get salesOrderList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $SalesOrderListStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({List<SalesOrder> salesOrderList});
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$SalesOrderListStateCopyWithImpl<$Res>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadInProgress));

  @override
  _$_LoadInProgress get _value => super._value as _$_LoadInProgress;

  @override
  $Res call({
    Object? salesOrderList = freezed,
  }) {
    return _then(_$_LoadInProgress(
      salesOrderList == freezed
          ? _value._salesOrderList
          : salesOrderList // ignore: cast_nullable_to_non_nullable
              as List<SalesOrder>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(final List<SalesOrder> salesOrderList)
      : _salesOrderList = salesOrderList,
        super._();

  final List<SalesOrder> _salesOrderList;
  @override
  List<SalesOrder> get salesOrderList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesOrderList);
  }

  @override
  String toString() {
    return 'SalesOrderListState.loadInProgress(salesOrderList: $salesOrderList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            const DeepCollectionEquality()
                .equals(other._salesOrderList, _salesOrderList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_salesOrderList));

  @JsonKey(ignore: true)
  @override
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrder> salesOrderList) initial,
    required TResult Function(List<SalesOrder> salesOrderList) loadInProgress,
    required TResult Function(
            List<SalesOrder> salesOrderList, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            List<SalesOrder> salesOrderList, JbmMobileFailure failure)
        loadFailure,
  }) {
    return loadInProgress(salesOrderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
  }) {
    return loadInProgress?.call(salesOrderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(salesOrderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SyncSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends SalesOrderListState {
  const factory _LoadInProgress(final List<SalesOrder> salesOrderList) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  List<SalesOrder> get salesOrderList;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SyncSuccessCopyWith<$Res>
    implements $SalesOrderListStateCopyWith<$Res> {
  factory _$$_SyncSuccessCopyWith(
          _$_SyncSuccess value, $Res Function(_$_SyncSuccess) then) =
      __$$_SyncSuccessCopyWithImpl<$Res>;
  @override
  $Res call({List<SalesOrder> salesOrderList, bool isNextPageAvailable});
}

/// @nodoc
class __$$_SyncSuccessCopyWithImpl<$Res>
    extends _$SalesOrderListStateCopyWithImpl<$Res>
    implements _$$_SyncSuccessCopyWith<$Res> {
  __$$_SyncSuccessCopyWithImpl(
      _$_SyncSuccess _value, $Res Function(_$_SyncSuccess) _then)
      : super(_value, (v) => _then(v as _$_SyncSuccess));

  @override
  _$_SyncSuccess get _value => super._value as _$_SyncSuccess;

  @override
  $Res call({
    Object? salesOrderList = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_$_SyncSuccess(
      salesOrderList == freezed
          ? _value._salesOrderList
          : salesOrderList // ignore: cast_nullable_to_non_nullable
              as List<SalesOrder>,
      isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SyncSuccess extends _SyncSuccess {
  const _$_SyncSuccess(
      final List<SalesOrder> salesOrderList, this.isNextPageAvailable)
      : _salesOrderList = salesOrderList,
        super._();

  final List<SalesOrder> _salesOrderList;
  @override
  List<SalesOrder> get salesOrderList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesOrderList);
  }

  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'SalesOrderListState.loadSuccess(salesOrderList: $salesOrderList, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SyncSuccess &&
            const DeepCollectionEquality()
                .equals(other._salesOrderList, _salesOrderList) &&
            const DeepCollectionEquality()
                .equals(other.isNextPageAvailable, isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_salesOrderList),
      const DeepCollectionEquality().hash(isNextPageAvailable));

  @JsonKey(ignore: true)
  @override
  _$$_SyncSuccessCopyWith<_$_SyncSuccess> get copyWith =>
      __$$_SyncSuccessCopyWithImpl<_$_SyncSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrder> salesOrderList) initial,
    required TResult Function(List<SalesOrder> salesOrderList) loadInProgress,
    required TResult Function(
            List<SalesOrder> salesOrderList, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            List<SalesOrder> salesOrderList, JbmMobileFailure failure)
        loadFailure,
  }) {
    return loadSuccess(salesOrderList, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(salesOrderList, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(salesOrderList, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SyncSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SyncSuccess extends SalesOrderListState {
  const factory _SyncSuccess(final List<SalesOrder> salesOrderList,
      final bool isNextPageAvailable) = _$_SyncSuccess;
  const _SyncSuccess._() : super._();

  @override
  List<SalesOrder> get salesOrderList;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_SyncSuccessCopyWith<_$_SyncSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $SalesOrderListStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({List<SalesOrder> salesOrderList, JbmMobileFailure failure});

  $JbmMobileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$SalesOrderListStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? salesOrderList = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_LoadFailure(
      salesOrderList == freezed
          ? _value._salesOrderList
          : salesOrderList // ignore: cast_nullable_to_non_nullable
              as List<SalesOrder>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as JbmMobileFailure,
    ));
  }

  @override
  $JbmMobileFailureCopyWith<$Res> get failure {
    return $JbmMobileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(final List<SalesOrder> salesOrderList, this.failure)
      : _salesOrderList = salesOrderList,
        super._();

  final List<SalesOrder> _salesOrderList;
  @override
  List<SalesOrder> get salesOrderList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesOrderList);
  }

  @override
  final JbmMobileFailure failure;

  @override
  String toString() {
    return 'SalesOrderListState.loadFailure(salesOrderList: $salesOrderList, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other._salesOrderList, _salesOrderList) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_salesOrderList),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SalesOrder> salesOrderList) initial,
    required TResult Function(List<SalesOrder> salesOrderList) loadInProgress,
    required TResult Function(
            List<SalesOrder> salesOrderList, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            List<SalesOrder> salesOrderList, JbmMobileFailure failure)
        loadFailure,
  }) {
    return loadFailure(salesOrderList, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(salesOrderList, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SalesOrder> salesOrderList)? initial,
    TResult Function(List<SalesOrder> salesOrderList)? loadInProgress,
    TResult Function(List<SalesOrder> salesOrderList, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(List<SalesOrder> salesOrderList, JbmMobileFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(salesOrderList, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SyncSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SyncSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends SalesOrderListState {
  const factory _LoadFailure(final List<SalesOrder> salesOrderList,
      final JbmMobileFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  List<SalesOrder> get salesOrderList;
  JbmMobileFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
