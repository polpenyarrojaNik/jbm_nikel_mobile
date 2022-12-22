import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalogo.freezed.dart';

@freezed
class Catalogo with _$Catalogo {
  const Catalogo._();
  const factory Catalogo({
    required int catalogoId,
    required String nombre,
    required String idiomaId,
    required String tipoPrecioCatalogoId,
    required String tipoPrecioCatalogoNombre,
    required String tipoCatalogoId,
    required String tagBusqueda,
    required int orden,
    required String urlFicherPortada,
    required String nombreFicheroCatalogo,
    // required bool isFavorite,
  }) = _Catalogo;
}
