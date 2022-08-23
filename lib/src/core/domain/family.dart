import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';

@freezed
class Family with _$Family {
  const Family._();
  const factory Family(
      {required String id,
      required String description,
      required DateTime lastUpdate,
      required bool deleted}) = _Family;
}
