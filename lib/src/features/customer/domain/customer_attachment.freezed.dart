// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerAttachment {
  String get customerId => throw _privateConstructorUsedError;
  String get attachmentName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerAttachmentCopyWith<CustomerAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAttachmentCopyWith<$Res> {
  factory $CustomerAttachmentCopyWith(
          CustomerAttachment value, $Res Function(CustomerAttachment) then) =
      _$CustomerAttachmentCopyWithImpl<$Res>;
  $Res call({String customerId, String attachmentName});
}

/// @nodoc
class _$CustomerAttachmentCopyWithImpl<$Res>
    implements $CustomerAttachmentCopyWith<$Res> {
  _$CustomerAttachmentCopyWithImpl(this._value, this._then);

  final CustomerAttachment _value;
  // ignore: unused_field
  final $Res Function(CustomerAttachment) _then;

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
abstract class _$$_CustomerAttachmentCopyWith<$Res>
    implements $CustomerAttachmentCopyWith<$Res> {
  factory _$$_CustomerAttachmentCopyWith(_$_CustomerAttachment value,
          $Res Function(_$_CustomerAttachment) then) =
      __$$_CustomerAttachmentCopyWithImpl<$Res>;
  @override
  $Res call({String customerId, String attachmentName});
}

/// @nodoc
class __$$_CustomerAttachmentCopyWithImpl<$Res>
    extends _$CustomerAttachmentCopyWithImpl<$Res>
    implements _$$_CustomerAttachmentCopyWith<$Res> {
  __$$_CustomerAttachmentCopyWithImpl(
      _$_CustomerAttachment _value, $Res Function(_$_CustomerAttachment) _then)
      : super(_value, (v) => _then(v as _$_CustomerAttachment));

  @override
  _$_CustomerAttachment get _value => super._value as _$_CustomerAttachment;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? attachmentName = freezed,
  }) {
    return _then(_$_CustomerAttachment(
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

class _$_CustomerAttachment extends _CustomerAttachment {
  const _$_CustomerAttachment(
      {required this.customerId, required this.attachmentName})
      : super._();

  @override
  final String customerId;
  @override
  final String attachmentName;

  @override
  String toString() {
    return 'CustomerAttachment(customerId: $customerId, attachmentName: $attachmentName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerAttachment &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.attachmentName, attachmentName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(attachmentName));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerAttachmentCopyWith<_$_CustomerAttachment> get copyWith =>
      __$$_CustomerAttachmentCopyWithImpl<_$_CustomerAttachment>(
          this, _$identity);
}

abstract class _CustomerAttachment extends CustomerAttachment {
  const factory _CustomerAttachment(
      {required final String customerId,
      required final String attachmentName}) = _$_CustomerAttachment;
  const _CustomerAttachment._() : super._();

  @override
  String get customerId;
  @override
  String get attachmentName;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerAttachmentCopyWith<_$_CustomerAttachment> get copyWith =>
      throw _privateConstructorUsedError;
}
