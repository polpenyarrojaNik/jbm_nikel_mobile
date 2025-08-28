import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_usuario.freezed.dart';

@freezed
abstract class ClienteUsuario with _$ClienteUsuario {
  const ClienteUsuario._();
  const factory ClienteUsuario({
    required String clienteId,
    required String usuarioId,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _ClienteUsuario;
}
