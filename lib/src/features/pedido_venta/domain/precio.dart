import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'precio.freezed.dart';

@freezed
class Precio with _$Precio {
  const Precio._();
  const factory Precio({required Money precio, required int tipoPrecio}) =
      _Precio;
}
