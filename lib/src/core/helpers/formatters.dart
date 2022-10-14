import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_componente.dart';
import 'package:money2/money2.dart';

import '../../../generated/l10n.dart';
import '../../features/articulos/domain/articulo.dart';
import '../../features/cliente/domain/cliente_estado_potencial.dart';
import '../../features/cliente/domain/cliente_tipo_potencial.dart';
import '../../features/cliente/domain/cliente_ventas_articulo.dart';
import '../../features/cliente/domain/metodo_cobro.dart';
import '../../features/cliente/domain/plazo_cobro.dart';

String dateFormatter(String dateStr, {bool allDay = false}) {
  DateTime date;

  final formatter = DateFormat.yMd(Intl.getCurrentLocale());

  if (allDay) {
    formatter.add_Hm();
  }

  date = DateTime.parse(dateStr);

  return formatter.format(date);
}

String getMonthFromInt(int month) {
  final formatter = DateFormat.MMM(Intl.getCurrentLocale());

  return formatter.format(DateTime(0, month));
}

String numberFormatDecimal(double number) {
  NumberFormat formatter = NumberFormat('#,##0.00', Intl.getCurrentLocale());

  return formatter.format(number);
}

String numberFormatCantidades(dynamic number) {
  NumberFormat formatter = NumberFormat.decimalPattern(Intl.getCurrentLocale());

  return formatter.format(number);
}

String formatCodigoPostalAndPoblacion({
  String? codigoPostal,
  String? poblacion,
}) {
  String codigoPostalAndCity = '';
  if (codigoPostal != null) {
    codigoPostalAndCity = codigoPostalAndCity + codigoPostal;
  }
  if (codigoPostal != null && poblacion != null) {
    codigoPostalAndCity = '$codigoPostalAndCity - ';
  }
  if (poblacion != null) codigoPostalAndCity = codigoPostalAndCity + poblacion;
  return codigoPostalAndCity;
}

String formatProvinciaAndPais({
  String? province,
  Pais? pais,
}) {
  String provinceAndPais = '';
  if (province != null) provinceAndPais = provinceAndPais + province;
  if (province != null && pais != null) {
    provinceAndPais = '$provinceAndPais ';
  }
  if (pais != null) {
    provinceAndPais = '$provinceAndPais(${pais.descripcion})';
  }
  return provinceAndPais;
}

IconData? getIconoFromExtension(String path) {
  final extension = path.split('.').last;
  if (extension == 'pdf') {
    return FontAwesomeIcons.filePdf;
  } else if (extension == 'doc' || extension == 'docx' || extension == 'odt') {
    return FontAwesomeIcons.fileWord;
  } else if (extension == 'xls') {
    return FontAwesomeIcons.fileExcel;
  } else if (extension == 'mp3' || extension == 'wav') {
    return FontAwesomeIcons.fileAudio;
  } else if (extension == 'zip' || extension == 'rar') {
    return FontAwesomeIcons.fileZipper;
  } else if (extension == 'ppt') {
    return FontAwesomeIcons.filePowerpoint;
  } else if (extension == 'mp4') {
    return FontAwesomeIcons.fileVideo;
  } else if (extension == 'csv') {
    return FontAwesomeIcons.fileCsv;
  } else if (extension == 'png' ||
      extension == 'jpg' ||
      extension == 'jpeg' ||
      extension == 'heic' ||
      extension == 'HEIC') {
    return FontAwesomeIcons.image;
  } else {
    return FontAwesomeIcons.file;
  }
}

String getNombreArchivo(String path) {
  return path.split('/').last;
}

String formatPrecioYDescuento({
  required Money precio,
  required int? tipoPrecio,
  required double descuento1,
  required double descuento2,
  required double descuento3,
}) {
  String formatPrecioYDescuento =
      formatPrecios(precio: precio, tipoPrecio: tipoPrecio);

  if (descuento1 != 0 && descuento2 != 0 && descuento3 != 0) {
    formatPrecioYDescuento +=
        '  ${dtoText(descuento1, descuento2, descuento3)}';
  }

  return formatPrecioYDescuento;
}

String formatPrecios({required Money precio, required int? tipoPrecio}) {
  if (tipoPrecio == 1 || tipoPrecio == 0 || tipoPrecio == null) {
    return precio.toString();
  } else {
    return '${precio.toString()} (x${tipoPrecio.round().toString()})';
  }
}

String dtoText(
  double descuento1,
  double descuento2,
  double descuento3,
) {
  String dtoText = '';

  if (descuento1 != 0) {
    dtoText += '$descuento1%';
  }
  if (descuento2 != 0) {
    dtoText += (dtoText.isNotEmpty) ? ' - $descuento2%' : '$descuento2%';
  }
  if (descuento3 != 0) {
    dtoText += (dtoText.isNotEmpty) ? ' - $descuento3%' : '$descuento3%';
  }
  return dtoText;
}

String getDescriptionArticuloInLocalLanguage({required Articulo articulo}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es') {
    return articulo.descripcionES;
  } else if (currentLocale == 'en' && articulo.descripcionEN != null) {
    return articulo.descripcionEN!;
  }

  return articulo.descripcionES;
}

String getDescriptionArticuloComponenteInLocalLanguage(
    {required ArticuloComponente articulo}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es') {
    return articulo.descripcionES;
  } else if (currentLocale == 'en' && articulo.descripcionEN != null) {
    return articulo.descripcionEN!;
  }

  return articulo.descripcionES;
}

String? getSummaryInLocalLanguage({required Articulo articulo}) {
  final currentLocale = Intl.getCurrentLocale();
  print(currentLocale);

  if (currentLocale == 'es' && articulo.resumenES != null) {
    return articulo.resumenES!;
  } else if (currentLocale == 'en' && articulo.resumenEN != null) {
    return articulo.resumenEN!;
  }
  return null;
}

String? getPlazoCorboInLocalLanguage({required PlazoDeCobro plazoDeCobro}) {
  final currentLocale = Intl.getCurrentLocale();
  print(currentLocale);

  if (currentLocale == 'es') {
    return plazoDeCobro.descripcionES;
  } else if (currentLocale == 'en' && plazoDeCobro.descripcionEN != null) {
    return plazoDeCobro.descripcionEN!;
  }
  return null;
}

String? getMetodoCobroInLocalLanguage({required MetodoDeCobro metodoDeCobro}) {
  final currentLocale = Intl.getCurrentLocale();
  print(currentLocale);

  if (currentLocale == 'es') {
    return metodoDeCobro.descripcionES;
  } else if (currentLocale == 'en' && metodoDeCobro.descripcionEN != null) {
    return metodoDeCobro.descripcionEN!;
  }
  return null;
}

String getTipoCalculoPrecioDescripcion(
    {required BuildContext context, required String tipoCalucloPrecio}) {
  if (tipoCalucloPrecio == 'M') {
    return S
        .of(context)
        .cliente_show_clienteDetalle_metodoCalculoPrecioMejorPrecioDescripcion;
  }
  return S
      .of(context)
      .cliente_show_clienteDetalle_metodoCalculoPrecioPreciosNetosDescripcion;
}

String getEstadoCobroFactura(
    {required BuildContext context, required String estadoCobro}) {
  if (estadoCobro == 'P') {
    return S.of(context).cliente_show_clienteFacturasPendientes_estadoPendiente;
  } else if (estadoCobro == 'C') {
    return S.of(context).cliente_show_clienteFacturasPendientes_estadoCobrado;
  } else if (estadoCobro == 'I') {
    return S.of(context).cliente_show_clienteFacturasPendientes_estadoImpagado;
  } else if (estadoCobro == 'D') {
    return S.of(context).cliente_show_clienteFacturasPendientes_estadoDevuelto;
  } else {
    return 'Undefinded';
  }
}

String getClienteEstadoPotencialInLocalLanguage(
    {required ClienteEstadoPotencial? estadoPotencial}) {
  final currentLocale = Intl.getCurrentLocale();

  if (estadoPotencial != null) {
    if (currentLocale == 'es') {
      return estadoPotencial.descripcionES;
    } else if (currentLocale == 'en' && estadoPotencial.descripcionEN != null) {
      return estadoPotencial.descripcionEN!;
    }
  }

  return 'Potencial';
}

String? getClienteTipoPotencialInLocalLanguage(
    {required ClienteTipoPotencial? tipoPotencial}) {
  final currentLocale = Intl.getCurrentLocale();

  if (tipoPotencial != null) {
    if (currentLocale == 'es') {
      return tipoPotencial.descripcionES;
    } else if (currentLocale == 'en' && tipoPotencial.descripcionEN != null) {
      return tipoPotencial.descripcionEN!;
    } else {}
  }

  return null;
}

String? getClienteVentasArticuloDescripcionInLocalLanguage(
    {required ClienteVentasArticulo clienteVentasArticulo}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es') {
    return clienteVentasArticulo.descripcionES;
  } else if (currentLocale == 'en' &&
      clienteVentasArticulo.descripcionEN != null) {
    return clienteVentasArticulo.descripcionEN!;
  }

  return null;
}

Color? getColorEstadoVisitaLocal(
    BuildContext context, bool enviada, bool tratada) {
  if (tratada) {
    return null;
  } else if (enviada) {
    return Theme.of(context).colorScheme.secondaryContainer;
  } else {
    return Theme.of(context).colorScheme.errorContainer;
  }
}

String? getEstadoVisitaLocal(BuildContext context, bool enviada, bool tratada) {
  if (tratada) {
    return null;
  } else if (enviada) {
    return S.of(context).visita_enviada;
  } else {
    return S.of(context).visita_noEnviada;
  }
}

String? getEstadoPedidoLocal(BuildContext context, bool enviada, bool tratada) {
  if (tratada) {
    return null;
  } else if (enviada) {
    return S.of(context).pedido_enviado;
  } else {
    return S.of(context).pedido_noEnviado;
  }
}

TextStyle? getTextStyleFechaEntregaByEstado(
    {required BuildContext context, String? estado}) {
  final defaultTextTheme = Theme.of(context).textTheme.bodyText2;
  switch (estado) {
    case 'E':
      return defaultTextTheme?.copyWith(color: Colors.blue);
    case 'B':
      return defaultTextTheme?.copyWith(color: Colors.red);

    default:
      return null;
  }
}

Color pedidoVentaEstadoColor({
  int? pedidoVentaEstadoId,
  double? opacidad,
}) {
  switch (pedidoVentaEstadoId) {
    case 0: // Introducido
      return Colors.grey.withOpacity(opacidad ?? 1);
    case 1: //Servido Parcial
      return Colors.lightGreen.withOpacity(opacidad ?? 1);
    case 2: //  Servido
      return Colors.green.withOpacity(opacidad ?? 1);
    case 3: //Anulado
      return Colors.red.withOpacity(opacidad ?? 1);
    case 4: // Oferta
      return Colors.orange.withOpacity(opacidad ?? 1);
    case 98: //En preparación
      return Colors.yellow.shade300.withOpacity(opacidad ?? 1);
    case 99: //Liberado
      return Colors.yellow.shade700.withOpacity(opacidad ?? 1);

    default:
      return Colors.red.withOpacity(opacidad ?? 1);
  }
}
