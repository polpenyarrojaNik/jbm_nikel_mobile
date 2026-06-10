import '../../../../generated/l10n.dart';

enum ClienteEstado {
  todos,
  activo,
  potencial,
  inactivo;

  String get displayName {
    switch (this) {
      case ClienteEstado.todos:
        return S.current.all;
      case ClienteEstado.activo:
        return S.current.active;
      case ClienteEstado.potencial:
        return S.current.potential;
      case ClienteEstado.inactivo:
        return S.current.inactive;
    }
  }
}
