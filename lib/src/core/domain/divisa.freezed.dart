// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'divisa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Divisa {
  String get id => throw _privateConstructorUsedError;
  String get abv => throw _privateConstructorUsedError;
  String? get simbolo => throw _privateConstructorUsedError;
  double? get redondeo => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DivisaCopyWith<Divisa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisaCopyWith<$Res> {
  factory $DivisaCopyWith(Divisa value, $Res Function(Divisa) then) =
      _$DivisaCopyWithImpl<$Res, Divisa>;
  @useResult
  $Res call(
      {String id,
      String abv,
      String? simbolo,
      double? redondeo,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class _$DivisaCopyWithImpl<$Res, $Val extends Divisa>
    implements $DivisaCopyWith<$Res> {
  _$DivisaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? abv = null,
    Object? simbolo = freezed,
    Object? redondeo = freezed,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      abv: null == abv
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as String,
      simbolo: freezed == simbolo
          ? _value.simbolo
          : simbolo // ignore: cast_nullable_to_non_nullable
              as String?,
      redondeo: freezed == redondeo
          ? _value.redondeo
          : redondeo // ignore: cast_nullable_to_non_nullable
              as double?,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisaImplCopyWith<$Res> implements $DivisaCopyWith<$Res> {
  factory _$$DivisaImplCopyWith(
          _$DivisaImpl value, $Res Function(_$DivisaImpl) then) =
      __$$DivisaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String abv,
      String? simbolo,
      double? redondeo,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class __$$DivisaImplCopyWithImpl<$Res>
    extends _$DivisaCopyWithImpl<$Res, _$DivisaImpl>
    implements _$$DivisaImplCopyWith<$Res> {
  __$$DivisaImplCopyWithImpl(
      _$DivisaImpl _value, $Res Function(_$DivisaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? abv = null,
    Object? simbolo = freezed,
    Object? redondeo = freezed,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_$DivisaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      abv: null == abv
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as String,
      simbolo: freezed == simbolo
          ? _value.simbolo
          : simbolo // ignore: cast_nullable_to_non_nullable
              as String?,
      redondeo: freezed == redondeo
          ? _value.redondeo
          : redondeo // ignore: cast_nullable_to_non_nullable
              as double?,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DivisaImpl extends _Divisa {
  const _$DivisaImpl(
      {required this.id,
      required this.abv,
      required this.simbolo,
      required this.redondeo,
      required this.descripcion,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String id;
  @override
  final String abv;
  @override
  final String? simbolo;
  @override
  final double? redondeo;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Divisa(id: $id, abv: $abv, simbolo: $simbolo, redondeo: $redondeo, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.abv, abv) || other.abv == abv) &&
            (identical(other.simbolo, simbolo) || other.simbolo == simbolo) &&
            (identical(other.redondeo, redondeo) ||
                other.redondeo == redondeo) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, abv, simbolo, redondeo,
      descripcion, lastUpdate, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisaImplCopyWith<_$DivisaImpl> get copyWith =>
      __$$DivisaImplCopyWithImpl<_$DivisaImpl>(this, _$identity);
}

abstract class _Divisa extends Divisa {
  const factory _Divisa(
      {required final String id,
      required final String abv,
      required final String? simbolo,
      required final double? redondeo,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$DivisaImpl;
  const _Divisa._() : super._();

  @override
  String get id;
  @override
  String get abv;
  @override
  String? get simbolo;
  @override
  double? get redondeo;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$DivisaImplCopyWith<_$DivisaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
