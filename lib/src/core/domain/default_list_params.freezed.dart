// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  @JsonKey(ignore: true)
  $DefaultListParamsCopyWith<DefaultListParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultListParamsCopyWith<$Res> {
  factory $DefaultListParamsCopyWith(
          DefaultListParams value, $Res Function(DefaultListParams) then) =
      _$DefaultListParamsCopyWithImpl<$Res>;
  $Res call({int page, String searchText});
}

/// @nodoc
class _$DefaultListParamsCopyWithImpl<$Res>
    implements $DefaultListParamsCopyWith<$Res> {
  _$DefaultListParamsCopyWithImpl(this._value, this._then);

  final DefaultListParams _value;
  // ignore: unused_field
  final $Res Function(DefaultListParams) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DefaultListParamsCopyWith<$Res>
    implements $DefaultListParamsCopyWith<$Res> {
  factory _$$_DefaultListParamsCopyWith(_$_DefaultListParams value,
          $Res Function(_$_DefaultListParams) then) =
      __$$_DefaultListParamsCopyWithImpl<$Res>;
  @override
  $Res call({int page, String searchText});
}

/// @nodoc
class __$$_DefaultListParamsCopyWithImpl<$Res>
    extends _$DefaultListParamsCopyWithImpl<$Res>
    implements _$$_DefaultListParamsCopyWith<$Res> {
  __$$_DefaultListParamsCopyWithImpl(
      _$_DefaultListParams _value, $Res Function(_$_DefaultListParams) _then)
      : super(_value, (v) => _then(v as _$_DefaultListParams));

  @override
  _$_DefaultListParams get _value => super._value as _$_DefaultListParams;

  @override
  $Res call({
    Object? page = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_$_DefaultListParams(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DefaultListParams extends _DefaultListParams {
  const _$_DefaultListParams({required this.page, required this.searchText})
      : super._();

  @override
  final int page;
  @override
  final String searchText;

  @override
  String toString() {
    return 'DefaultListParams(page: $page, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultListParams &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(searchText));

  @JsonKey(ignore: true)
  @override
  _$$_DefaultListParamsCopyWith<_$_DefaultListParams> get copyWith =>
      __$$_DefaultListParamsCopyWithImpl<_$_DefaultListParams>(
          this, _$identity);
}

abstract class _DefaultListParams extends DefaultListParams {
  const factory _DefaultListParams(
      {required final int page,
      required final String searchText}) = _$_DefaultListParams;
  const _DefaultListParams._() : super._();

  @override
  int get page;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultListParamsCopyWith<_$_DefaultListParams> get copyWith =>
      throw _privateConstructorUsedError;
}
