import 'dart:io';

import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/adjunto_param.dart';
import '../../../usuario/infrastructure/usuario_service.dart';
import '../../domain/cliente_rappel.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_rappel_controller.g.dart';

@riverpod
class ClienteRappelListById extends _$ClienteRappelListById {
  @override
  Future<List<ClienteRappel>> build(String clienteId) {
    final clienteRepository = ref.watch(clienteRepositoryProvider);
    return clienteRepository.getClienteRappelById(clienteId: clienteId);
  }

  Future<File?> getRappelDocumentFile({
    required AdjuntoParam adjuntoParam,
  }) async {
    final user = await ref.read(usuarioServiceProvider).getSignedInUsuario();

    final file = await ref
        .read(clienteRepositoryProvider)
        .getRappelDocumentFile(
          adjuntoParam: adjuntoParam,
          provisionalToken: user!.provisionalToken,
          test: user.test,
        );
    return file;
  }
}

final clienteRappelDocumentMutation = Mutation<File?>();
