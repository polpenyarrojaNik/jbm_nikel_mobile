import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_empresa_iva_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_grupo_neto_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_precio_tarifa_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/descuento_general_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_descuento_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_grupo_neto_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_precio_neto_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';

const kTestDatabaseFile = 'test/resources/jbm.sqlite';
const kEmpresaId = 'EMPRESA01';
const kClienteId = 'CLIENTE01';
const kArticuloId = 'ARTICULO01';
const kDivisaId = 'EU';
const kTarifaId = 'TAR01';
const kGrupoNetoId = 'GN01';
final kDateTime = DateTime(2022, 10, 1);
final kClienteDTO = ClienteDTO(
  id: kClienteId,
  nombreFiscal: 'Nombre Cliente Test',
  nombreCliente: 'Nombre Fiscal Cliente Test',
  empresaId: kEmpresaId,
  iva: 0,
  divisaId: kDivisaId,
  tipoCalculoPrecio: 'M',
  descuentoProntoPago: 0,
  riesgoConcedidoInterno: 150000.0,
  riesgoConcedidoCoafe: 0.0,
  lastUpdated: kDateTime,
  latitudFiscal: 0,
  longitudFiscal: 0,
  margenAnyoActual: 0,
  margenAnyoAnterior: 0,
  margenHaceDosAnyos: 0,
  porcentajeAbonos: 0,
  porcentajeGarantias: 0,
  ventasAnyoActual: 0,
  ventasAnyoAnterior: 0,
  ventasHaceDosAnyos: 0,
);

final kArticuloDTO = ArticuloDTO(
  id: kArticuloId,
  descripcionES: 'Descripción Articulo Test',
  ventaMinimo: 1,
  ventaMultiplo: 1,
  unidadesSubcaja: 5,
  unidadesCaja: 10,
  unidadesPalet: 100,
  activoWeb: 'S',
  activoApp: 'S',
  enCatalogo: 'S',
  descatalogado: 'N',
  pesoKg: 1,
  largoCm: 10,
  anchoCm: 10,
  altoCm: 10,
  ventasActual: 0,
  ventasAnterior: 0,
  stockDisponible: 0,
  lastUpdated: kDateTime,
  comprasEntregaCantidad1: 0,
  comprasEntregaCantidad2: 0,
  comprasEntregaCantidad3: 0,
  comprasEntregaCantidadMas3: 0,
);

final kArticuloEmpresaIvaDTO = ArticuloEmpresaIvaDTO(
  articuloId: kArticuloId,
  empresaId: kEmpresaId,
  iva: 0,
  lastUpdated: kDateTime,
);

final kArticuloPrecioTarifaDTO = ArticuloPrecioTarifaDTO(
  articuloId: kArticuloId,
  cantidadDesde: 1,
  divisaId: kDivisaId,
  precio: 0,
  tarifaId: kTarifaId,
  tarifaDescripcion: 'Descripcion Tarifa Test',
  tipoPrecio: 1,
  lastUpdated: kDateTime,
);

const kUsuario = Usuario(
    id: 'TEST',
    usuario: 'TEST',
    contrasenya: '1234',
    provisionalToken: 'TEST-TOKEN',
    test: true);

final kArticuloGrupoNetoDTO = ArticuloGrupoNetoDTO(
  articuloId: kArticuloId,
  grupoNetoId: kGrupoNetoId,
  grupoNetoDescripcion: 'Grupo Neto Test 01',
  cantidadDesde: 1,
  precio: 0,
  divisaId: kDivisaId,
  tipoPrecio: 1,
  lastUpdated: kDateTime,
);

final kClienteGrupoNetoDTO = ClienteGrupoNetoDTO(
  clienteId: kClienteId,
  grupoNetoId: kGrupoNetoId,
  grupoNetoDescripcion: 'Grupo Neto Test 01',
  lastUpdated: kDateTime,
);

final kClientePrecioNetoDTO = ClientePrecioNetoDTO(
  clienteId: kClienteId,
  articuloId: kArticuloId,
  cantidadDesde: 1,
  precio: 5,
  tipoPrecio: 1,
  lastUpdated: kDateTime,
);

const kDescuentoGeneralId = 'DESGEN01';
const kFamiliaId = 'FAM01';
const kSubfamiliaId = 'SUBFAM01';
final kDescuentoGeneralDTO = DescuentoGeneralDTO(
  descuentoGeneralId: kDescuentoGeneralId,
  articuloId: kArticuloId,
  familiaId: kFamiliaId,
  subfamiliaId: kSubfamiliaId,
  cantidadDesde: 1,
  descuento: 0,
  lastUpdated: kDateTime,
);

final kClienteDescuentoDTO = ClienteDescuentoDTO(
  clienteId: kClienteId,
  articuloId: kArticuloId,
  familiaId: kFamiliaId,
  subfamiliaId: kSubfamiliaId,
  cantidadDesde: 1,
  descuento: 0,
  lastUpdated: kDateTime,
);
