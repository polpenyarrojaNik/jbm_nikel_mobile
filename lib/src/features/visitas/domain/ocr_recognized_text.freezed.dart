// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_recognized_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OcrRecognizedText {

@JsonKey(name: 'TEXT') String get text;@JsonKey(name: 'TIPO') RecognizedTextType get type;@JsonKey(name: 'ORDEN_TIPO') DateTime? get dischargeDate;@JsonKey(name: 'TELF_TEXT') String? get telfText;@JsonKey(name: 'EMAIL_TEXT') String? get emailText;@JsonKey(name: 'WEBSITE_TEXT') String? get websiteText;
/// Create a copy of OcrRecognizedText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OcrRecognizedTextCopyWith<OcrRecognizedText> get copyWith => _$OcrRecognizedTextCopyWithImpl<OcrRecognizedText>(this as OcrRecognizedText, _$identity);

  /// Serializes this OcrRecognizedText to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OcrRecognizedText&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&(identical(other.dischargeDate, dischargeDate) || other.dischargeDate == dischargeDate)&&(identical(other.telfText, telfText) || other.telfText == telfText)&&(identical(other.emailText, emailText) || other.emailText == emailText)&&(identical(other.websiteText, websiteText) || other.websiteText == websiteText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,type,dischargeDate,telfText,emailText,websiteText);

@override
String toString() {
  return 'OcrRecognizedText(text: $text, type: $type, dischargeDate: $dischargeDate, telfText: $telfText, emailText: $emailText, websiteText: $websiteText)';
}


}

/// @nodoc
abstract mixin class $OcrRecognizedTextCopyWith<$Res>  {
  factory $OcrRecognizedTextCopyWith(OcrRecognizedText value, $Res Function(OcrRecognizedText) _then) = _$OcrRecognizedTextCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'TEXT') String text,@JsonKey(name: 'TIPO') RecognizedTextType type,@JsonKey(name: 'ORDEN_TIPO') DateTime? dischargeDate,@JsonKey(name: 'TELF_TEXT') String? telfText,@JsonKey(name: 'EMAIL_TEXT') String? emailText,@JsonKey(name: 'WEBSITE_TEXT') String? websiteText
});




}
/// @nodoc
class _$OcrRecognizedTextCopyWithImpl<$Res>
    implements $OcrRecognizedTextCopyWith<$Res> {
  _$OcrRecognizedTextCopyWithImpl(this._self, this._then);

  final OcrRecognizedText _self;
  final $Res Function(OcrRecognizedText) _then;

/// Create a copy of OcrRecognizedText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? type = null,Object? dischargeDate = freezed,Object? telfText = freezed,Object? emailText = freezed,Object? websiteText = freezed,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RecognizedTextType,dischargeDate: freezed == dischargeDate ? _self.dischargeDate : dischargeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,telfText: freezed == telfText ? _self.telfText : telfText // ignore: cast_nullable_to_non_nullable
as String?,emailText: freezed == emailText ? _self.emailText : emailText // ignore: cast_nullable_to_non_nullable
as String?,websiteText: freezed == websiteText ? _self.websiteText : websiteText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OcrRecognizedText].
extension OcrRecognizedTextPatterns on OcrRecognizedText {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OcrRecognizedText value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OcrRecognizedText() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OcrRecognizedText value)  $default,){
final _that = this;
switch (_that) {
case _OcrRecognizedText():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OcrRecognizedText value)?  $default,){
final _that = this;
switch (_that) {
case _OcrRecognizedText() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'TEXT')  String text, @JsonKey(name: 'TIPO')  RecognizedTextType type, @JsonKey(name: 'ORDEN_TIPO')  DateTime? dischargeDate, @JsonKey(name: 'TELF_TEXT')  String? telfText, @JsonKey(name: 'EMAIL_TEXT')  String? emailText, @JsonKey(name: 'WEBSITE_TEXT')  String? websiteText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OcrRecognizedText() when $default != null:
return $default(_that.text,_that.type,_that.dischargeDate,_that.telfText,_that.emailText,_that.websiteText);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'TEXT')  String text, @JsonKey(name: 'TIPO')  RecognizedTextType type, @JsonKey(name: 'ORDEN_TIPO')  DateTime? dischargeDate, @JsonKey(name: 'TELF_TEXT')  String? telfText, @JsonKey(name: 'EMAIL_TEXT')  String? emailText, @JsonKey(name: 'WEBSITE_TEXT')  String? websiteText)  $default,) {final _that = this;
switch (_that) {
case _OcrRecognizedText():
return $default(_that.text,_that.type,_that.dischargeDate,_that.telfText,_that.emailText,_that.websiteText);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'TEXT')  String text, @JsonKey(name: 'TIPO')  RecognizedTextType type, @JsonKey(name: 'ORDEN_TIPO')  DateTime? dischargeDate, @JsonKey(name: 'TELF_TEXT')  String? telfText, @JsonKey(name: 'EMAIL_TEXT')  String? emailText, @JsonKey(name: 'WEBSITE_TEXT')  String? websiteText)?  $default,) {final _that = this;
switch (_that) {
case _OcrRecognizedText() when $default != null:
return $default(_that.text,_that.type,_that.dischargeDate,_that.telfText,_that.emailText,_that.websiteText);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _OcrRecognizedText extends OcrRecognizedText {
   _OcrRecognizedText(@JsonKey(name: 'TEXT') this.text, @JsonKey(name: 'TIPO') this.type, {@JsonKey(name: 'ORDEN_TIPO') this.dischargeDate, @JsonKey(name: 'TELF_TEXT') this.telfText, @JsonKey(name: 'EMAIL_TEXT') this.emailText, @JsonKey(name: 'WEBSITE_TEXT') this.websiteText}): super._();
  factory _OcrRecognizedText.fromJson(Map<String, dynamic> json) => _$OcrRecognizedTextFromJson(json);

@override@JsonKey(name: 'TEXT') final  String text;
@override@JsonKey(name: 'TIPO') final  RecognizedTextType type;
@override@JsonKey(name: 'ORDEN_TIPO') final  DateTime? dischargeDate;
@override@JsonKey(name: 'TELF_TEXT') final  String? telfText;
@override@JsonKey(name: 'EMAIL_TEXT') final  String? emailText;
@override@JsonKey(name: 'WEBSITE_TEXT') final  String? websiteText;

/// Create a copy of OcrRecognizedText
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OcrRecognizedTextCopyWith<_OcrRecognizedText> get copyWith => __$OcrRecognizedTextCopyWithImpl<_OcrRecognizedText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OcrRecognizedTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OcrRecognizedText&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&(identical(other.dischargeDate, dischargeDate) || other.dischargeDate == dischargeDate)&&(identical(other.telfText, telfText) || other.telfText == telfText)&&(identical(other.emailText, emailText) || other.emailText == emailText)&&(identical(other.websiteText, websiteText) || other.websiteText == websiteText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,type,dischargeDate,telfText,emailText,websiteText);

@override
String toString() {
  return 'OcrRecognizedText(text: $text, type: $type, dischargeDate: $dischargeDate, telfText: $telfText, emailText: $emailText, websiteText: $websiteText)';
}


}

/// @nodoc
abstract mixin class _$OcrRecognizedTextCopyWith<$Res> implements $OcrRecognizedTextCopyWith<$Res> {
  factory _$OcrRecognizedTextCopyWith(_OcrRecognizedText value, $Res Function(_OcrRecognizedText) _then) = __$OcrRecognizedTextCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'TEXT') String text,@JsonKey(name: 'TIPO') RecognizedTextType type,@JsonKey(name: 'ORDEN_TIPO') DateTime? dischargeDate,@JsonKey(name: 'TELF_TEXT') String? telfText,@JsonKey(name: 'EMAIL_TEXT') String? emailText,@JsonKey(name: 'WEBSITE_TEXT') String? websiteText
});




}
/// @nodoc
class __$OcrRecognizedTextCopyWithImpl<$Res>
    implements _$OcrRecognizedTextCopyWith<$Res> {
  __$OcrRecognizedTextCopyWithImpl(this._self, this._then);

  final _OcrRecognizedText _self;
  final $Res Function(_OcrRecognizedText) _then;

/// Create a copy of OcrRecognizedText
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? type = null,Object? dischargeDate = freezed,Object? telfText = freezed,Object? emailText = freezed,Object? websiteText = freezed,}) {
  return _then(_OcrRecognizedText(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RecognizedTextType,dischargeDate: freezed == dischargeDate ? _self.dischargeDate : dischargeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,telfText: freezed == telfText ? _self.telfText : telfText // ignore: cast_nullable_to_non_nullable
as String?,emailText: freezed == emailText ? _self.emailText : emailText // ignore: cast_nullable_to_non_nullable
as String?,websiteText: freezed == websiteText ? _self.websiteText : websiteText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
