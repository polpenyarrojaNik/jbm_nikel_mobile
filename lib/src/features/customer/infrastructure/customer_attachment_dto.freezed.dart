// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_attachment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerAttachmentDTO _$CustomerAttachmentDTOFromJson(
    Map<String, dynamic> json) {
  return _CustomerAttachmentDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerAttachmentDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get attachmentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAttachmentDTOCopyWith<CustomerAttachmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAttachmentDTOCopyWith<$Res> {
  factory $CustomerAttachmentDTOCopyWith(CustomerAttachmentDTO value,
          $Res Function(CustomerAttachmentDTO) then) =
      _$CustomerAttachmentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String attachmentName});
}

/// @nodoc
class _$CustomerAttachmentDTOCopyWithImpl<$Res>
    implements $CustomerAttachmentDTOCopyWith<$Res> {
  _$CustomerAttachmentDTOCopyWithImpl(this._value, this._then);

  final CustomerAttachmentDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerAttachmentDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? attachmentName = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      attachmentName: attachmentName == freezed
          ? _value.attachmentName
          : attachmentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerAttachmentDTOCopyWith<$Res>
    implements $CustomerAttachmentDTOCopyWith<$Res> {
  factory _$$_CustomerAttachmentDTOCopyWith(_$_CustomerAttachmentDTO value,
          $Res Function(_$_CustomerAttachmentDTO) then) =
      __$$_CustomerAttachmentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String attachmentName});
}

/// @nodoc
class __$$_CustomerAttachmentDTOCopyWithImpl<$Res>
    extends _$CustomerAttachmentDTOCopyWithImpl<$Res>
    implements _$$_CustomerAttachmentDTOCopyWith<$Res> {
  __$$_CustomerAttachmentDTOCopyWithImpl(_$_CustomerAttachmentDTO _value,
      $Res Function(_$_CustomerAttachmentDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerAttachmentDTO));

  @override
  _$_CustomerAttachmentDTO get _value =>
      super._value as _$_CustomerAttachmentDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? attachmentName = freezed,
  }) {
    return _then(_$_CustomerAttachmentDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      attachmentName: attachmentName == freezed
          ? _value.attachmentName
          : attachmentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerAttachmentDTO extends _CustomerAttachmentDTO {
  const _$_CustomerAttachmentDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') required this.attachmentName})
      : super._();

  factory _$_CustomerAttachmentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerAttachmentDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String attachmentName;

  @override
  String toString() {
    return 'CustomerAttachmentDTO(customerId: $customerId, attachmentName: $attachmentName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerAttachmentDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.attachmentName, attachmentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(attachmentName));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerAttachmentDTOCopyWith<_$_CustomerAttachmentDTO> get copyWith =>
      __$$_CustomerAttachmentDTOCopyWithImpl<_$_CustomerAttachmentDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerAttachmentDTOToJson(
      this,
    );
  }
}

abstract class _CustomerAttachmentDTO extends CustomerAttachmentDTO {
  const factory _CustomerAttachmentDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required final String customerId,
      @JsonKey(name: 'NOMBRE_ARCHIVO')
          required final String attachmentName}) = _$_CustomerAttachmentDTO;
  const _CustomerAttachmentDTO._() : super._();

  factory _CustomerAttachmentDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerAttachmentDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get attachmentName;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerAttachmentDTOCopyWith<_$_CustomerAttachmentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
