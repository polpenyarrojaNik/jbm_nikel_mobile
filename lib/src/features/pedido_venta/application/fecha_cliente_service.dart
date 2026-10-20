import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/infrastructure/app_config_table.dart';
import '../../../core/infrastructure/local_database.dart';

part 'fecha_cliente_service.g.dart';

@riverpod
FechaClienteService fechaClienteService(Ref ref) =>
    FechaClienteService(ref.watch(appLocalDatabaseProvider));

typedef HoraLimite = ({int hour, int minute});

class FechaClienteService {
  const FechaClienteService(this._localDb);

  final LocalAppDatabase _localDb;

  /// Fecha cliente por defecto según la hora límite guardada en local
  /// (sin llamadas a la API). Sin configuración sincronizada se asume hoy.
  Future<DateTime> getFechaClientePorDefecto({DateTime? now}) async {
    final row =
        await (_localDb.select(_localDb.appConfigTable)
              ..where((tbl) => tbl.clave.equals(kConfigHoraPedidosDia)))
            .getSingleOrNull();

    return calcularFechaCliente(
      now: now ?? DateTime.now(),
      horaLimite: parseHoraLimite(row?.valor),
    );
  }
}

/// Parsea "HH:mm" (o "HH:mm:ss"). Devuelve null si el formato no es válido.
HoraLimite? parseHoraLimite(String? value) {
  if (value == null) return null;
  final parts = value.trim().split(':');
  if (parts.length < 2) return null;
  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  if (hour == null ||
      minute == null ||
      hour < 0 ||
      hour > 23 ||
      minute < 0 ||
      minute > 59) {
    return null;
  }
  return (hour: hour, minute: minute);
}

/// Antes de la hora límite -> hoy; después -> siguiente día laborable
/// (lunes a viernes). Si hoy es fin de semana también se pasa al lunes.
DateTime calcularFechaCliente({
  required DateTime now,
  required HoraLimite? horaLimite,
}) {
  final hoy = DateTime(now.year, now.month, now.day);
  final superadoLimite =
      horaLimite != null &&
      (now.hour > horaLimite.hour ||
          (now.hour == horaLimite.hour && now.minute >= horaLimite.minute));

  return (superadoLimite || _esFinDeSemana(hoy))
      ? _siguienteLaborable(hoy)
      : hoy;
}

bool _esFinDeSemana(DateTime d) =>
    d.weekday == DateTime.saturday || d.weekday == DateTime.sunday;

DateTime _siguienteLaborable(DateTime d) {
  var next = DateTime(d.year, d.month, d.day + 1);
  while (_esFinDeSemana(next)) {
    next = DateTime(next.year, next.month, next.day + 1);
  }
  return next;
}
