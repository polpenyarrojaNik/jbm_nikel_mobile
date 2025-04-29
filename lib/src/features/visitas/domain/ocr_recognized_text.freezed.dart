// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_recognized_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OcrRecognizedText _$OcrRecognizedTextFromJson(Map<String, dynamic> json) {
  return _OcrRecognizedText.fromJson(json);
}

/// @nodoc
mixin _$OcrRecognizedText {
  @JsonKey(name: 'TEXT')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO')
  RecognizedTextType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'ORDEN_TIPO')
  DateTime? get dischargeDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'TELF_TEXT')
  String? get telfText => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMAIL_TEXT')
  String? get emailText => throw _privateConstructorUsedError;
  @JsonKey(name: 'WEBSITE_TEXT')
  String? get websiteText => throw _privateConstructorUsedError;

  /// Serializes this OcrRecognizedText to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OcrRecognizedText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OcrRecognizedTextCopyWith<OcrRecognizedText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrRecognizedTextCopyWith<$Res> {
  factory $OcrRecognizedTextCopyWith(
          OcrRecognizedText value, $Res Function(OcrRecognizedText) then) =
      _$OcrRecognizedTextCopyWithImpl<$Res, OcrRecognizedText>;
  @useResult
  $Res call(
      {@JsonKey(name: 'TEXT') String text,
      @JsonKey(name: 'TIPO') RecognizedTextType type,
      @JsonKey(name: 'ORDEN_TIPO') DateTime? dischargeDate,
      @JsonKey(name: 'TELF_TEXT') String? telfText,
      @JsonKey(name: 'EMAIL_TEXT') String? emailText,
      @JsonKey(name: 'WEBSITE_TEXT') String? websiteText});
}

/// @nodoc
class _$OcrRecognizedTextCopyWithImpl<$Res, $Val extends OcrRecognizedText>
    implements $OcrRecognizedTextCopyWith<$Res> {
  _$OcrRecognizedTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OcrRecognizedText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? dischargeDate = freezed,
    Object? telfText = freezed,
    Object? emailText = freezed,
    Object? websiteText = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecognizedTextType,
      dischargeDate: freezed == dischargeDate
          ? _value.dischargeDate
          : dischargeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      telfText: freezed == telfText
          ? _value.telfText
          : telfText // ignore: cast_nullable_to_non_nullable
              as String?,
      emailText: freezed == emailText
          ? _value.emailText
          : emailText // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteText: freezed == websiteText
          ? _value.websiteText
          : websiteText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OcrRecognizedTextImplCopyWith<$Res>
    implements $OcrRecognizedTextCopyWith<$Res> {
  factory _$$OcrRecognizedTextImplCopyWith(_$OcrRecognizedTextImpl value,
          $Res Function(_$OcrRecognizedTextImpl) then) =
      __$$OcrRecognizedTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'TEXT') String text,
      @JsonKey(name: 'TIPO') RecognizedTextType type,
      @JsonKey(name: 'ORDEN_TIPO') DateTime? dischargeDate,
      @JsonKey(name: 'TELF_TEXT') String? telfText,
      @JsonKey(name: 'EMAIL_TEXT') String? emailText,
      @JsonKey(name: 'WEBSITE_TEXT') String? websiteText});
}

/// @nodoc
class __$$OcrRecognizedTextImplCopyWithImpl<$Res>
    extends _$OcrRecognizedTextCopyWithImpl<$Res, _$OcrRecognizedTextImpl>
    implements _$$OcrRecognizedTextImplCopyWith<$Res> {
  __$$OcrRecognizedTextImplCopyWithImpl(_$OcrRecognizedTextImpl _value,
      $Res Function(_$OcrRecognizedTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of OcrRecognizedText
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? dischargeDate = freezed,
    Object? telfText = freezed,
    Object? emailText = freezed,
    Object? websiteText = freezed,
  }) {
    return _then(_$OcrRecognizedTextImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecognizedTextType,
      dischargeDate: freezed == dischargeDate
          ? _value.dischargeDate
          : dischargeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      telfText: freezed == telfText
          ? _value.telfText
          : telfText // ignore: cast_nullable_to_non_nullable
              as String?,
      emailText: freezed == emailText
          ? _value.emailText
          : emailText // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteText: freezed == websiteText
          ? _value.websiteText
          : websiteText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OcrRecognizedTextImpl extends _OcrRecognizedText {
  _$OcrRecognizedTextImpl(
      @JsonKey(name: 'TEXT') this.text, @JsonKey(name: 'TIPO') this.type,
      {@JsonKey(name: 'ORDEN_TIPO') this.dischargeDate,
      @JsonKey(name: 'TELF_TEXT') this.telfText,
      @JsonKey(name: 'EMAIL_TEXT') this.emailText,
      @JsonKey(name: 'WEBSITE_TEXT') this.websiteText})
      : super._();

  factory _$OcrRecognizedTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcrRecognizedTextImplFromJson(json);

  @override
  @JsonKey(name: 'TEXT')
  final String text;
  @override
  @JsonKey(name: 'TIPO')
  final RecognizedTextType type;
  @override
  @JsonKey(name: 'ORDEN_TIPO')
  final DateTime? dischargeDate;
  @override
  @JsonKey(name: 'TELF_TEXT')
  final String? telfText;
  @override
  @JsonKey(name: 'EMAIL_TEXT')
  final String? emailText;
  @override
  @JsonKey(name: 'WEBSITE_TEXT')
  final String? websiteText;

  @override
  String toString() {
    return 'OcrRecognizedText(text: $text, type: $type, dischargeDate: $dischargeDate, telfText: $telfText, emailText: $emailText, websiteText: $websiteText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcrRecognizedTextImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dischargeDate, dischargeDate) ||
                other.dischargeDate == dischargeDate) &&
            (identical(other.telfText, telfText) ||
                other.telfText == telfText) &&
            (identical(other.emailText, emailText) ||
                other.emailText == emailText) &&
            (identical(other.websiteText, websiteText) ||
                other.websiteText == websiteText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, type, dischargeDate, telfText, emailText, websiteText);

  /// Create a copy of OcrRecognizedText
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OcrRecognizedTextImplCopyWith<_$OcrRecognizedTextImpl> get copyWith =>
      __$$OcrRecognizedTextImplCopyWithImpl<_$OcrRecognizedTextImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcrRecognizedTextImplToJson(
      this,
    );
  }
}

abstract class _OcrRecognizedText extends OcrRecognizedText {
  factory _OcrRecognizedText(@JsonKey(name: 'TEXT') final String text,
          @JsonKey(name: 'TIPO') final RecognizedTextType type,
          {@JsonKey(name: 'ORDEN_TIPO') final DateTime? dischargeDate,
          @JsonKey(name: 'TELF_TEXT') final String? telfText,
          @JsonKey(name: 'EMAIL_TEXT') final String? emailText,
          @JsonKey(name: 'WEBSITE_TEXT') final String? websiteText}) =
      _$OcrRecognizedTextImpl;
  _OcrRecognizedText._() : super._();

  factory _OcrRecognizedText.fromJson(Map<String, dynamic> json) =
      _$OcrRecognizedTextImpl.fromJson;

  @override
  @JsonKey(name: 'TEXT')
  String get text;
  @override
  @JsonKey(name: 'TIPO')
  RecognizedTextType get type;
  @override
  @JsonKey(name: 'ORDEN_TIPO')
  DateTime? get dischargeDate;
  @override
  @JsonKey(name: 'TELF_TEXT')
  String? get telfText;
  @override
  @JsonKey(name: 'EMAIL_TEXT')
  String? get emailText;
  @override
  @JsonKey(name: 'WEBSITE_TEXT')
  String? get websiteText;

  /// Create a copy of OcrRecognizedText
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OcrRecognizedTextImplCopyWith<_$OcrRecognizedTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
