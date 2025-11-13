import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

import '../../../generated/l10n.dart';
import '../../features/articulos/domain/articulo.dart';
import '../../features/articulos/domain/articulo_componente.dart';
import '../../features/cliente/domain/cliente.dart';
import '../../features/cliente/domain/cliente_estado_potencial.dart';
import '../../features/cliente/domain/cliente_tipo_potencial.dart';
import '../../features/cliente/domain/metodo_cobro.dart';
import '../../features/cliente/domain/plazo_cobro.dart';
import '../../features/visitas/domain/visita.dart';
import '../domain/pais.dart';

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
  final formatter = NumberFormat('#,##0.00', Intl.getCurrentLocale());

  return formatter.format(number);
}

String numberFormatCantidades(dynamic number) {
  final formatter = NumberFormat.decimalPattern(Intl.getCurrentLocale());

  return formatter.format(number);
}

String formatCustomerAddress(
  String? direccionFiscal,
  String? codigoPostal,
  String? poblacion,
  String? province,
  Pais? pais,
) {
  var customerAddress = '';
  if (direccionFiscal != null) {
    customerAddress = direccionFiscal;
  }

  if (codigoPostal != null && poblacion != null) {
    customerAddress +=
        '\n${formatCodigoPostalAndPoblacion(codigoPostal: codigoPostal, poblacion: poblacion)}';
  }

  if (province != null && pais != null) {
    customerAddress +=
        '\n${formatProvinciaAndPais(province: province, pais: pais)}';
  }

  return customerAddress;
}

String formatCodigoPostalAndPoblacion({
  String? codigoPostal,
  String? poblacion,
}) {
  var codigoPostalAndCity = '';
  if (codigoPostal != null) {
    codigoPostalAndCity = codigoPostalAndCity + codigoPostal;
  }
  if (codigoPostal != null && poblacion != null) {
    codigoPostalAndCity = '$codigoPostalAndCity - ';
  }
  if (poblacion != null) codigoPostalAndCity = codigoPostalAndCity + poblacion;
  return codigoPostalAndCity;
}

String formatProvinciaAndPais({String? province, Pais? pais}) {
  var provinceAndPais = '';
  if (province != null) provinceAndPais = provinceAndPais + province;
  if (province != null && pais != null) {
    provinceAndPais = '$provinceAndPais ';
  }
  if (pais != null) {
    provinceAndPais = '$provinceAndPais(${pais.descripcion})';
  }
  return provinceAndPais;
}

IconData getIconoFromExtension(String path) {
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
  }
  return FontAwesomeIcons.file;
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
  var formatPrecioYDescuento = formatPrecios(
    precio: precio,
    tipoPrecio: tipoPrecio,
  );

  if (descuento1 != 0 || descuento2 != 0 || descuento3 != 0) {
    formatPrecioYDescuento +=
        '  -${dtoText(descuento1, descuento2, descuento3)}';
  }

  return formatPrecioYDescuento;
}

String formatPrecios({required Money precio, required int? tipoPrecio}) {
  return (tipoPrecio == 1 || tipoPrecio == 0 || tipoPrecio == null)
      ? precio.toString()
      : '${precio.toString()} (x${tipoPrecio.round().toString()})';
}

String dtoText(double descuento1, double descuento2, double descuento3) {
  var dtoText = '';

  if (descuento1 != 0) {
    dtoText += '${numberFormatCantidades(descuento1)}%';
  }
  if (descuento2 != 0) {
    dtoText += (dtoText.isNotEmpty)
        ? ' -${numberFormatCantidades(descuento2)}%'
        : '${numberFormatCantidades(descuento2)}%';
  }
  if (descuento3 != 0) {
    dtoText += (dtoText.isNotEmpty)
        ? ' -${numberFormatCantidades(descuento3)}%'
        : '${numberFormatCantidades(descuento3)}%';
  }
  return dtoText;
}

String getDescriptionArticuloInLocalLanguage({required Articulo articulo}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es') {
    return articulo.descripcionES;
  } else if (currentLocale == 'en' && articulo.descripcionEN != null) {
    return articulo.descripcionEN!;
  } else if (currentLocale == 'de' && articulo.descripcionDE != null) {
    return articulo.descripcionDE!;
  } else if (currentLocale == 'fr' && articulo.descripcionFR != null) {
    return articulo.descripcionFR!;
  } else if (currentLocale == 'it' && articulo.descripcionIT != null) {
    return articulo.descripcionIT!;
  }

  return articulo.descripcionES;
}

String getDescriptionArticuloComponenteInLocalLanguage({
  required ArticuloComponente articulo,
}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es') {
    return articulo.descripcionES;
  } else if (currentLocale == 'en' && articulo.descripcionEN != null) {
    return articulo.descripcionEN!;
  } else if (currentLocale == 'de' && articulo.descripcionDE != null) {
    return articulo.descripcionDE!;
  } else if (currentLocale == 'fr' && articulo.descripcionFR != null) {
    return articulo.descripcionFR!;
  } else if (currentLocale == 'it' && articulo.descripcionIT != null) {
    return articulo.descripcionIT!;
  }

  return articulo.descripcionES;
}

String? getSummaryInLocalLanguage({required Articulo articulo}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es' && articulo.resumenES != null) {
    return articulo.resumenES!;
  } else if (currentLocale == 'en' && articulo.resumenEN != null) {
    return articulo.resumenEN!;
  } else if (currentLocale == 'de' && articulo.descripcionDE != null) {
    return articulo.descripcionDE!;
  } else if (currentLocale == 'fr' && articulo.descripcionFR != null) {
    return articulo.descripcionFR!;
  } else if (currentLocale == 'it' && articulo.descripcionIT != null) {
    return articulo.descripcionIT!;
  }
  return null;
}

String getPlazoCorboInLocalLanguage({required PlazoDeCobro plazoDeCobro}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es') {
    return plazoDeCobro.descripcionES;
  } else if (currentLocale == 'en' && plazoDeCobro.descripcionEN != null) {
    return plazoDeCobro.descripcionEN!;
  } else if (currentLocale == 'de' && plazoDeCobro.descripcionDE != null) {
    return plazoDeCobro.descripcionDE!;
  } else if (currentLocale == 'fr' && plazoDeCobro.descripcionFR != null) {
    return plazoDeCobro.descripcionFR!;
  } else if (currentLocale == 'it' && plazoDeCobro.descripcionIT != null) {
    return plazoDeCobro.descripcionIT!;
  }
  return plazoDeCobro.descripcionES;
}

String? getMetodoCobroInLocalLanguage({required MetodoDeCobro metodoDeCobro}) {
  final currentLocale = Intl.getCurrentLocale();

  if (currentLocale == 'es') {
    return metodoDeCobro.descripcionES;
  } else if (currentLocale == 'en' && metodoDeCobro.descripcionEN != null) {
    return metodoDeCobro.descripcionEN!;
  } else if (currentLocale == 'de' && metodoDeCobro.descripcionDE != null) {
    return metodoDeCobro.descripcionDE!;
  } else if (currentLocale == 'fr' && metodoDeCobro.descripcionFR != null) {
    return metodoDeCobro.descripcionFR!;
  } else if (currentLocale == 'it' && metodoDeCobro.descripcionIT != null) {
    return metodoDeCobro.descripcionIT!;
  }

  return null;
}

String getEstadoCobroFactura({
  required BuildContext context,
  required String estadoCobro,
}) {
  switch (estadoCobro) {
    case 'P':
      return S
          .of(context)
          .cliente_show_clienteFacturasPendientes_estadoPendiente;

    case 'C':
      return S.of(context).cliente_show_clienteFacturasPendientes_estadoCobrado;

    case 'I':
      return S
          .of(context)
          .cliente_show_clienteFacturasPendientes_estadoImpagado;

    case 'D':
      return S
          .of(context)
          .cliente_show_clienteFacturasPendientes_estadoDevuelto;

    default:
      return 'Undefinded';
  }
}

String getClienteEstadoPotencialInLocalLanguage({
  required ClienteEstadoPotencial? estadoPotencial,
}) {
  if (estadoPotencial != null) {
    final currentLocale = Intl.getCurrentLocale();

    if (currentLocale == 'es') {
      return estadoPotencial.descripcionES;
    } else if (currentLocale == 'en' && estadoPotencial.descripcionEN != null) {
      return estadoPotencial.descripcionEN!;
    } else if (currentLocale == 'de' && estadoPotencial.descripcionDE != null) {
      return estadoPotencial.descripcionDE!;
    } else if (currentLocale == 'fr' && estadoPotencial.descripcionFR != null) {
      return estadoPotencial.descripcionFR!;
    } else if (currentLocale == 'it' && estadoPotencial.descripcionIT != null) {
      return estadoPotencial.descripcionIT!;
    }
  }

  return 'Potencial';
}

String? getClienteTipoPotencialInLocalLanguage({
  required ClienteTipoPotencial? tipoPotencial,
}) {
  if (tipoPotencial != null) {
    final currentLocale = Intl.getCurrentLocale();

    if (currentLocale == 'es') {
      return tipoPotencial.descripcionES;
    } else if (currentLocale == 'en' && tipoPotencial.descripcionEN != null) {
      return tipoPotencial.descripcionEN!;
    } else if (currentLocale == 'de' && tipoPotencial.descripcionDE != null) {
      return tipoPotencial.descripcionDE!;
    } else if (currentLocale == 'fr' && tipoPotencial.descripcionFR != null) {
      return tipoPotencial.descripcionFR!;
    } else if (currentLocale == 'it' && tipoPotencial.descripcionIT != null) {
      return tipoPotencial.descripcionIT!;
    }
  }

  return null;
}

Color? getColorEstadoVisitaLocal(
  BuildContext context,
  bool enviada,
  bool tratada,
) {
  if (tratada) {
    return null;
  } else if (enviada) {
    return Theme.of(context).colorScheme.secondaryContainer;
  }
  return Theme.of(context).colorScheme.errorContainer;
}

String? getEstadoVisitaLocal(BuildContext context, bool enviada, bool tratada) {
  if (tratada) {
    return null;
  } else if (enviada) {
    return S.of(context).visita_enviada;
  }
  return S.of(context).visita_noEnviada;
}

String? getEstadoPedidoLocal(
  BuildContext context,
  bool borrador,
  bool enviada,
  bool tratada,
) {
  if (tratada) {
    return null;
  } else if (enviada) {
    return S.of(context).pedido_enviado;
  } else if (borrador) {
    return S.of(context).pedido_borrador;
  }
  return S.of(context).pedido_noEnviado;
}

TextStyle? getTextStyleFechaEntregaByEstado({
  required BuildContext context,
  String? estado,
}) {
  final defaultTextTheme = Theme.of(context).textTheme.bodyMedium;
  switch (estado) {
    case 'E':
      return defaultTextTheme?.copyWith(color: Colors.blue);
    case 'B':
      return defaultTextTheme?.copyWith(color: Colors.red);

    default:
      return null;
  }
}

Color pedidoVentaEstadoColor({int? pedidoVentaEstadoId, double? opacidad}) {
  switch (pedidoVentaEstadoId) {
    case 0: // Introducido
      return Colors.grey.withValues(alpha: opacidad ?? 1);
    case 1: //Servido Parcial
      return Colors.lightGreen.withValues(alpha: opacidad ?? 1);
    case 2: //  Servido
      return Colors.green.withValues(alpha: opacidad ?? 1);

    case 4: // Oferta
      return Colors.orange.withValues(alpha: opacidad ?? 1);
    case 90: //Abierto
      return Colors.greenAccent.withValues(alpha: opacidad ?? 1);
    case 98: //En preparación
      return Colors.yellow.shade300.withValues(alpha: opacidad ?? 1);
    case 99: //Liberado
      return Colors.yellow.shade700.withValues(alpha: opacidad ?? 1);
    case null:
      return Colors.grey.withValues(alpha: 0.5);

    default:
      return Colors.red.withValues(alpha: opacidad ?? 1);
  }
}

bool isSameAddress(Cliente cliente) {
  if (cliente.direccionFiscal1 == cliente.direccionPredeterminada1 &&
      cliente.codigoPostalFiscal == cliente.codigoPostalPredeterminada &&
      cliente.poblacionFiscal == cliente.poblacionPredeterminada &&
      cliente.provinciaFiscal == cliente.provinciaPredeterminada &&
      cliente.paisFiscal == cliente.paisPredeterminada) {
    return true;
  }
  return false;
}

bool isSameName(Cliente cliente) {
  if (cliente.nombreCliente == cliente.nombreFiscal) {
    return true;
  }
  return false;
}

T getFormValue<T>(GlobalKey<FormBuilderState> formKey, String fieldName) {
  return formKey.currentState?.value[fieldName] as T;
}

T getFormInstantValue<T>(
  GlobalKey<FormBuilderState> formKey,
  String fieldName,
) {
  return formKey.currentState?.instantValue[fieldName] as T;
}

FrecuenciaPedido? getFrecuenciaPedidoFromId(String? id) {
  switch (id) {
    case 'M':
      return FrecuenciaPedido.semanal;
    case 'S':
      return FrecuenciaPedido.mensual;
    case 'T':
      return FrecuenciaPedido.trimestral;
    default:
      return null;
  }
}

String? getIdFromFrecuenciaPedido(FrecuenciaPedido? frecuenciaPedido) {
  if (frecuenciaPedido == null) return null;

  switch (frecuenciaPedido) {
    case FrecuenciaPedido.semanal:
      return 'M';
    case FrecuenciaPedido.mensual:
      return 'S';
    case FrecuenciaPedido.trimestral:
      return 'T';
  }
}

String getNameFromFrecuenciaPedido(FrecuenciaPedido frecuenciaPedido) {
  switch (frecuenciaPedido) {
    case FrecuenciaPedido.semanal:
      return S.current.mensual;
    case FrecuenciaPedido.mensual:
      return S.current.semanal;
    case FrecuenciaPedido.trimestral:
      return 'T';
  }
}

InteresCliente? getInteresClienteFromId(String? id) {
  switch (id) {
    case 'A':
      return InteresCliente.alto;
    case 'M':
      return InteresCliente.medio;
    case 'B':
      return InteresCliente.bajo;
    default:
      return null;
  }
}

String? getIdFromInteresCliente(InteresCliente? interesCliente) {
  if (interesCliente == null) return null;

  switch (interesCliente) {
    case InteresCliente.alto:
      return 'A';
    case InteresCliente.medio:
      return 'M';
    case InteresCliente.bajo:
      return 'B';
  }
}

String getNameFromInteresCliente(InteresCliente interesCliente) {
  switch (interesCliente) {
    case InteresCliente.alto:
      return S.current.alto;
    case InteresCliente.medio:
      return S.current.medio;
    case InteresCliente.bajo:
      return S.current.bajo;
  }
}

Capacidad? getCapacidadFromId(String? id) {
  switch (id) {
    case 'G':
      return Capacidad.grande;
    case 'M':
      return Capacidad.media;
    case 'P':
      return Capacidad.pequena;
    default:
      return null;
  }
}

String? getIdFromCapacidad(Capacidad? capacidad) {
  if (capacidad == null) return null;

  switch (capacidad) {
    case Capacidad.grande:
      return 'G';
    case Capacidad.media:
      return 'M';
    case Capacidad.pequena:
      return 'P';
  }
}

String getNameFromCapacidad(Capacidad capacidad) {
  switch (capacidad) {
    case Capacidad.grande:
      return S.current.grande;
    case Capacidad.media:
      return S.current.media;
    case Capacidad.pequena:
      return S.current.pequena;
  }
}
