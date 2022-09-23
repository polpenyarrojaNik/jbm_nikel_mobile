import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'get_cliente_alrededor_arg.freezed.dart';

@freezed
class GetClienteAlrededorArg with _$GetClienteAlrededorArg {
  const GetClienteAlrededorArg._();
  const factory GetClienteAlrededorArg({
    required LatLng latLng,
    required double radiusDistance,
  }) = _GetClienteAlrededorArg;
}
