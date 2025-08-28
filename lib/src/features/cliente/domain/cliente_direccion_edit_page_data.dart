import 'package:freezed_annotation/freezed_annotation.dart';

import 'cliente_direccion.dart';

part 'cliente_direccion_edit_page_data.freezed.dart';

@freezed
abstract class ClienteDireccionEditPageData
    with _$ClienteDireccionEditPageData {
  const ClienteDireccionEditPageData._();
  const factory ClienteDireccionEditPageData({
    required ClienteDireccion? clienteDireccion,
    required bool isSent,
    Object? error,
  }) = _ClienteDireccionEditPageData;
}
