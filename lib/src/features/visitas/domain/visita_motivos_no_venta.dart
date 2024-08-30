import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_motivos_no_venta.freezed.dart';

@freezed
class VisitaMotivoNoVenta with _$VisitaMotivoNoVenta {
  const VisitaMotivoNoVenta._();
  const factory VisitaMotivoNoVenta({
    required int id,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _VisitaMotivoNoVenta;
}
