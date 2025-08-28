import 'package:freezed_annotation/freezed_annotation.dart';

part 'devolucion_estado.freezed.dart';

@freezed
abstract class DevolucionEstado with _$DevolucionEstado {
  const DevolucionEstado._();
  const factory DevolucionEstado({
    required String id,
    required String descripcion,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _DevolucionEstado;
}
