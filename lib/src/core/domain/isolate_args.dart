import 'dart:isolate';

import '../../features/usuario/domain/usuario.dart';

class IsolateArgs {
  final Usuario user;
  final SendPort isolateRemoteSendPort;
  final SendPort isolateLocalSendPort;

  IsolateArgs(this.user, this.isolateRemoteSendPort, this.isolateLocalSendPort);
}
