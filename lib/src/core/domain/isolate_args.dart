import 'dart:isolate';

import '../../features/usuario/domain/usuario.dart';

class IsolateArgs {
  final Usuario usuario;
  final SendPort isolateSendPort;

  IsolateArgs(this.usuario, this.isolateSendPort);
}
