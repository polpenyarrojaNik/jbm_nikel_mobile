import 'package:freezed_annotation/freezed_annotation.dart';

part 'subfamilia.freezed.dart';

@freezed
abstract class Subfamilia with _$Subfamilia {
  const Subfamilia._();
  const factory Subfamilia({
    required String id,
    required String familiaId,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _Subfamilia;
}
