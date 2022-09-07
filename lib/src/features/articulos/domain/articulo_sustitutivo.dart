import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo.dart';

part 'articulo_sustitutivo.freezed.dart';

@freezed
class ArticuloSustitutivo with _$ArticuloSustitutivo {
  const ArticuloSustitutivo._();
  const factory ArticuloSustitutivo(
      {required String articuloId,
      required Articulo articuloSustitutivo,
      required double orden,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloSustitutivo;
}
