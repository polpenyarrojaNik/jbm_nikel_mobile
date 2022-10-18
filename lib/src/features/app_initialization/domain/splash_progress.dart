enum SplashProgress {
  downloadedDatabase,
  syncArticulos,
  syncClientes,
  syncPedidos,
  syncVisitas,
  syncAuxiliar,
}

extension SplashProgressExtension on SplashProgress {
  int get value {
    switch (this) {
      case SplashProgress.downloadedDatabase:
        return 0;
      case SplashProgress.syncArticulos:
        return 1;
      case SplashProgress.syncClientes:
        return 2;
      case SplashProgress.syncPedidos:
        return 3;
      case SplashProgress.syncVisitas:
        return 4;
      case SplashProgress.syncAuxiliar:
        return 99;
    }
  }

  static SplashProgress getFromInt(int splashProressInt) {
    switch (splashProressInt) {
      case 0:
        return SplashProgress.downloadedDatabase;
      case 1:
        return SplashProgress.syncArticulos;
      case 2:
        return SplashProgress.syncClientes;
      case 3:
        return SplashProgress.syncPedidos;
      case 4:
        return SplashProgress.syncVisitas;
      case 99:
        return SplashProgress.syncAuxiliar;

      default:
        return SplashProgress.downloadedDatabase;
    }
  }
}
