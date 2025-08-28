import 'package:freezed_annotation/freezed_annotation.dart';

part 'idioma_catalogo.freezed.dart';

@freezed
abstract class IdiomaCatalogo with _$IdiomaCatalogo {
  const IdiomaCatalogo._();
  const factory IdiomaCatalogo({
    required String idiomaId,
    required String descripcion,
  }) = _IdiomaCatalogo;
}
