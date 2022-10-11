import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_sustitutivo.freezed.dart';

@freezed
class ArticuloSustitutivo with _$ArticuloSustitutivo {
  const ArticuloSustitutivo._();
  const factory ArticuloSustitutivo(
      {required String articuloId,
      required String articuloSustitutivoId,
      required String articuloSustitutivoDescription,
      required int orden,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloSustitutivo;
}
