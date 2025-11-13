import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../usuario/infrastructure/usuario_service.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_adjunto_controller.freezed.dart';

@freezed
class ClienteAdjuntoState with _$ClienteAdjuntoState {
  const ClienteAdjuntoState._();
  const factory ClienteAdjuntoState.initial() = _Initial;
  const factory ClienteAdjuntoState.loading() = _Loading;
  const factory ClienteAdjuntoState.data(File? file) = _Data;
  const factory ClienteAdjuntoState.error(String failure) = _Error;
}

final clienteAdjuntoControllerProvider =
    StateNotifierProvider.autoDispose<
      ClienteAdjuntoController,
      ClienteAdjuntoState
    >((ref) => ClienteAdjuntoController(ref));

class ClienteAdjuntoController extends StateNotifier<ClienteAdjuntoState> {
  final Ref _ref;

  ClienteAdjuntoController(this._ref)
    : super(const ClienteAdjuntoState.initial());

  Future<void> getAttachmentFile({required AdjuntoParam adjuntoParam}) async {
    try {
      state = const ClienteAdjuntoState.loading();
      final user = await _ref.read(usuarioServiceProvider).getSignedInUsuario();

      final file = await _ref
          .read(clienteRepositoryProvider)
          .getDocumentFile(
            adjuntoParam: adjuntoParam,
            provisionalToken: user!.provisionalToken,
            test: user.test,
          );
      state = ClienteAdjuntoState.data(file);
    } on AppException catch (e) {
      state = ClienteAdjuntoState.error(e.details.message);
    } catch (e) {
      rethrow;
    }
  }
}
