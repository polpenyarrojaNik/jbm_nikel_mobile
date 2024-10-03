enum SyncProgress {
  downloadedDatabase,
  syncArticulos,
  syncClientes,
  syncPedidos,
  syncVisitas,
  syncAuxiliar,
  syncCatalogos,
}

extension SplashProgressExtension on SyncProgress {
  int get value {
    switch (this) {
      case SyncProgress.downloadedDatabase:
        return 0;
      case SyncProgress.syncArticulos:
        return 1;
      case SyncProgress.syncClientes:
        return 2;
      case SyncProgress.syncPedidos:
        return 3;
      case SyncProgress.syncVisitas:
        return 4;
      case SyncProgress.syncCatalogos:
        return 5;
      case SyncProgress.syncAuxiliar:
        return 99;
    }
  }

  static SyncProgress getFromInt(int splashProressInt) {
    switch (splashProressInt) {
      case 0:
        return SyncProgress.downloadedDatabase;
      case 1:
        return SyncProgress.syncArticulos;
      case 2:
        return SyncProgress.syncClientes;
      case 3:
        return SyncProgress.syncPedidos;
      case 4:
        return SyncProgress.syncVisitas;
      case 5:
        return SyncProgress.syncCatalogos;
      case 99:
        return SyncProgress.syncAuxiliar;

      default:
        return SyncProgress.downloadedDatabase;
    }
  }
}
