import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'get_cliente_alrededor_arg.freezed.dart';

@freezed
class GetClienteAlrededorArg with _$GetClienteAlrededorArg {
  const GetClienteAlrededorArg._();
  const factory GetClienteAlrededorArg({
    required Position position,
    required double radiusDistance,
  }) = _GetClienteAlrededorArg;
}
