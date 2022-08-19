import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_method.freezed.dart';

@freezed
class CollectionMethod with _$CollectionMethod {
  const CollectionMethod._();
  const factory CollectionMethod(
      {required String id,
      required String description,
      required DateTime lastUpdate,
      required bool deleted}) = _CollectionMethod;
}
