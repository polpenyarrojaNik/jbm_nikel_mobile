// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_list_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DefaultListParams {
  int get page => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  bool? get searchPotenciales => throw _privateConstructorUsedError;
  String? get entityId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefaultListParamsCopyWith<DefaultListParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultListParamsCopyWith<$Res> {
  factory $DefaultListParamsCopyWith(
          DefaultListParams value, $Res Function(DefaultListParams) then) =
      _$DefaultListParamsCopyWithImpl<$Res, DefaultListParams>;
  @useResult
  $Res call(
      {int page, String searchText, bool? searchPotenciales, String? entityId});
}

/// @nodoc
class _$DefaultListParamsCopyWithImpl<$Res, $Val extends DefaultListParams>
    implements $DefaultListParamsCopyWith<$Res> {
  _$DefaultListParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchText = null,
    Object? searchPotenciales = freezed,
    Object? entityId = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      searchPotenciales: freezed == searchPotenciales
          ? _value.searchPotenciales
          : searchPotenciales // ignore: cast_nullable_to_non_nullable
              as bool?,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultListParamsImplCopyWith<$Res>
    implements $DefaultListParamsCopyWith<$Res> {
  factory _$$DefaultListParamsImplCopyWith(_$DefaultListParamsImpl value,
          $Res Function(_$DefaultListParamsImpl) then) =
      __$$DefaultListParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page, String searchText, bool? searchPotenciales, String? entityId});
}

/// @nodoc
class __$$DefaultListParamsImplCopyWithImpl<$Res>
    extends _$DefaultListParamsCopyWithImpl<$Res, _$DefaultListParamsImpl>
    implements _$$DefaultListParamsImplCopyWith<$Res> {
  __$$DefaultListParamsImplCopyWithImpl(_$DefaultListParamsImpl _value,
      $Res Function(_$DefaultListParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchText = null,
    Object? searchPotenciales = freezed,
    Object? entityId = freezed,
  }) {
    return _then(_$DefaultListParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      searchPotenciales: freezed == searchPotenciales
          ? _value.searchPotenciales
          : searchPotenciales // ignore: cast_nullable_to_non_nullable
              as bool?,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DefaultListParamsImpl extends _DefaultListParams {
  const _$DefaultListParamsImpl(
      {required this.page,
      required this.searchText,
      this.searchPotenciales,
      this.entityId})
      : super._();

  @override
  final int page;
  @override
  final String searchText;
  @override
  final bool? searchPotenciales;
  @override
  final String? entityId;

  @override
  String toString() {
    return 'DefaultListParams(page: $page, searchText: $searchText, searchPotenciales: $searchPotenciales, entityId: $entityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultListParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.searchPotenciales, searchPotenciales) ||
                other.searchPotenciales == searchPotenciales) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, searchText, searchPotenciales, entityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultListParamsImplCopyWith<_$DefaultListParamsImpl> get copyWith =>
      __$$DefaultListParamsImplCopyWithImpl<_$DefaultListParamsImpl>(
          this, _$identity);
}

abstract class _DefaultListParams extends DefaultListParams {
  const factory _DefaultListParams(
      {required final int page,
      required final String searchText,
      final bool? searchPotenciales,
      final String? entityId}) = _$DefaultListParamsImpl;
  const _DefaultListParams._() : super._();

  @override
  int get page;
  @override
  String get searchText;
  @override
  bool? get searchPotenciales;
  @override
  String? get entityId;
  @override
  @JsonKey(ignore: true)
  _$$DefaultListParamsImplCopyWith<_$DefaultListParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
