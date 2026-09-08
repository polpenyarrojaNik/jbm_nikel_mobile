import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../generated/l10n.dart';

part 'carrito_abandonado.freezed.dart';

enum CarritoAbandonadoStatus { pending, deleted }

@freezed
abstract class CarritoAbandonado with _$CarritoAbandonado {
  const CarritoAbandonado._();
  const factory CarritoAbandonado({
    required int carritoId,
    required CarritoAbandonadoStatus status,
    required String customerId,
    required String customerName,
    required String contactId,
    required String contactName,
    required List<CarritoAbandonadoLinea> lineas,
  }) = _CarritoAbandonado;

  String get statusName => status == CarritoAbandonadoStatus.pending
      ? S.current.pending
      : S.current.deleted;
}

@freezed
abstract class CarritoAbandonadoLinea with _$CarritoAbandonadoLinea {
  const CarritoAbandonadoLinea._();
  const factory CarritoAbandonadoLinea({
    required String carritoLineaId,
    required String customerId,
    required String contactId,
    required String articleId,
    required int quantity,
  }) = _CarritoAbandonadoLinea;
}
