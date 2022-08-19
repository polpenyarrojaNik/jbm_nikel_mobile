// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDTO _$$_CustomerDTOFromJson(Map<String, dynamic> json) =>
    _$_CustomerDTO(
      id: json['CLIENTE_ID'] as String,
      customerName: json['NOMBRE'] as String?,
      nif: json['NIF'] as String?,
      fiscalName: json['NOMBRE_FISCAL'] as String?,
      fiscalAddress1: json['DIRECCION_FISCAL1'] as String?,
      fiscalAddress2: json['DIRECCION_FISCAL2'] as String?,
      fiscalZipCode: json['CODIGO_POSTAL_FISCAL'] as String?,
      fiscalCity: json['POBLACION_FISCAL1'] as String?,
      fiscalCountryId: json['PAIS_ID_FISCAL'] as String?,
      fiscalState: json['PROVINCIA_FISCAL'] as String?,
      fiscalLatitude: (json['LATITUD_FISCAL'] as num?)?.toDouble(),
      fiscalLongitude: (json['LONGITUD_FISCAL'] as num?)?.toDouble(),
      companyId: json['EMPRESA_ID'] as String,
      especialVAT: (json['IVA_ESPECIAL'] as num?)?.toDouble(),
      exemptVat: json['IVA_EXENTO'] as String?,
      currentYearSales: (json['VENTAS_ANYO_ACTUAL'] as num?)?.toDouble(),
      previousYearSales: (json['VENTAS_ANYO_ANTERIOR'] as num?)?.toDouble(),
      salesTwoYearsAgo: (json['VENTAS_HACE_DOS_ANYOS'] as num?)?.toDouble(),
      currentYearMargin: (json['MARGEN_ANYO_ACTUAL'] as num?)?.toDouble(),
      previousYearMargin: (json['MARGEN_ANYO_ANTERIOR'] as num?)?.toDouble(),
      marginTwoYearsAgo: (json['MARGEN_HACE_DOS_ANYOS'] as num?)?.toDouble(),
      paymentPercent: (json['PORCENTAJE_ABONOS'] as num?)?.toDouble(),
      warrantyPercent: (json['PORCENTAJE_GARANTIAS'] as num?)?.toDouble(),
      shoppingCenterName: json['CENTRAL_COMPRAS_NOMBRE'] as String?,
      urlWebsite: json['URL_WEB'] as String?,
      divisaId: json['DIVISA_ID'] as String?,
      rateId: json['TARIFA_ID'] as String?,
      rateDescription: json['TARIFA_DESCRIPCION'] as String?,
      generalDiscount: json['DESCUENTO_GENERAL_ID'] as String?,
      generalDiscountDescription:
          json['DESCUENTO_GENERAL_DESCRIPCION'] as String?,
      priceCalculationType: json['TIPO_CALCULO_PRECIO'] as String,
      collectionTermId: json['PLAZO_COBRO_ID'] as String?,
      collectionMethodId: json['METODO_COBRO_ID'] as String?,
      promptPaymentDiscount: (json['DESCUENTO_PRONTO_PAGO'] as num).toDouble(),
      internalGrantedRisk: (json['RIESGO_CONCEDIDO_INTERNO'] as num).toDouble(),
      internalGrantedRiskDate: json['RIESGO_CONCEDIDO_INTERNO_FECHA'] == null
          ? null
          : DateTime.parse(json['RIESGO_CONCEDIDO_INTERNO_FECHA'] as String),
      cofaceGrantedRisk: (json['RIESGO_CONCEDIDO_COFACE'] as num).toDouble(),
      cofaceGrantedRiskDate: json['RIESGO_CONCEDIDO_COFACE_FECHA'] == null
          ? null
          : DateTime.parse(json['RIESGO_CONCEDIDO_COFACE_FECHA'] as String),
      riskGranted: (json['RIESGO_CONCEDIDO'] as num?)?.toDouble(),
      riskPendingCollectionDue:
          (json['RIESGO_PDTE_COBRO_VENCIDO_CLIENTE'] as num?)?.toDouble(),
      riskPendingColleectionNotDue:
          (json['RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE'] as num?)?.toDouble(),
      riskPendingToServe:
          (json['RIESGO_PDTE_SERVIR_CLIENTE'] as num?)?.toDouble(),
      riskPendingBilling:
          (json['RIESGO_PDTE_FACTURAR_CLIENTE'] as num?)?.toDouble(),
      internalRemarks: json['OBSERVACIONES_INTERNAS'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_CustomerDTOToJson(_$_CustomerDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.id,
      'NOMBRE': instance.customerName,
      'NIF': instance.nif,
      'NOMBRE_FISCAL': instance.fiscalName,
      'DIRECCION_FISCAL1': instance.fiscalAddress1,
      'DIRECCION_FISCAL2': instance.fiscalAddress2,
      'CODIGO_POSTAL_FISCAL': instance.fiscalZipCode,
      'POBLACION_FISCAL1': instance.fiscalCity,
      'PAIS_ID_FISCAL': instance.fiscalCountryId,
      'PROVINCIA_FISCAL': instance.fiscalState,
      'LATITUD_FISCAL': instance.fiscalLatitude,
      'LONGITUD_FISCAL': instance.fiscalLongitude,
      'EMPRESA_ID': instance.companyId,
      'IVA_ESPECIAL': instance.especialVAT,
      'IVA_EXENTO': instance.exemptVat,
      'VENTAS_ANYO_ACTUAL': instance.currentYearSales,
      'VENTAS_ANYO_ANTERIOR': instance.previousYearSales,
      'VENTAS_HACE_DOS_ANYOS': instance.salesTwoYearsAgo,
      'MARGEN_ANYO_ACTUAL': instance.currentYearMargin,
      'MARGEN_ANYO_ANTERIOR': instance.previousYearMargin,
      'MARGEN_HACE_DOS_ANYOS': instance.marginTwoYearsAgo,
      'PORCENTAJE_ABONOS': instance.paymentPercent,
      'PORCENTAJE_GARANTIAS': instance.warrantyPercent,
      'CENTRAL_COMPRAS_NOMBRE': instance.shoppingCenterName,
      'URL_WEB': instance.urlWebsite,
      'DIVISA_ID': instance.divisaId,
      'TARIFA_ID': instance.rateId,
      'TARIFA_DESCRIPCION': instance.rateDescription,
      'DESCUENTO_GENERAL_ID': instance.generalDiscount,
      'DESCUENTO_GENERAL_DESCRIPCION': instance.generalDiscountDescription,
      'TIPO_CALCULO_PRECIO': instance.priceCalculationType,
      'PLAZO_COBRO_ID': instance.collectionTermId,
      'METODO_COBRO_ID': instance.collectionMethodId,
      'DESCUENTO_PRONTO_PAGO': instance.promptPaymentDiscount,
      'RIESGO_CONCEDIDO_INTERNO': instance.internalGrantedRisk,
      'RIESGO_CONCEDIDO_INTERNO_FECHA':
          instance.internalGrantedRiskDate?.toIso8601String(),
      'RIESGO_CONCEDIDO_COFACE': instance.cofaceGrantedRisk,
      'RIESGO_CONCEDIDO_COFACE_FECHA':
          instance.cofaceGrantedRiskDate?.toIso8601String(),
      'RIESGO_CONCEDIDO': instance.riskGranted,
      'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE': instance.riskPendingCollectionDue,
      'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE':
          instance.riskPendingColleectionNotDue,
      'RIESGO_PDTE_SERVIR_CLIENTE': instance.riskPendingToServe,
      'RIESGO_PDTE_FACTURAR_CLIENTE': instance.riskPendingBilling,
      'OBSERVACIONES_INTERNAS': instance.internalRemarks,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
