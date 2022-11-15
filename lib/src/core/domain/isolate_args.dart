import 'dart:isolate';

import '../../features/usuario/domain/usuario.dart';

class IsolateArgs {
  final Usuario user;
  final SendPort isolateSendPort;

  IsolateArgs(this.user, this.isolateSendPort);
}
