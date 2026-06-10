import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'get_cliente_alrededor_arg.freezed.dart';

@freezed
abstract class GetClienteAlrededorArg with _$GetClienteAlrededorArg {
  const GetClienteAlrededorArg._();
  const factory GetClienteAlrededorArg({
    required LatLng latLng,
    required double radiusDistance,
  }) = _GetClienteAlrededorArg;
}
