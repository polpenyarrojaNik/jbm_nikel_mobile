import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'cliente_ventas_mes.freezed.dart';

@freezed
abstract class ClienteVentasMes with _$ClienteVentasMes {
  const ClienteVentasMes._();
  const factory ClienteVentasMes({
    required int mes,
    required Money importeAnyo,
    required Money importeAnyo_1,
    required Money importeAnyo_2,
    required Money importeAnyo_3,
    required Money importeAnyo_4,
  }) = _ClienteVentasMes;
}
