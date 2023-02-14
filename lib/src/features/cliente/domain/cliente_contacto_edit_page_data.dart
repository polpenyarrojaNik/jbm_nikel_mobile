import 'package:freezed_annotation/freezed_annotation.dart';

import 'cliente_contacto.dart';

part 'cliente_contacto_edit_page_data.freezed.dart';

@freezed
class ContactoModificacionEditPageData with _$ContactoModificacionEditPageData {
  const ContactoModificacionEditPageData._();
  const factory ContactoModificacionEditPageData({
    required ClienteContacto? clienteContacto,
    required bool isSent,
    Object? error,
  }) = _ContactoModificacionEditPageData;
}
