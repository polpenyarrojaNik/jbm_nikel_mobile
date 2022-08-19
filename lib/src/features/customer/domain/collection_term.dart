import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_term.freezed.dart';

@freezed
class CollectionTerm with _$CollectionTerm {
  const CollectionTerm._();
  const factory CollectionTerm(
      {required String id,
      required String description,
      required DateTime lastUpdate,
      required bool deleted}) = _CollectionTerm;
}
