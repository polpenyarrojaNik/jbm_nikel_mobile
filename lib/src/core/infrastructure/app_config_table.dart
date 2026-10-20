import 'package:drift/drift.dart';

/// Configuración clave/valor descargada de la API y disponible offline.
@DataClassName('AppConfigRow')
class AppConfigTable extends Table {
  @override
  String get tableName => 'APP_CONFIG';

  @override
  Set<Column> get primaryKey => {clave};

  TextColumn get clave => text().named('CLAVE')();
  TextColumn get valor => text().named('VALOR')();
}

const kConfigHoraPedidosDia = 'HORA_PEDIDOS_DIA';
