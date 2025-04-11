import '../../domain/visita_motivos_no_venta.dart';
import '../../domain/visita_sector.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/visita_competidor.dart';
import '../../infrastructure/visita_repository.dart';

part 'visita_edit_page_controller.g.dart';

@riverpod
class VisitaSectorListFormDropdownController
    extends _$VisitaSectorListFormDropdownController {
  VisitaSectorListFormDropdownController();

  @override
  Future<List<VisitaSector>> build() async {
    return ref.read(visitaRepositoryProvider).getVisitaSectores();
  }
}

@riverpod
class VisitaCompetidorListFormDropdownController
    extends _$VisitaCompetidorListFormDropdownController {
  VisitaCompetidorListFormDropdownController();

  @override
  Future<List<VisitaCompetidor>> build() async {
    return ref.read(visitaRepositoryProvider).getVisitaCompetidores();
  }
}

@riverpod
class VisitaMotivosNoVentaListFormDropdownController
    extends _$VisitaMotivosNoVentaListFormDropdownController {
  VisitaMotivosNoVentaListFormDropdownController();

  @override
  Future<List<VisitaMotivoNoVenta>> build() async {
    return ref.read(visitaRepositoryProvider).getVisitaMotivosNoVenta();
  }
}
