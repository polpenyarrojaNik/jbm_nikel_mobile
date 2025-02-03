import 'package:flutter_dotenv/flutter_dotenv.dart';
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
    required String nombreFicheroPortada,
    required String nombreFicheroCatalogo,
    required bool descarga,
    // required bool isFavorite,
  }) = _Catalogo;

  String get getImageUrl {
    return 'https://${dotenv.get('URLTEST', fallback: 'localhost:3001')}/api/v1/online/adjunto/catalogo/$catalogoId?NOMBRE_ARCHIVO=$nombreFicheroPortada';
  }

  String get nombreCompleto => '$nombre ($idiomaId) $tipoPrecioCatalogoNombre';
}
