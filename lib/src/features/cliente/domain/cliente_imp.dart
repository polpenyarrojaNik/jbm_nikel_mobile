import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/sector.dart';

part 'cliente_imp.freezed.dart';

@freezed
abstract class ClienteImp with _$ClienteImp {
  const ClienteImp._();
  const factory ClienteImp({
    required String clienteId,
    required Sector sector,
  }) = _ClienteImp;
}
