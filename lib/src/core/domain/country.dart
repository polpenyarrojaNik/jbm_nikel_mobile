import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const Country._();
  const factory Country(
      {required String id,
      required String? isoCode,
      required String description,
      required DateTime lastUpdate,
      required bool deleted}) = _Country;
}
