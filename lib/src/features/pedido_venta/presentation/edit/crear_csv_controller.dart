import 'dart:io';

import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/pedido_venta_linea.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'crear_csv_controller.g.dart';

@riverpod
class CrearCsvController extends _$CrearCsvController {
  @override
  Future<void> build() async {
    return;
  }

  Future<File> crearCsvController({
    required String pedidoVentaAppId,
    required List<PedidoVentaLinea> pedidoVentaLineaList,
  }) async {
    final csvFile = await ref
        .read(pedidoVentaRepositoryProvider)
        .createPedidoVentaLineasCSV(
          pedidoVentaAppId: pedidoVentaAppId,
          pedidoVentaLineaList: pedidoVentaLineaList,
        );

    return csvFile;
  }
}

final crearCsvMutation = Mutation<File>();
