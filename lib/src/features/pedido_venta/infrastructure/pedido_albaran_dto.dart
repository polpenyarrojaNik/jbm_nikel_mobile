import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_albaran.dart';

import '../../../core/infrastructure/remote_database.dart';

part 'pedido_albaran_dto.freezed.dart';
part 'pedido_albaran_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class PedidoAlbaranDTO
    with _$PedidoAlbaranDTO
    implements Insertable<PedidoAlbaranDTO> {
  const PedidoAlbaranDTO._();
  const factory PedidoAlbaranDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PEDIDO_ID') required String pedidoVentaId,
    @JsonKey(name: 'ALBARAN_ID') required String albaranId,
    @JsonKey(name: 'FECHA_ALBARAN') required DateTime fechaAlbaran,
    @JsonKey(name: 'AGENCIA') String? agencia,
    @JsonKey(name: 'TRACK_ID') String? trackId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _PedidoAlbaranDTO;

  factory PedidoAlbaranDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoAlbaranDTOFromJson(json);

  PedidoAlbaran toDomain() {
    return PedidoAlbaran(
      empresaId: empresaId,
      pedidoVentaId: pedidoVentaId,
      albaranId: albaranId,
      fechaAlbaran: fechaAlbaran,
      agencia: agencia,
      trackId: trackId,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PedidoAlbaranTableCompanion(
      empresaId: Value(empresaId),
      pedidoVentaId: Value(pedidoVentaId),
      albaranId: Value(albaranId),
      fechaAlbaran: Value(fechaAlbaran),
      agencia: Value(agencia),
      trackId: Value(trackId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PedidoAlbaranDTO)
class PedidoAlbaranTable extends Table {
  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get pedidoVentaId => text().named('PEDIDO_ID')();
  TextColumn get albaranId => text().named('ALBARAN_ID')();
  DateTimeColumn get fechaAlbaran => dateTime().named('FECHA_ALBARAN')();
  TextColumn get agencia => text().nullable().named('AGENCIA')();
  TextColumn get trackId => text().nullable().named('TRACK_ID')();

  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {pedidoVentaId, empresaId, albaranId};

  @override
  String get tableName => 'PEDIDOS_ALBARANES';
}
