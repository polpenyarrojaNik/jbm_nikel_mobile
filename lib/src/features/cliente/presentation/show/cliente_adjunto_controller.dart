import 'dart:io';

import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/adjunto_param.dart';
import '../../../usuario/infrastructure/usuario_service.dart';
import '../../domain/cliente_adjunto.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_adjunto_controller.g.dart';

@riverpod
class ClienteAdjuntoListById extends _$ClienteAdjuntoListById {
  @override
  Future<List<ClienteAdjunto>> build(String clienteId) async {
    final clienteRepository = ref.watch(clienteRepositoryProvider);
    final usuario = await ref
        .watch(usuarioServiceProvider)
        .getSignedInUsuario();
    return clienteRepository.getClienteAdjuntoById(
      clienteId: clienteId,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test,
    );
  }

  Future<File?> getAttachmentFile({required AdjuntoParam adjuntoParam}) async {
    final user = await ref.read(usuarioServiceProvider).getSignedInUsuario();

    final file = await ref
        .read(clienteRepositoryProvider)
        .getDocumentFile(
          adjuntoParam: adjuntoParam,
          provisionalToken: user!.provisionalToken,
          test: user.test,
        );
    return file;
  }
}

final clienteAdjuntoMutation = Mutation<File?>();
