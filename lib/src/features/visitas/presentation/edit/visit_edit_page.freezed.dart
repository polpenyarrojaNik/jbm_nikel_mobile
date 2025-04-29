// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_edit_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VisitEditScreenData {
  Visita? get visita => throw _privateConstructorUsedError;
  List<Pais> get paises => throw _privateConstructorUsedError;
  List<Provincia> get provincias => throw _privateConstructorUsedError;

  /// Create a copy of VisitEditScreenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitEditScreenDataCopyWith<VisitEditScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitEditScreenDataCopyWith<$Res> {
  factory $VisitEditScreenDataCopyWith(
    VisitEditScreenData value,
    $Res Function(VisitEditScreenData) then,
  ) = _$VisitEditScreenDataCopyWithImpl<$Res, VisitEditScreenData>;
  @useResult
  $Res call({Visita? visita, List<Pais> paises, List<Provincia> provincias});

  $VisitaCopyWith<$Res>? get visita;
}

/// @nodoc
class _$VisitEditScreenDataCopyWithImpl<$Res, $Val extends VisitEditScreenData>
    implements $VisitEditScreenDataCopyWith<$Res> {
  _$VisitEditScreenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitEditScreenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visita = freezed,
    Object? paises = null,
    Object? provincias = null,
  }) {
    return _then(
      _value.copyWith(
            visita:
                freezed == visita
                    ? _value.visita
                    : visita // ignore: cast_nullable_to_non_nullable
                        as Visita?,
            paises:
                null == paises
                    ? _value.paises
                    : paises // ignore: cast_nullable_to_non_nullable
                        as List<Pais>,
            provincias:
                null == provincias
                    ? _value.provincias
                    : provincias // ignore: cast_nullable_to_non_nullable
                        as List<Provincia>,
          )
          as $Val,
    );
  }

  /// Create a copy of VisitEditScreenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitaCopyWith<$Res>? get visita {
    if (_value.visita == null) {
      return null;
    }

    return $VisitaCopyWith<$Res>(_value.visita!, (value) {
      return _then(_value.copyWith(visita: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisitEditScreenDataImplCopyWith<$Res>
    implements $VisitEditScreenDataCopyWith<$Res> {
  factory _$$VisitEditScreenDataImplCopyWith(
    _$VisitEditScreenDataImpl value,
    $Res Function(_$VisitEditScreenDataImpl) then,
  ) = __$$VisitEditScreenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Visita? visita, List<Pais> paises, List<Provincia> provincias});

  @override
  $VisitaCopyWith<$Res>? get visita;
}

/// @nodoc
class __$$VisitEditScreenDataImplCopyWithImpl<$Res>
    extends _$VisitEditScreenDataCopyWithImpl<$Res, _$VisitEditScreenDataImpl>
    implements _$$VisitEditScreenDataImplCopyWith<$Res> {
  __$$VisitEditScreenDataImplCopyWithImpl(
    _$VisitEditScreenDataImpl _value,
    $Res Function(_$VisitEditScreenDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitEditScreenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visita = freezed,
    Object? paises = null,
    Object? provincias = null,
  }) {
    return _then(
      _$VisitEditScreenDataImpl(
        visita:
            freezed == visita
                ? _value.visita
                : visita // ignore: cast_nullable_to_non_nullable
                    as Visita?,
        paises:
            null == paises
                ? _value._paises
                : paises // ignore: cast_nullable_to_non_nullable
                    as List<Pais>,
        provincias:
            null == provincias
                ? _value._provincias
                : provincias // ignore: cast_nullable_to_non_nullable
                    as List<Provincia>,
      ),
    );
  }
}

/// @nodoc

class _$VisitEditScreenDataImpl extends _VisitEditScreenData {
  const _$VisitEditScreenDataImpl({
    this.visita,
    required final List<Pais> paises,
    required final List<Provincia> provincias,
  }) : _paises = paises,
       _provincias = provincias,
       super._();

  @override
  final Visita? visita;
  final List<Pais> _paises;
  @override
  List<Pais> get paises {
    if (_paises is EqualUnmodifiableListView) return _paises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paises);
  }

  final List<Provincia> _provincias;
  @override
  List<Provincia> get provincias {
    if (_provincias is EqualUnmodifiableListView) return _provincias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provincias);
  }

  @override
  String toString() {
    return 'VisitEditScreenData(visita: $visita, paises: $paises, provincias: $provincias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitEditScreenDataImpl &&
            (identical(other.visita, visita) || other.visita == visita) &&
            const DeepCollectionEquality().equals(other._paises, _paises) &&
            const DeepCollectionEquality().equals(
              other._provincias,
              _provincias,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    visita,
    const DeepCollectionEquality().hash(_paises),
    const DeepCollectionEquality().hash(_provincias),
  );

  /// Create a copy of VisitEditScreenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitEditScreenDataImplCopyWith<_$VisitEditScreenDataImpl> get copyWith =>
      __$$VisitEditScreenDataImplCopyWithImpl<_$VisitEditScreenDataImpl>(
        this,
        _$identity,
      );
}

abstract class _VisitEditScreenData extends VisitEditScreenData {
  const factory _VisitEditScreenData({
    final Visita? visita,
    required final List<Pais> paises,
    required final List<Provincia> provincias,
  }) = _$VisitEditScreenDataImpl;
  const _VisitEditScreenData._() : super._();

  @override
  Visita? get visita;
  @override
  List<Pais> get paises;
  @override
  List<Provincia> get provincias;

  /// Create a copy of VisitEditScreenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitEditScreenDataImplCopyWith<_$VisitEditScreenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
