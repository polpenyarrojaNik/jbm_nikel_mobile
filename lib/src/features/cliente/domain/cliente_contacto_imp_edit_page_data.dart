import 'package:freezed_annotation/freezed_annotation.dart';

import 'cliente_contacto.dart';

part 'cliente_contacto_imp_edit_page_data.freezed.dart';

@freezed
class ClienteContactoImpEditPageData with _$ClienteContactoImpEditPageData {
  const ClienteContactoImpEditPageData._();
  const factory ClienteContactoImpEditPageData({
    required ClienteContacto? clienteContacto,
    required bool isSent,
    Object? error,
  }) = _ClienteContactoImpEditPageData;
}
