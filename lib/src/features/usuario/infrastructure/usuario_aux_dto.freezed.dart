// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_aux_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsuarioAuxDTO _$UsuarioAuxDTOFromJson(Map<String, dynamic> json) {
  return _UsuarioAuxDTO.fromJson(json);
}

/// @nodoc
mixin _$UsuarioAuxDTO {
  @JsonKey(name: 'USUARIO_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'USUARIO')
  String get usuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
  String? get nombreUsuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
  String get modificarPedido => throw _privateConstructorUsedError;
  @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
  String get verTotalVentas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioAuxDTOCopyWith<UsuarioAuxDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioAuxDTOCopyWith<$Res> {
  factory $UsuarioAuxDTOCopyWith(
          UsuarioAuxDTO value, $Res Function(UsuarioAuxDTO) then) =
      _$UsuarioAuxDTOCopyWithImpl<$Res, UsuarioAuxDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String id,
      @JsonKey(name: 'USUARIO') String usuario,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,
      @JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,
      @JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas});
}

/// @nodoc
class _$UsuarioAuxDTOCopyWithImpl<$Res, $Val extends UsuarioAuxDTO>
    implements $UsuarioAuxDTOCopyWith<$Res> {
  _$UsuarioAuxDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? usuario = null,
    Object? nombreUsuario = freezed,
    Object? idiomaId = null,
    Object? modificarPedido = null,
    Object? verTotalVentas = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: freezed == nombreUsuario
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      modificarPedido: null == modificarPedido
          ? _value.modificarPedido
          : modificarPedido // ignore: cast_nullable_to_non_nullable
              as String,
      verTotalVentas: null == verTotalVentas
          ? _value.verTotalVentas
          : verTotalVentas // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsuarioAuxDTOImplCopyWith<$Res>
    implements $UsuarioAuxDTOCopyWith<$Res> {
  factory _$$UsuarioAuxDTOImplCopyWith(
          _$UsuarioAuxDTOImpl value, $Res Function(_$UsuarioAuxDTOImpl) then) =
      __$$UsuarioAuxDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String id,
      @JsonKey(name: 'USUARIO') String usuario,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,
      @JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,
      @JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas});
}

/// @nodoc
class __$$UsuarioAuxDTOImplCopyWithImpl<$Res>
    extends _$UsuarioAuxDTOCopyWithImpl<$Res, _$UsuarioAuxDTOImpl>
    implements _$$UsuarioAuxDTOImplCopyWith<$Res> {
  __$$UsuarioAuxDTOImplCopyWithImpl(
      _$UsuarioAuxDTOImpl _value, $Res Function(_$UsuarioAuxDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? usuario = null,
    Object? nombreUsuario = freezed,
    Object? idiomaId = null,
    Object? modificarPedido = null,
    Object? verTotalVentas = null,
  }) {
    return _then(_$UsuarioAuxDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: freezed == nombreUsuario
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      modificarPedido: null == modificarPedido
          ? _value.modificarPedido
          : modificarPedido // ignore: cast_nullable_to_non_nullable
              as String,
      verTotalVentas: null == verTotalVentas
          ? _value.verTotalVentas
          : verTotalVentas // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsuarioAuxDTOImpl extends _UsuarioAuxDTO {
  const _$UsuarioAuxDTOImpl(
      {@JsonKey(name: 'USUARIO_ID') required this.id,
      @JsonKey(name: 'USUARIO') required this.usuario,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
      required this.nombreUsuario,
      @JsonKey(name: 'IDIOMA_ID') required this.idiomaId,
      @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
      required this.modificarPedido,
      @JsonKey(name: 'APP_VER_TOTAL_VENTAS') required this.verTotalVentas})
      : super._();

  factory _$UsuarioAuxDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsuarioAuxDTOImplFromJson(json);

  @override
  @JsonKey(name: 'USUARIO_ID')
  final String id;
  @override
  @JsonKey(name: 'USUARIO')
  final String usuario;
  @override
  @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
  final String? nombreUsuario;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  final String idiomaId;
  @override
  @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
  final String modificarPedido;
  @override
  @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
  final String verTotalVentas;

  @override
  String toString() {
    return 'UsuarioAuxDTO(id: $id, usuario: $usuario, nombreUsuario: $nombreUsuario, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuarioAuxDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.nombreUsuario, nombreUsuario) ||
                other.nombreUsuario == nombreUsuario) &&
            (identical(other.idiomaId, idiomaId) ||
                other.idiomaId == idiomaId) &&
            (identical(other.modificarPedido, modificarPedido) ||
                other.modificarPedido == modificarPedido) &&
            (identical(other.verTotalVentas, verTotalVentas) ||
                other.verTotalVentas == verTotalVentas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, usuario, nombreUsuario,
      idiomaId, modificarPedido, verTotalVentas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuarioAuxDTOImplCopyWith<_$UsuarioAuxDTOImpl> get copyWith =>
      __$$UsuarioAuxDTOImplCopyWithImpl<_$UsuarioAuxDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsuarioAuxDTOImplToJson(
      this,
    );
  }
}

abstract class _UsuarioAuxDTO extends UsuarioAuxDTO {
  const factory _UsuarioAuxDTO(
      {@JsonKey(name: 'USUARIO_ID') required final String id,
      @JsonKey(name: 'USUARIO') required final String usuario,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
      required final String? nombreUsuario,
      @JsonKey(name: 'IDIOMA_ID') required final String idiomaId,
      @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
      required final String modificarPedido,
      @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
      required final String verTotalVentas}) = _$UsuarioAuxDTOImpl;
  const _UsuarioAuxDTO._() : super._();

  factory _UsuarioAuxDTO.fromJson(Map<String, dynamic> json) =
      _$UsuarioAuxDTOImpl.fromJson;

  @override
  @JsonKey(name: 'USUARIO_ID')
  String get id;
  @override
  @JsonKey(name: 'USUARIO')
  String get usuario;
  @override
  @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
  String? get nombreUsuario;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId;
  @override
  @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
  String get modificarPedido;
  @override
  @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
  String get verTotalVentas;
  @override
  @JsonKey(ignore: true)
  _$$UsuarioAuxDTOImplCopyWith<_$UsuarioAuxDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
