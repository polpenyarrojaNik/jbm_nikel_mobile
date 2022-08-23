import 'package:freezed_annotation/freezed_annotation.dart';

part 'subfamily.freezed.dart';

@freezed
class Subfamily with _$Subfamily {
  const Subfamily._();
  const factory Subfamily(
      {required String id,
      required String familyId,
      required String description,
      required DateTime lastUpdate,
      required bool deleted}) = _Subfamily;
}
