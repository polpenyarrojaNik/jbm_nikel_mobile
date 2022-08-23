import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit.freezed.dart';

@freezed
class Visit with _$Visit {
  const Visit._();
  const factory Visit(
      {required String id,
      required String customerId,
      required DateTime date,
      required String numEmpl,
      String? contact,
      String? summary,
      required double latitude,
      required double longitude,
      required DateTime lastUpdated,
      required bool deleted}) = _Visit;
}
