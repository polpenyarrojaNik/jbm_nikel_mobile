import 'dart:isolate';

class IsolateRequest {
  final SendPort sendDriftIsolate;
  final String targetPath;

  IsolateRequest(this.sendDriftIsolate, this.targetPath);
}
