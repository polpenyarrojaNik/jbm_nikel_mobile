// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$DivisaCopyWithImpl<$Res>;
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
class _$DivisaCopyWithImpl<$Res> implements $DivisaCopyWith<$Res> {
  _$DivisaCopyWithImpl(this._value, this._then);

  final Divisa _value;
  // ignore: unused_field
  final $Res Function(Divisa) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? abv = freezed,
    Object? simbolo = freezed,
    Object? redondeo = freezed,
    Object? descripcion = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      abv: abv == freezed
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as String,
      simbolo: simbolo == freezed
          ? _value.simbolo
          : simbolo // ignore: cast_nullable_to_non_nullable
              as String?,
      redondeo: redondeo == freezed
          ? _value.redondeo
          : redondeo // ignore: cast_nullable_to_non_nullable
              as double?,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_DivisaCopyWith<$Res> implements $DivisaCopyWith<$Res> {
  factory _$$_DivisaCopyWith(_$_Divisa value, $Res Function(_$_Divisa) then) =
      __$$_DivisaCopyWithImpl<$Res>;
  @override
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
class __$$_DivisaCopyWithImpl<$Res> extends _$DivisaCopyWithImpl<$Res>
    implements _$$_DivisaCopyWith<$Res> {
  __$$_DivisaCopyWithImpl(_$_Divisa _value, $Res Function(_$_Divisa) _then)
      : super(_value, (v) => _then(v as _$_Divisa));

  @override
  _$_Divisa get _value => super._value as _$_Divisa;

  @override
  $Res call({
    Object? id = freezed,
    Object? abv = freezed,
    Object? simbolo = freezed,
    Object? redondeo = freezed,
    Object? descripcion = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_Divisa(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      abv: abv == freezed
          ? _value.abv
          : abv // ignore: cast_nullable_to_non_nullable
              as String,
      simbolo: simbolo == freezed
          ? _value.simbolo
          : simbolo // ignore: cast_nullable_to_non_nullable
              as String?,
      redondeo: redondeo == freezed
          ? _value.redondeo
          : redondeo // ignore: cast_nullable_to_non_nullable
              as double?,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Divisa extends _Divisa {
  const _$_Divisa(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Divisa &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.abv, abv) &&
            const DeepCollectionEquality().equals(other.simbolo, simbolo) &&
            const DeepCollectionEquality().equals(other.redondeo, redondeo) &&
            const DeepCollectionEquality()
                .equals(other.descripcion, descripcion) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdate, lastUpdate) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(abv),
      const DeepCollectionEquality().hash(simbolo),
      const DeepCollectionEquality().hash(redondeo),
      const DeepCollectionEquality().hash(descripcion),
      const DeepCollectionEquality().hash(lastUpdate),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_DivisaCopyWith<_$_Divisa> get copyWith =>
      __$$_DivisaCopyWithImpl<_$_Divisa>(this, _$identity);
}

abstract class _Divisa extends Divisa {
  const factory _Divisa(
      {required final String id,
      required final String abv,
      required final String? simbolo,
      required final double? redondeo,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$_Divisa;
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
  _$$_DivisaCopyWith<_$_Divisa> get copyWith =>
      throw _privateConstructorUsedError;
}
