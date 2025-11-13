import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../usuario/infrastructure/usuario_service.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_rappel_controller.freezed.dart';

@freezed
class ClienteRappelControllerState with _$ClienteRappelControllerState {
  const ClienteRappelControllerState._();
  const factory ClienteRappelControllerState.initial() = _Initial;
  const factory ClienteRappelControllerState.loading() = _Loading;
  const factory ClienteRappelControllerState.data(File? file) = _Data;
  const factory ClienteRappelControllerState.error(String failure) = _Error;
}

final clienteRappelControllerProvider =
    StateNotifierProvider.autoDispose<
      ClienteRappelController,
      ClienteRappelControllerState
    >((ref) => ClienteRappelController(ref));

class ClienteRappelController
    extends StateNotifier<ClienteRappelControllerState> {
  final Ref _ref;

  ClienteRappelController(this._ref)
    : super(const ClienteRappelControllerState.initial());

  Future<void> getRappelDocumentFile({
    required AdjuntoParam adjuntoParam,
  }) async {
    try {
      state = const ClienteRappelControllerState.loading();
      final user = await _ref.read(usuarioServiceProvider).getSignedInUsuario();

      final file = await _ref
          .read(clienteRepositoryProvider)
          .getRappelDocumentFile(
            adjuntoParam: adjuntoParam,
            provisionalToken: user!.provisionalToken,
            test: user.test,
          );
      state = ClienteRappelControllerState.data(file);
    } on AppException catch (e) {
      state = ClienteRappelControllerState.error(e.details.message);
    } catch (e) {
      rethrow;
    }
  }
}
