import 'package:freezed_annotation/freezed_annotation.dart';

import 'cliente_contacto.dart';

part 'cliente_contacto_edit_page_data.freezed.dart';

@freezed
class ClienteContactoEditPageData with _$ClienteContactoEditPageData {
  const ClienteContactoEditPageData._();
  const factory ClienteContactoEditPageData({
    required ClienteContacto? clienteContacto,
    required bool isSent,
    Object? error,
  }) = _ClienteContactoEditPageData;
}
