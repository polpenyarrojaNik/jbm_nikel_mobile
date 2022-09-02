// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class LastSyncDateTableData extends DataClass
    implements Insertable<LastSyncDateTableData> {
  final String id;
  final String? lastSyncDivisa;
  final String? lastSyncCountry;
  final String? lastSyncCollectionMethod;
  final String? lastSyncCollectionTerm;
  final String? lastSyncCustomer;
  final String? lastSyncCustomerUser;
  final String? lastSyncCustomerContact;
  final String? lastSyncCustomerDiscount;
  final String? lastSyncCustomerAddress;
  final String? lastSyncCustomerNetPrice;
  final String? lastSyncCustomerNetGroup;
  final String? lastSyncCustomerPendingPayment;
  final String? lastSyncCustomerRappels;
  final String? lastSyncTopArticles;
  final String? lastSyncSalesOrder;
  final String? lastSyncVisit;
  final String? lastSyncSalesOrderLine;
  final String? lastSyncSalesOrderStatus;
  final String? lastSyncArticle;
  final String? lastSyncFamily;
  final String? lastSyncSubfamily;
  final String? lastSyncArticleNetGroup;
  final String? lastSyncArticleRatePrice;
  final String? lastSyncArticleComponent;
  final String? lastSyncArticleSubstitute;
  final String? lastSyncArticleSpare;
  final String? lastSyncArticleCompanyVat;
  final String? lastSyncStatsCustomerUserSales;
  final String? lastSyncStatsLastPrices;
  const LastSyncDateTableData(
      {required this.id,
      this.lastSyncDivisa,
      this.lastSyncCountry,
      this.lastSyncCollectionMethod,
      this.lastSyncCollectionTerm,
      this.lastSyncCustomer,
      this.lastSyncCustomerUser,
      this.lastSyncCustomerContact,
      this.lastSyncCustomerDiscount,
      this.lastSyncCustomerAddress,
      this.lastSyncCustomerNetPrice,
      this.lastSyncCustomerNetGroup,
      this.lastSyncCustomerPendingPayment,
      this.lastSyncCustomerRappels,
      this.lastSyncTopArticles,
      this.lastSyncSalesOrder,
      this.lastSyncVisit,
      this.lastSyncSalesOrderLine,
      this.lastSyncSalesOrderStatus,
      this.lastSyncArticle,
      this.lastSyncFamily,
      this.lastSyncSubfamily,
      this.lastSyncArticleNetGroup,
      this.lastSyncArticleRatePrice,
      this.lastSyncArticleComponent,
      this.lastSyncArticleSubstitute,
      this.lastSyncArticleSpare,
      this.lastSyncArticleCompanyVat,
      this.lastSyncStatsCustomerUserSales,
      this.lastSyncStatsLastPrices});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || lastSyncDivisa != null) {
      map['LAST_SYNC_DIVISA'] = Variable<String>(lastSyncDivisa);
    }
    if (!nullToAbsent || lastSyncCountry != null) {
      map['LAST_SYNC_COUNTRY'] = Variable<String>(lastSyncCountry);
    }
    if (!nullToAbsent || lastSyncCollectionMethod != null) {
      map['LAST_SYNC_COLLECTION_METHOD'] =
          Variable<String>(lastSyncCollectionMethod);
    }
    if (!nullToAbsent || lastSyncCollectionTerm != null) {
      map['LAST_SYNC_COLLECTION_TERM'] =
          Variable<String>(lastSyncCollectionTerm);
    }
    if (!nullToAbsent || lastSyncCustomer != null) {
      map['LAST_SYNC_CUSTOMER'] = Variable<String>(lastSyncCustomer);
    }
    if (!nullToAbsent || lastSyncCustomerUser != null) {
      map['LAST_SYNC_CUSTOMER_USER'] = Variable<String>(lastSyncCustomerUser);
    }
    if (!nullToAbsent || lastSyncCustomerContact != null) {
      map['LAST_SYNC_CUSTOMER_CONTACT'] =
          Variable<String>(lastSyncCustomerContact);
    }
    if (!nullToAbsent || lastSyncCustomerDiscount != null) {
      map['LAST_SYNC_CUSTOMER_DISCOUNT'] =
          Variable<String>(lastSyncCustomerDiscount);
    }
    if (!nullToAbsent || lastSyncCustomerAddress != null) {
      map['LAST_SYNC_CUSTOMER_ADDRESS'] =
          Variable<String>(lastSyncCustomerAddress);
    }
    if (!nullToAbsent || lastSyncCustomerNetPrice != null) {
      map['LAST_SYNC_CUSTOMER_NET_PRICE'] =
          Variable<String>(lastSyncCustomerNetPrice);
    }
    if (!nullToAbsent || lastSyncCustomerNetGroup != null) {
      map['LAST_SYNC_CUSTOMER_NET_GROUP'] =
          Variable<String>(lastSyncCustomerNetGroup);
    }
    if (!nullToAbsent || lastSyncCustomerPendingPayment != null) {
      map['LAST_SYNC_CUSTOMER_PENDING_PAYMENT'] =
          Variable<String>(lastSyncCustomerPendingPayment);
    }
    if (!nullToAbsent || lastSyncCustomerRappels != null) {
      map['LAST_SYNC_CUSTOMER_RAPPELS'] =
          Variable<String>(lastSyncCustomerRappels);
    }
    if (!nullToAbsent || lastSyncTopArticles != null) {
      map['LAST_SYNC_TOP_ARTICLES'] = Variable<String>(lastSyncTopArticles);
    }
    if (!nullToAbsent || lastSyncSalesOrder != null) {
      map['LAST_SYNC_SALES_ORDER'] = Variable<String>(lastSyncSalesOrder);
    }
    if (!nullToAbsent || lastSyncVisit != null) {
      map['LAST_SYNC_VISIT'] = Variable<String>(lastSyncVisit);
    }
    if (!nullToAbsent || lastSyncSalesOrderLine != null) {
      map['LAST_SYNC_SALES_ORDER_LINE'] =
          Variable<String>(lastSyncSalesOrderLine);
    }
    if (!nullToAbsent || lastSyncSalesOrderStatus != null) {
      map['LAST_SYNC_SALES_ORDER_STATUS'] =
          Variable<String>(lastSyncSalesOrderStatus);
    }
    if (!nullToAbsent || lastSyncArticle != null) {
      map['LAST_SYNC_ARTICLE'] = Variable<String>(lastSyncArticle);
    }
    if (!nullToAbsent || lastSyncFamily != null) {
      map['LAST_SYNC_FAMILY'] = Variable<String>(lastSyncFamily);
    }
    if (!nullToAbsent || lastSyncSubfamily != null) {
      map['LAST_SYNC_SUBFAMILY'] = Variable<String>(lastSyncSubfamily);
    }
    if (!nullToAbsent || lastSyncArticleNetGroup != null) {
      map['LAST_SYNC_ARTICLE_NET_GROUP'] =
          Variable<String>(lastSyncArticleNetGroup);
    }
    if (!nullToAbsent || lastSyncArticleRatePrice != null) {
      map['LAST_SYNC_ARTICLE_RATE_PRICE'] =
          Variable<String>(lastSyncArticleRatePrice);
    }
    if (!nullToAbsent || lastSyncArticleComponent != null) {
      map['LAST_SYNC_ARTICLE_COMPONENT'] =
          Variable<String>(lastSyncArticleComponent);
    }
    if (!nullToAbsent || lastSyncArticleSubstitute != null) {
      map['LAST_SYNC_ARTICLE_SUBSTITUTE'] =
          Variable<String>(lastSyncArticleSubstitute);
    }
    if (!nullToAbsent || lastSyncArticleSpare != null) {
      map['LAST_SYNC_ARTICLE_SPARE'] = Variable<String>(lastSyncArticleSpare);
    }
    if (!nullToAbsent || lastSyncArticleCompanyVat != null) {
      map['LAST_SYNC_ARTICLE_COMPANY_VAT'] =
          Variable<String>(lastSyncArticleCompanyVat);
    }
    if (!nullToAbsent || lastSyncStatsCustomerUserSales != null) {
      map['LAST_SYNC_STATS_CUSTOMER_USER_SALES'] =
          Variable<String>(lastSyncStatsCustomerUserSales);
    }
    if (!nullToAbsent || lastSyncStatsLastPrices != null) {
      map['LAST_SYNC_STATS_LAST_PRICES'] =
          Variable<String>(lastSyncStatsLastPrices);
    }
    return map;
  }

  LastSyncDateTableCompanion toCompanion(bool nullToAbsent) {
    return LastSyncDateTableCompanion(
      id: Value(id),
      lastSyncDivisa: lastSyncDivisa == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncDivisa),
      lastSyncCountry: lastSyncCountry == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCountry),
      lastSyncCollectionMethod: lastSyncCollectionMethod == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCollectionMethod),
      lastSyncCollectionTerm: lastSyncCollectionTerm == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCollectionTerm),
      lastSyncCustomer: lastSyncCustomer == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomer),
      lastSyncCustomerUser: lastSyncCustomerUser == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerUser),
      lastSyncCustomerContact: lastSyncCustomerContact == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerContact),
      lastSyncCustomerDiscount: lastSyncCustomerDiscount == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerDiscount),
      lastSyncCustomerAddress: lastSyncCustomerAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerAddress),
      lastSyncCustomerNetPrice: lastSyncCustomerNetPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerNetPrice),
      lastSyncCustomerNetGroup: lastSyncCustomerNetGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerNetGroup),
      lastSyncCustomerPendingPayment:
          lastSyncCustomerPendingPayment == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncCustomerPendingPayment),
      lastSyncCustomerRappels: lastSyncCustomerRappels == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerRappels),
      lastSyncTopArticles: lastSyncTopArticles == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncTopArticles),
      lastSyncSalesOrder: lastSyncSalesOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSalesOrder),
      lastSyncVisit: lastSyncVisit == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncVisit),
      lastSyncSalesOrderLine: lastSyncSalesOrderLine == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSalesOrderLine),
      lastSyncSalesOrderStatus: lastSyncSalesOrderStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSalesOrderStatus),
      lastSyncArticle: lastSyncArticle == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticle),
      lastSyncFamily: lastSyncFamily == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncFamily),
      lastSyncSubfamily: lastSyncSubfamily == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSubfamily),
      lastSyncArticleNetGroup: lastSyncArticleNetGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleNetGroup),
      lastSyncArticleRatePrice: lastSyncArticleRatePrice == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleRatePrice),
      lastSyncArticleComponent: lastSyncArticleComponent == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleComponent),
      lastSyncArticleSubstitute:
          lastSyncArticleSubstitute == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncArticleSubstitute),
      lastSyncArticleSpare: lastSyncArticleSpare == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleSpare),
      lastSyncArticleCompanyVat:
          lastSyncArticleCompanyVat == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncArticleCompanyVat),
      lastSyncStatsCustomerUserSales:
          lastSyncStatsCustomerUserSales == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncStatsCustomerUserSales),
      lastSyncStatsLastPrices: lastSyncStatsLastPrices == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncStatsLastPrices),
    );
  }

  factory LastSyncDateTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LastSyncDateTableData(
      id: serializer.fromJson<String>(json['id']),
      lastSyncDivisa: serializer.fromJson<String?>(json['lastSyncDivisa']),
      lastSyncCountry: serializer.fromJson<String?>(json['lastSyncCountry']),
      lastSyncCollectionMethod:
          serializer.fromJson<String?>(json['lastSyncCollectionMethod']),
      lastSyncCollectionTerm:
          serializer.fromJson<String?>(json['lastSyncCollectionTerm']),
      lastSyncCustomer: serializer.fromJson<String?>(json['lastSyncCustomer']),
      lastSyncCustomerUser:
          serializer.fromJson<String?>(json['lastSyncCustomerUser']),
      lastSyncCustomerContact:
          serializer.fromJson<String?>(json['lastSyncCustomerContact']),
      lastSyncCustomerDiscount:
          serializer.fromJson<String?>(json['lastSyncCustomerDiscount']),
      lastSyncCustomerAddress:
          serializer.fromJson<String?>(json['lastSyncCustomerAddress']),
      lastSyncCustomerNetPrice:
          serializer.fromJson<String?>(json['lastSyncCustomerNetPrice']),
      lastSyncCustomerNetGroup:
          serializer.fromJson<String?>(json['lastSyncCustomerNetGroup']),
      lastSyncCustomerPendingPayment:
          serializer.fromJson<String?>(json['lastSyncCustomerPendingPayment']),
      lastSyncCustomerRappels:
          serializer.fromJson<String?>(json['lastSyncCustomerRappels']),
      lastSyncTopArticles:
          serializer.fromJson<String?>(json['lastSyncTopArticles']),
      lastSyncSalesOrder:
          serializer.fromJson<String?>(json['lastSyncSalesOrder']),
      lastSyncVisit: serializer.fromJson<String?>(json['lastSyncVisit']),
      lastSyncSalesOrderLine:
          serializer.fromJson<String?>(json['lastSyncSalesOrderLine']),
      lastSyncSalesOrderStatus:
          serializer.fromJson<String?>(json['lastSyncSalesOrderStatus']),
      lastSyncArticle: serializer.fromJson<String?>(json['lastSyncArticle']),
      lastSyncFamily: serializer.fromJson<String?>(json['lastSyncFamily']),
      lastSyncSubfamily:
          serializer.fromJson<String?>(json['lastSyncSubfamily']),
      lastSyncArticleNetGroup:
          serializer.fromJson<String?>(json['lastSyncArticleNetGroup']),
      lastSyncArticleRatePrice:
          serializer.fromJson<String?>(json['lastSyncArticleRatePrice']),
      lastSyncArticleComponent:
          serializer.fromJson<String?>(json['lastSyncArticleComponent']),
      lastSyncArticleSubstitute:
          serializer.fromJson<String?>(json['lastSyncArticleSubstitute']),
      lastSyncArticleSpare:
          serializer.fromJson<String?>(json['lastSyncArticleSpare']),
      lastSyncArticleCompanyVat:
          serializer.fromJson<String?>(json['lastSyncArticleCompanyVat']),
      lastSyncStatsCustomerUserSales:
          serializer.fromJson<String?>(json['lastSyncStatsCustomerUserSales']),
      lastSyncStatsLastPrices:
          serializer.fromJson<String?>(json['lastSyncStatsLastPrices']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastSyncDivisa': serializer.toJson<String?>(lastSyncDivisa),
      'lastSyncCountry': serializer.toJson<String?>(lastSyncCountry),
      'lastSyncCollectionMethod':
          serializer.toJson<String?>(lastSyncCollectionMethod),
      'lastSyncCollectionTerm':
          serializer.toJson<String?>(lastSyncCollectionTerm),
      'lastSyncCustomer': serializer.toJson<String?>(lastSyncCustomer),
      'lastSyncCustomerUser': serializer.toJson<String?>(lastSyncCustomerUser),
      'lastSyncCustomerContact':
          serializer.toJson<String?>(lastSyncCustomerContact),
      'lastSyncCustomerDiscount':
          serializer.toJson<String?>(lastSyncCustomerDiscount),
      'lastSyncCustomerAddress':
          serializer.toJson<String?>(lastSyncCustomerAddress),
      'lastSyncCustomerNetPrice':
          serializer.toJson<String?>(lastSyncCustomerNetPrice),
      'lastSyncCustomerNetGroup':
          serializer.toJson<String?>(lastSyncCustomerNetGroup),
      'lastSyncCustomerPendingPayment':
          serializer.toJson<String?>(lastSyncCustomerPendingPayment),
      'lastSyncCustomerRappels':
          serializer.toJson<String?>(lastSyncCustomerRappels),
      'lastSyncTopArticles': serializer.toJson<String?>(lastSyncTopArticles),
      'lastSyncSalesOrder': serializer.toJson<String?>(lastSyncSalesOrder),
      'lastSyncVisit': serializer.toJson<String?>(lastSyncVisit),
      'lastSyncSalesOrderLine':
          serializer.toJson<String?>(lastSyncSalesOrderLine),
      'lastSyncSalesOrderStatus':
          serializer.toJson<String?>(lastSyncSalesOrderStatus),
      'lastSyncArticle': serializer.toJson<String?>(lastSyncArticle),
      'lastSyncFamily': serializer.toJson<String?>(lastSyncFamily),
      'lastSyncSubfamily': serializer.toJson<String?>(lastSyncSubfamily),
      'lastSyncArticleNetGroup':
          serializer.toJson<String?>(lastSyncArticleNetGroup),
      'lastSyncArticleRatePrice':
          serializer.toJson<String?>(lastSyncArticleRatePrice),
      'lastSyncArticleComponent':
          serializer.toJson<String?>(lastSyncArticleComponent),
      'lastSyncArticleSubstitute':
          serializer.toJson<String?>(lastSyncArticleSubstitute),
      'lastSyncArticleSpare': serializer.toJson<String?>(lastSyncArticleSpare),
      'lastSyncArticleCompanyVat':
          serializer.toJson<String?>(lastSyncArticleCompanyVat),
      'lastSyncStatsCustomerUserSales':
          serializer.toJson<String?>(lastSyncStatsCustomerUserSales),
      'lastSyncStatsLastPrices':
          serializer.toJson<String?>(lastSyncStatsLastPrices),
    };
  }

  LastSyncDateTableData copyWith(
          {String? id,
          Value<String?> lastSyncDivisa = const Value.absent(),
          Value<String?> lastSyncCountry = const Value.absent(),
          Value<String?> lastSyncCollectionMethod = const Value.absent(),
          Value<String?> lastSyncCollectionTerm = const Value.absent(),
          Value<String?> lastSyncCustomer = const Value.absent(),
          Value<String?> lastSyncCustomerUser = const Value.absent(),
          Value<String?> lastSyncCustomerContact = const Value.absent(),
          Value<String?> lastSyncCustomerDiscount = const Value.absent(),
          Value<String?> lastSyncCustomerAddress = const Value.absent(),
          Value<String?> lastSyncCustomerNetPrice = const Value.absent(),
          Value<String?> lastSyncCustomerNetGroup = const Value.absent(),
          Value<String?> lastSyncCustomerPendingPayment = const Value.absent(),
          Value<String?> lastSyncCustomerRappels = const Value.absent(),
          Value<String?> lastSyncTopArticles = const Value.absent(),
          Value<String?> lastSyncSalesOrder = const Value.absent(),
          Value<String?> lastSyncVisit = const Value.absent(),
          Value<String?> lastSyncSalesOrderLine = const Value.absent(),
          Value<String?> lastSyncSalesOrderStatus = const Value.absent(),
          Value<String?> lastSyncArticle = const Value.absent(),
          Value<String?> lastSyncFamily = const Value.absent(),
          Value<String?> lastSyncSubfamily = const Value.absent(),
          Value<String?> lastSyncArticleNetGroup = const Value.absent(),
          Value<String?> lastSyncArticleRatePrice = const Value.absent(),
          Value<String?> lastSyncArticleComponent = const Value.absent(),
          Value<String?> lastSyncArticleSubstitute = const Value.absent(),
          Value<String?> lastSyncArticleSpare = const Value.absent(),
          Value<String?> lastSyncArticleCompanyVat = const Value.absent(),
          Value<String?> lastSyncStatsCustomerUserSales = const Value.absent(),
          Value<String?> lastSyncStatsLastPrices = const Value.absent()}) =>
      LastSyncDateTableData(
        id: id ?? this.id,
        lastSyncDivisa:
            lastSyncDivisa.present ? lastSyncDivisa.value : this.lastSyncDivisa,
        lastSyncCountry: lastSyncCountry.present
            ? lastSyncCountry.value
            : this.lastSyncCountry,
        lastSyncCollectionMethod: lastSyncCollectionMethod.present
            ? lastSyncCollectionMethod.value
            : this.lastSyncCollectionMethod,
        lastSyncCollectionTerm: lastSyncCollectionTerm.present
            ? lastSyncCollectionTerm.value
            : this.lastSyncCollectionTerm,
        lastSyncCustomer: lastSyncCustomer.present
            ? lastSyncCustomer.value
            : this.lastSyncCustomer,
        lastSyncCustomerUser: lastSyncCustomerUser.present
            ? lastSyncCustomerUser.value
            : this.lastSyncCustomerUser,
        lastSyncCustomerContact: lastSyncCustomerContact.present
            ? lastSyncCustomerContact.value
            : this.lastSyncCustomerContact,
        lastSyncCustomerDiscount: lastSyncCustomerDiscount.present
            ? lastSyncCustomerDiscount.value
            : this.lastSyncCustomerDiscount,
        lastSyncCustomerAddress: lastSyncCustomerAddress.present
            ? lastSyncCustomerAddress.value
            : this.lastSyncCustomerAddress,
        lastSyncCustomerNetPrice: lastSyncCustomerNetPrice.present
            ? lastSyncCustomerNetPrice.value
            : this.lastSyncCustomerNetPrice,
        lastSyncCustomerNetGroup: lastSyncCustomerNetGroup.present
            ? lastSyncCustomerNetGroup.value
            : this.lastSyncCustomerNetGroup,
        lastSyncCustomerPendingPayment: lastSyncCustomerPendingPayment.present
            ? lastSyncCustomerPendingPayment.value
            : this.lastSyncCustomerPendingPayment,
        lastSyncCustomerRappels: lastSyncCustomerRappels.present
            ? lastSyncCustomerRappels.value
            : this.lastSyncCustomerRappels,
        lastSyncTopArticles: lastSyncTopArticles.present
            ? lastSyncTopArticles.value
            : this.lastSyncTopArticles,
        lastSyncSalesOrder: lastSyncSalesOrder.present
            ? lastSyncSalesOrder.value
            : this.lastSyncSalesOrder,
        lastSyncVisit:
            lastSyncVisit.present ? lastSyncVisit.value : this.lastSyncVisit,
        lastSyncSalesOrderLine: lastSyncSalesOrderLine.present
            ? lastSyncSalesOrderLine.value
            : this.lastSyncSalesOrderLine,
        lastSyncSalesOrderStatus: lastSyncSalesOrderStatus.present
            ? lastSyncSalesOrderStatus.value
            : this.lastSyncSalesOrderStatus,
        lastSyncArticle: lastSyncArticle.present
            ? lastSyncArticle.value
            : this.lastSyncArticle,
        lastSyncFamily:
            lastSyncFamily.present ? lastSyncFamily.value : this.lastSyncFamily,
        lastSyncSubfamily: lastSyncSubfamily.present
            ? lastSyncSubfamily.value
            : this.lastSyncSubfamily,
        lastSyncArticleNetGroup: lastSyncArticleNetGroup.present
            ? lastSyncArticleNetGroup.value
            : this.lastSyncArticleNetGroup,
        lastSyncArticleRatePrice: lastSyncArticleRatePrice.present
            ? lastSyncArticleRatePrice.value
            : this.lastSyncArticleRatePrice,
        lastSyncArticleComponent: lastSyncArticleComponent.present
            ? lastSyncArticleComponent.value
            : this.lastSyncArticleComponent,
        lastSyncArticleSubstitute: lastSyncArticleSubstitute.present
            ? lastSyncArticleSubstitute.value
            : this.lastSyncArticleSubstitute,
        lastSyncArticleSpare: lastSyncArticleSpare.present
            ? lastSyncArticleSpare.value
            : this.lastSyncArticleSpare,
        lastSyncArticleCompanyVat: lastSyncArticleCompanyVat.present
            ? lastSyncArticleCompanyVat.value
            : this.lastSyncArticleCompanyVat,
        lastSyncStatsCustomerUserSales: lastSyncStatsCustomerUserSales.present
            ? lastSyncStatsCustomerUserSales.value
            : this.lastSyncStatsCustomerUserSales,
        lastSyncStatsLastPrices: lastSyncStatsLastPrices.present
            ? lastSyncStatsLastPrices.value
            : this.lastSyncStatsLastPrices,
      );
  @override
  String toString() {
    return (StringBuffer('LastSyncDateTableData(')
          ..write('id: $id, ')
          ..write('lastSyncDivisa: $lastSyncDivisa, ')
          ..write('lastSyncCountry: $lastSyncCountry, ')
          ..write('lastSyncCollectionMethod: $lastSyncCollectionMethod, ')
          ..write('lastSyncCollectionTerm: $lastSyncCollectionTerm, ')
          ..write('lastSyncCustomer: $lastSyncCustomer, ')
          ..write('lastSyncCustomerUser: $lastSyncCustomerUser, ')
          ..write('lastSyncCustomerContact: $lastSyncCustomerContact, ')
          ..write('lastSyncCustomerDiscount: $lastSyncCustomerDiscount, ')
          ..write('lastSyncCustomerAddress: $lastSyncCustomerAddress, ')
          ..write('lastSyncCustomerNetPrice: $lastSyncCustomerNetPrice, ')
          ..write('lastSyncCustomerNetGroup: $lastSyncCustomerNetGroup, ')
          ..write(
              'lastSyncCustomerPendingPayment: $lastSyncCustomerPendingPayment, ')
          ..write('lastSyncCustomerRappels: $lastSyncCustomerRappels, ')
          ..write('lastSyncTopArticles: $lastSyncTopArticles, ')
          ..write('lastSyncSalesOrder: $lastSyncSalesOrder, ')
          ..write('lastSyncVisit: $lastSyncVisit, ')
          ..write('lastSyncSalesOrderLine: $lastSyncSalesOrderLine, ')
          ..write('lastSyncSalesOrderStatus: $lastSyncSalesOrderStatus, ')
          ..write('lastSyncArticle: $lastSyncArticle, ')
          ..write('lastSyncFamily: $lastSyncFamily, ')
          ..write('lastSyncSubfamily: $lastSyncSubfamily, ')
          ..write('lastSyncArticleNetGroup: $lastSyncArticleNetGroup, ')
          ..write('lastSyncArticleRatePrice: $lastSyncArticleRatePrice, ')
          ..write('lastSyncArticleComponent: $lastSyncArticleComponent, ')
          ..write('lastSyncArticleSubstitute: $lastSyncArticleSubstitute, ')
          ..write('lastSyncArticleSpare: $lastSyncArticleSpare, ')
          ..write('lastSyncArticleCompanyVat: $lastSyncArticleCompanyVat, ')
          ..write(
              'lastSyncStatsCustomerUserSales: $lastSyncStatsCustomerUserSales, ')
          ..write('lastSyncStatsLastPrices: $lastSyncStatsLastPrices')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        lastSyncDivisa,
        lastSyncCountry,
        lastSyncCollectionMethod,
        lastSyncCollectionTerm,
        lastSyncCustomer,
        lastSyncCustomerUser,
        lastSyncCustomerContact,
        lastSyncCustomerDiscount,
        lastSyncCustomerAddress,
        lastSyncCustomerNetPrice,
        lastSyncCustomerNetGroup,
        lastSyncCustomerPendingPayment,
        lastSyncCustomerRappels,
        lastSyncTopArticles,
        lastSyncSalesOrder,
        lastSyncVisit,
        lastSyncSalesOrderLine,
        lastSyncSalesOrderStatus,
        lastSyncArticle,
        lastSyncFamily,
        lastSyncSubfamily,
        lastSyncArticleNetGroup,
        lastSyncArticleRatePrice,
        lastSyncArticleComponent,
        lastSyncArticleSubstitute,
        lastSyncArticleSpare,
        lastSyncArticleCompanyVat,
        lastSyncStatsCustomerUserSales,
        lastSyncStatsLastPrices
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LastSyncDateTableData &&
          other.id == this.id &&
          other.lastSyncDivisa == this.lastSyncDivisa &&
          other.lastSyncCountry == this.lastSyncCountry &&
          other.lastSyncCollectionMethod == this.lastSyncCollectionMethod &&
          other.lastSyncCollectionTerm == this.lastSyncCollectionTerm &&
          other.lastSyncCustomer == this.lastSyncCustomer &&
          other.lastSyncCustomerUser == this.lastSyncCustomerUser &&
          other.lastSyncCustomerContact == this.lastSyncCustomerContact &&
          other.lastSyncCustomerDiscount == this.lastSyncCustomerDiscount &&
          other.lastSyncCustomerAddress == this.lastSyncCustomerAddress &&
          other.lastSyncCustomerNetPrice == this.lastSyncCustomerNetPrice &&
          other.lastSyncCustomerNetGroup == this.lastSyncCustomerNetGroup &&
          other.lastSyncCustomerPendingPayment ==
              this.lastSyncCustomerPendingPayment &&
          other.lastSyncCustomerRappels == this.lastSyncCustomerRappels &&
          other.lastSyncTopArticles == this.lastSyncTopArticles &&
          other.lastSyncSalesOrder == this.lastSyncSalesOrder &&
          other.lastSyncVisit == this.lastSyncVisit &&
          other.lastSyncSalesOrderLine == this.lastSyncSalesOrderLine &&
          other.lastSyncSalesOrderStatus == this.lastSyncSalesOrderStatus &&
          other.lastSyncArticle == this.lastSyncArticle &&
          other.lastSyncFamily == this.lastSyncFamily &&
          other.lastSyncSubfamily == this.lastSyncSubfamily &&
          other.lastSyncArticleNetGroup == this.lastSyncArticleNetGroup &&
          other.lastSyncArticleRatePrice == this.lastSyncArticleRatePrice &&
          other.lastSyncArticleComponent == this.lastSyncArticleComponent &&
          other.lastSyncArticleSubstitute == this.lastSyncArticleSubstitute &&
          other.lastSyncArticleSpare == this.lastSyncArticleSpare &&
          other.lastSyncArticleCompanyVat == this.lastSyncArticleCompanyVat &&
          other.lastSyncStatsCustomerUserSales ==
              this.lastSyncStatsCustomerUserSales &&
          other.lastSyncStatsLastPrices == this.lastSyncStatsLastPrices);
}

class LastSyncDateTableCompanion
    extends UpdateCompanion<LastSyncDateTableData> {
  final Value<String> id;
  final Value<String?> lastSyncDivisa;
  final Value<String?> lastSyncCountry;
  final Value<String?> lastSyncCollectionMethod;
  final Value<String?> lastSyncCollectionTerm;
  final Value<String?> lastSyncCustomer;
  final Value<String?> lastSyncCustomerUser;
  final Value<String?> lastSyncCustomerContact;
  final Value<String?> lastSyncCustomerDiscount;
  final Value<String?> lastSyncCustomerAddress;
  final Value<String?> lastSyncCustomerNetPrice;
  final Value<String?> lastSyncCustomerNetGroup;
  final Value<String?> lastSyncCustomerPendingPayment;
  final Value<String?> lastSyncCustomerRappels;
  final Value<String?> lastSyncTopArticles;
  final Value<String?> lastSyncSalesOrder;
  final Value<String?> lastSyncVisit;
  final Value<String?> lastSyncSalesOrderLine;
  final Value<String?> lastSyncSalesOrderStatus;
  final Value<String?> lastSyncArticle;
  final Value<String?> lastSyncFamily;
  final Value<String?> lastSyncSubfamily;
  final Value<String?> lastSyncArticleNetGroup;
  final Value<String?> lastSyncArticleRatePrice;
  final Value<String?> lastSyncArticleComponent;
  final Value<String?> lastSyncArticleSubstitute;
  final Value<String?> lastSyncArticleSpare;
  final Value<String?> lastSyncArticleCompanyVat;
  final Value<String?> lastSyncStatsCustomerUserSales;
  final Value<String?> lastSyncStatsLastPrices;
  const LastSyncDateTableCompanion({
    this.id = const Value.absent(),
    this.lastSyncDivisa = const Value.absent(),
    this.lastSyncCountry = const Value.absent(),
    this.lastSyncCollectionMethod = const Value.absent(),
    this.lastSyncCollectionTerm = const Value.absent(),
    this.lastSyncCustomer = const Value.absent(),
    this.lastSyncCustomerUser = const Value.absent(),
    this.lastSyncCustomerContact = const Value.absent(),
    this.lastSyncCustomerDiscount = const Value.absent(),
    this.lastSyncCustomerAddress = const Value.absent(),
    this.lastSyncCustomerNetPrice = const Value.absent(),
    this.lastSyncCustomerNetGroup = const Value.absent(),
    this.lastSyncCustomerPendingPayment = const Value.absent(),
    this.lastSyncCustomerRappels = const Value.absent(),
    this.lastSyncTopArticles = const Value.absent(),
    this.lastSyncSalesOrder = const Value.absent(),
    this.lastSyncVisit = const Value.absent(),
    this.lastSyncSalesOrderLine = const Value.absent(),
    this.lastSyncSalesOrderStatus = const Value.absent(),
    this.lastSyncArticle = const Value.absent(),
    this.lastSyncFamily = const Value.absent(),
    this.lastSyncSubfamily = const Value.absent(),
    this.lastSyncArticleNetGroup = const Value.absent(),
    this.lastSyncArticleRatePrice = const Value.absent(),
    this.lastSyncArticleComponent = const Value.absent(),
    this.lastSyncArticleSubstitute = const Value.absent(),
    this.lastSyncArticleSpare = const Value.absent(),
    this.lastSyncArticleCompanyVat = const Value.absent(),
    this.lastSyncStatsCustomerUserSales = const Value.absent(),
    this.lastSyncStatsLastPrices = const Value.absent(),
  });
  LastSyncDateTableCompanion.insert({
    required String id,
    this.lastSyncDivisa = const Value.absent(),
    this.lastSyncCountry = const Value.absent(),
    this.lastSyncCollectionMethod = const Value.absent(),
    this.lastSyncCollectionTerm = const Value.absent(),
    this.lastSyncCustomer = const Value.absent(),
    this.lastSyncCustomerUser = const Value.absent(),
    this.lastSyncCustomerContact = const Value.absent(),
    this.lastSyncCustomerDiscount = const Value.absent(),
    this.lastSyncCustomerAddress = const Value.absent(),
    this.lastSyncCustomerNetPrice = const Value.absent(),
    this.lastSyncCustomerNetGroup = const Value.absent(),
    this.lastSyncCustomerPendingPayment = const Value.absent(),
    this.lastSyncCustomerRappels = const Value.absent(),
    this.lastSyncTopArticles = const Value.absent(),
    this.lastSyncSalesOrder = const Value.absent(),
    this.lastSyncVisit = const Value.absent(),
    this.lastSyncSalesOrderLine = const Value.absent(),
    this.lastSyncSalesOrderStatus = const Value.absent(),
    this.lastSyncArticle = const Value.absent(),
    this.lastSyncFamily = const Value.absent(),
    this.lastSyncSubfamily = const Value.absent(),
    this.lastSyncArticleNetGroup = const Value.absent(),
    this.lastSyncArticleRatePrice = const Value.absent(),
    this.lastSyncArticleComponent = const Value.absent(),
    this.lastSyncArticleSubstitute = const Value.absent(),
    this.lastSyncArticleSpare = const Value.absent(),
    this.lastSyncArticleCompanyVat = const Value.absent(),
    this.lastSyncStatsCustomerUserSales = const Value.absent(),
    this.lastSyncStatsLastPrices = const Value.absent(),
  }) : id = Value(id);
  static Insertable<LastSyncDateTableData> custom({
    Expression<String>? id,
    Expression<String>? lastSyncDivisa,
    Expression<String>? lastSyncCountry,
    Expression<String>? lastSyncCollectionMethod,
    Expression<String>? lastSyncCollectionTerm,
    Expression<String>? lastSyncCustomer,
    Expression<String>? lastSyncCustomerUser,
    Expression<String>? lastSyncCustomerContact,
    Expression<String>? lastSyncCustomerDiscount,
    Expression<String>? lastSyncCustomerAddress,
    Expression<String>? lastSyncCustomerNetPrice,
    Expression<String>? lastSyncCustomerNetGroup,
    Expression<String>? lastSyncCustomerPendingPayment,
    Expression<String>? lastSyncCustomerRappels,
    Expression<String>? lastSyncTopArticles,
    Expression<String>? lastSyncSalesOrder,
    Expression<String>? lastSyncVisit,
    Expression<String>? lastSyncSalesOrderLine,
    Expression<String>? lastSyncSalesOrderStatus,
    Expression<String>? lastSyncArticle,
    Expression<String>? lastSyncFamily,
    Expression<String>? lastSyncSubfamily,
    Expression<String>? lastSyncArticleNetGroup,
    Expression<String>? lastSyncArticleRatePrice,
    Expression<String>? lastSyncArticleComponent,
    Expression<String>? lastSyncArticleSubstitute,
    Expression<String>? lastSyncArticleSpare,
    Expression<String>? lastSyncArticleCompanyVat,
    Expression<String>? lastSyncStatsCustomerUserSales,
    Expression<String>? lastSyncStatsLastPrices,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (lastSyncDivisa != null) 'LAST_SYNC_DIVISA': lastSyncDivisa,
      if (lastSyncCountry != null) 'LAST_SYNC_COUNTRY': lastSyncCountry,
      if (lastSyncCollectionMethod != null)
        'LAST_SYNC_COLLECTION_METHOD': lastSyncCollectionMethod,
      if (lastSyncCollectionTerm != null)
        'LAST_SYNC_COLLECTION_TERM': lastSyncCollectionTerm,
      if (lastSyncCustomer != null) 'LAST_SYNC_CUSTOMER': lastSyncCustomer,
      if (lastSyncCustomerUser != null)
        'LAST_SYNC_CUSTOMER_USER': lastSyncCustomerUser,
      if (lastSyncCustomerContact != null)
        'LAST_SYNC_CUSTOMER_CONTACT': lastSyncCustomerContact,
      if (lastSyncCustomerDiscount != null)
        'LAST_SYNC_CUSTOMER_DISCOUNT': lastSyncCustomerDiscount,
      if (lastSyncCustomerAddress != null)
        'LAST_SYNC_CUSTOMER_ADDRESS': lastSyncCustomerAddress,
      if (lastSyncCustomerNetPrice != null)
        'LAST_SYNC_CUSTOMER_NET_PRICE': lastSyncCustomerNetPrice,
      if (lastSyncCustomerNetGroup != null)
        'LAST_SYNC_CUSTOMER_NET_GROUP': lastSyncCustomerNetGroup,
      if (lastSyncCustomerPendingPayment != null)
        'LAST_SYNC_CUSTOMER_PENDING_PAYMENT': lastSyncCustomerPendingPayment,
      if (lastSyncCustomerRappels != null)
        'LAST_SYNC_CUSTOMER_RAPPELS': lastSyncCustomerRappels,
      if (lastSyncTopArticles != null)
        'LAST_SYNC_TOP_ARTICLES': lastSyncTopArticles,
      if (lastSyncSalesOrder != null)
        'LAST_SYNC_SALES_ORDER': lastSyncSalesOrder,
      if (lastSyncVisit != null) 'LAST_SYNC_VISIT': lastSyncVisit,
      if (lastSyncSalesOrderLine != null)
        'LAST_SYNC_SALES_ORDER_LINE': lastSyncSalesOrderLine,
      if (lastSyncSalesOrderStatus != null)
        'LAST_SYNC_SALES_ORDER_STATUS': lastSyncSalesOrderStatus,
      if (lastSyncArticle != null) 'LAST_SYNC_ARTICLE': lastSyncArticle,
      if (lastSyncFamily != null) 'LAST_SYNC_FAMILY': lastSyncFamily,
      if (lastSyncSubfamily != null) 'LAST_SYNC_SUBFAMILY': lastSyncSubfamily,
      if (lastSyncArticleNetGroup != null)
        'LAST_SYNC_ARTICLE_NET_GROUP': lastSyncArticleNetGroup,
      if (lastSyncArticleRatePrice != null)
        'LAST_SYNC_ARTICLE_RATE_PRICE': lastSyncArticleRatePrice,
      if (lastSyncArticleComponent != null)
        'LAST_SYNC_ARTICLE_COMPONENT': lastSyncArticleComponent,
      if (lastSyncArticleSubstitute != null)
        'LAST_SYNC_ARTICLE_SUBSTITUTE': lastSyncArticleSubstitute,
      if (lastSyncArticleSpare != null)
        'LAST_SYNC_ARTICLE_SPARE': lastSyncArticleSpare,
      if (lastSyncArticleCompanyVat != null)
        'LAST_SYNC_ARTICLE_COMPANY_VAT': lastSyncArticleCompanyVat,
      if (lastSyncStatsCustomerUserSales != null)
        'LAST_SYNC_STATS_CUSTOMER_USER_SALES': lastSyncStatsCustomerUserSales,
      if (lastSyncStatsLastPrices != null)
        'LAST_SYNC_STATS_LAST_PRICES': lastSyncStatsLastPrices,
    });
  }

  LastSyncDateTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? lastSyncDivisa,
      Value<String?>? lastSyncCountry,
      Value<String?>? lastSyncCollectionMethod,
      Value<String?>? lastSyncCollectionTerm,
      Value<String?>? lastSyncCustomer,
      Value<String?>? lastSyncCustomerUser,
      Value<String?>? lastSyncCustomerContact,
      Value<String?>? lastSyncCustomerDiscount,
      Value<String?>? lastSyncCustomerAddress,
      Value<String?>? lastSyncCustomerNetPrice,
      Value<String?>? lastSyncCustomerNetGroup,
      Value<String?>? lastSyncCustomerPendingPayment,
      Value<String?>? lastSyncCustomerRappels,
      Value<String?>? lastSyncTopArticles,
      Value<String?>? lastSyncSalesOrder,
      Value<String?>? lastSyncVisit,
      Value<String?>? lastSyncSalesOrderLine,
      Value<String?>? lastSyncSalesOrderStatus,
      Value<String?>? lastSyncArticle,
      Value<String?>? lastSyncFamily,
      Value<String?>? lastSyncSubfamily,
      Value<String?>? lastSyncArticleNetGroup,
      Value<String?>? lastSyncArticleRatePrice,
      Value<String?>? lastSyncArticleComponent,
      Value<String?>? lastSyncArticleSubstitute,
      Value<String?>? lastSyncArticleSpare,
      Value<String?>? lastSyncArticleCompanyVat,
      Value<String?>? lastSyncStatsCustomerUserSales,
      Value<String?>? lastSyncStatsLastPrices}) {
    return LastSyncDateTableCompanion(
      id: id ?? this.id,
      lastSyncDivisa: lastSyncDivisa ?? this.lastSyncDivisa,
      lastSyncCountry: lastSyncCountry ?? this.lastSyncCountry,
      lastSyncCollectionMethod:
          lastSyncCollectionMethod ?? this.lastSyncCollectionMethod,
      lastSyncCollectionTerm:
          lastSyncCollectionTerm ?? this.lastSyncCollectionTerm,
      lastSyncCustomer: lastSyncCustomer ?? this.lastSyncCustomer,
      lastSyncCustomerUser: lastSyncCustomerUser ?? this.lastSyncCustomerUser,
      lastSyncCustomerContact:
          lastSyncCustomerContact ?? this.lastSyncCustomerContact,
      lastSyncCustomerDiscount:
          lastSyncCustomerDiscount ?? this.lastSyncCustomerDiscount,
      lastSyncCustomerAddress:
          lastSyncCustomerAddress ?? this.lastSyncCustomerAddress,
      lastSyncCustomerNetPrice:
          lastSyncCustomerNetPrice ?? this.lastSyncCustomerNetPrice,
      lastSyncCustomerNetGroup:
          lastSyncCustomerNetGroup ?? this.lastSyncCustomerNetGroup,
      lastSyncCustomerPendingPayment:
          lastSyncCustomerPendingPayment ?? this.lastSyncCustomerPendingPayment,
      lastSyncCustomerRappels:
          lastSyncCustomerRappels ?? this.lastSyncCustomerRappels,
      lastSyncTopArticles: lastSyncTopArticles ?? this.lastSyncTopArticles,
      lastSyncSalesOrder: lastSyncSalesOrder ?? this.lastSyncSalesOrder,
      lastSyncVisit: lastSyncVisit ?? this.lastSyncVisit,
      lastSyncSalesOrderLine:
          lastSyncSalesOrderLine ?? this.lastSyncSalesOrderLine,
      lastSyncSalesOrderStatus:
          lastSyncSalesOrderStatus ?? this.lastSyncSalesOrderStatus,
      lastSyncArticle: lastSyncArticle ?? this.lastSyncArticle,
      lastSyncFamily: lastSyncFamily ?? this.lastSyncFamily,
      lastSyncSubfamily: lastSyncSubfamily ?? this.lastSyncSubfamily,
      lastSyncArticleNetGroup:
          lastSyncArticleNetGroup ?? this.lastSyncArticleNetGroup,
      lastSyncArticleRatePrice:
          lastSyncArticleRatePrice ?? this.lastSyncArticleRatePrice,
      lastSyncArticleComponent:
          lastSyncArticleComponent ?? this.lastSyncArticleComponent,
      lastSyncArticleSubstitute:
          lastSyncArticleSubstitute ?? this.lastSyncArticleSubstitute,
      lastSyncArticleSpare: lastSyncArticleSpare ?? this.lastSyncArticleSpare,
      lastSyncArticleCompanyVat:
          lastSyncArticleCompanyVat ?? this.lastSyncArticleCompanyVat,
      lastSyncStatsCustomerUserSales:
          lastSyncStatsCustomerUserSales ?? this.lastSyncStatsCustomerUserSales,
      lastSyncStatsLastPrices:
          lastSyncStatsLastPrices ?? this.lastSyncStatsLastPrices,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (lastSyncDivisa.present) {
      map['LAST_SYNC_DIVISA'] = Variable<String>(lastSyncDivisa.value);
    }
    if (lastSyncCountry.present) {
      map['LAST_SYNC_COUNTRY'] = Variable<String>(lastSyncCountry.value);
    }
    if (lastSyncCollectionMethod.present) {
      map['LAST_SYNC_COLLECTION_METHOD'] =
          Variable<String>(lastSyncCollectionMethod.value);
    }
    if (lastSyncCollectionTerm.present) {
      map['LAST_SYNC_COLLECTION_TERM'] =
          Variable<String>(lastSyncCollectionTerm.value);
    }
    if (lastSyncCustomer.present) {
      map['LAST_SYNC_CUSTOMER'] = Variable<String>(lastSyncCustomer.value);
    }
    if (lastSyncCustomerUser.present) {
      map['LAST_SYNC_CUSTOMER_USER'] =
          Variable<String>(lastSyncCustomerUser.value);
    }
    if (lastSyncCustomerContact.present) {
      map['LAST_SYNC_CUSTOMER_CONTACT'] =
          Variable<String>(lastSyncCustomerContact.value);
    }
    if (lastSyncCustomerDiscount.present) {
      map['LAST_SYNC_CUSTOMER_DISCOUNT'] =
          Variable<String>(lastSyncCustomerDiscount.value);
    }
    if (lastSyncCustomerAddress.present) {
      map['LAST_SYNC_CUSTOMER_ADDRESS'] =
          Variable<String>(lastSyncCustomerAddress.value);
    }
    if (lastSyncCustomerNetPrice.present) {
      map['LAST_SYNC_CUSTOMER_NET_PRICE'] =
          Variable<String>(lastSyncCustomerNetPrice.value);
    }
    if (lastSyncCustomerNetGroup.present) {
      map['LAST_SYNC_CUSTOMER_NET_GROUP'] =
          Variable<String>(lastSyncCustomerNetGroup.value);
    }
    if (lastSyncCustomerPendingPayment.present) {
      map['LAST_SYNC_CUSTOMER_PENDING_PAYMENT'] =
          Variable<String>(lastSyncCustomerPendingPayment.value);
    }
    if (lastSyncCustomerRappels.present) {
      map['LAST_SYNC_CUSTOMER_RAPPELS'] =
          Variable<String>(lastSyncCustomerRappels.value);
    }
    if (lastSyncTopArticles.present) {
      map['LAST_SYNC_TOP_ARTICLES'] =
          Variable<String>(lastSyncTopArticles.value);
    }
    if (lastSyncSalesOrder.present) {
      map['LAST_SYNC_SALES_ORDER'] = Variable<String>(lastSyncSalesOrder.value);
    }
    if (lastSyncVisit.present) {
      map['LAST_SYNC_VISIT'] = Variable<String>(lastSyncVisit.value);
    }
    if (lastSyncSalesOrderLine.present) {
      map['LAST_SYNC_SALES_ORDER_LINE'] =
          Variable<String>(lastSyncSalesOrderLine.value);
    }
    if (lastSyncSalesOrderStatus.present) {
      map['LAST_SYNC_SALES_ORDER_STATUS'] =
          Variable<String>(lastSyncSalesOrderStatus.value);
    }
    if (lastSyncArticle.present) {
      map['LAST_SYNC_ARTICLE'] = Variable<String>(lastSyncArticle.value);
    }
    if (lastSyncFamily.present) {
      map['LAST_SYNC_FAMILY'] = Variable<String>(lastSyncFamily.value);
    }
    if (lastSyncSubfamily.present) {
      map['LAST_SYNC_SUBFAMILY'] = Variable<String>(lastSyncSubfamily.value);
    }
    if (lastSyncArticleNetGroup.present) {
      map['LAST_SYNC_ARTICLE_NET_GROUP'] =
          Variable<String>(lastSyncArticleNetGroup.value);
    }
    if (lastSyncArticleRatePrice.present) {
      map['LAST_SYNC_ARTICLE_RATE_PRICE'] =
          Variable<String>(lastSyncArticleRatePrice.value);
    }
    if (lastSyncArticleComponent.present) {
      map['LAST_SYNC_ARTICLE_COMPONENT'] =
          Variable<String>(lastSyncArticleComponent.value);
    }
    if (lastSyncArticleSubstitute.present) {
      map['LAST_SYNC_ARTICLE_SUBSTITUTE'] =
          Variable<String>(lastSyncArticleSubstitute.value);
    }
    if (lastSyncArticleSpare.present) {
      map['LAST_SYNC_ARTICLE_SPARE'] =
          Variable<String>(lastSyncArticleSpare.value);
    }
    if (lastSyncArticleCompanyVat.present) {
      map['LAST_SYNC_ARTICLE_COMPANY_VAT'] =
          Variable<String>(lastSyncArticleCompanyVat.value);
    }
    if (lastSyncStatsCustomerUserSales.present) {
      map['LAST_SYNC_STATS_CUSTOMER_USER_SALES'] =
          Variable<String>(lastSyncStatsCustomerUserSales.value);
    }
    if (lastSyncStatsLastPrices.present) {
      map['LAST_SYNC_STATS_LAST_PRICES'] =
          Variable<String>(lastSyncStatsLastPrices.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LastSyncDateTableCompanion(')
          ..write('id: $id, ')
          ..write('lastSyncDivisa: $lastSyncDivisa, ')
          ..write('lastSyncCountry: $lastSyncCountry, ')
          ..write('lastSyncCollectionMethod: $lastSyncCollectionMethod, ')
          ..write('lastSyncCollectionTerm: $lastSyncCollectionTerm, ')
          ..write('lastSyncCustomer: $lastSyncCustomer, ')
          ..write('lastSyncCustomerUser: $lastSyncCustomerUser, ')
          ..write('lastSyncCustomerContact: $lastSyncCustomerContact, ')
          ..write('lastSyncCustomerDiscount: $lastSyncCustomerDiscount, ')
          ..write('lastSyncCustomerAddress: $lastSyncCustomerAddress, ')
          ..write('lastSyncCustomerNetPrice: $lastSyncCustomerNetPrice, ')
          ..write('lastSyncCustomerNetGroup: $lastSyncCustomerNetGroup, ')
          ..write(
              'lastSyncCustomerPendingPayment: $lastSyncCustomerPendingPayment, ')
          ..write('lastSyncCustomerRappels: $lastSyncCustomerRappels, ')
          ..write('lastSyncTopArticles: $lastSyncTopArticles, ')
          ..write('lastSyncSalesOrder: $lastSyncSalesOrder, ')
          ..write('lastSyncVisit: $lastSyncVisit, ')
          ..write('lastSyncSalesOrderLine: $lastSyncSalesOrderLine, ')
          ..write('lastSyncSalesOrderStatus: $lastSyncSalesOrderStatus, ')
          ..write('lastSyncArticle: $lastSyncArticle, ')
          ..write('lastSyncFamily: $lastSyncFamily, ')
          ..write('lastSyncSubfamily: $lastSyncSubfamily, ')
          ..write('lastSyncArticleNetGroup: $lastSyncArticleNetGroup, ')
          ..write('lastSyncArticleRatePrice: $lastSyncArticleRatePrice, ')
          ..write('lastSyncArticleComponent: $lastSyncArticleComponent, ')
          ..write('lastSyncArticleSubstitute: $lastSyncArticleSubstitute, ')
          ..write('lastSyncArticleSpare: $lastSyncArticleSpare, ')
          ..write('lastSyncArticleCompanyVat: $lastSyncArticleCompanyVat, ')
          ..write(
              'lastSyncStatsCustomerUserSales: $lastSyncStatsCustomerUserSales, ')
          ..write('lastSyncStatsLastPrices: $lastSyncStatsLastPrices')
          ..write(')'))
        .toString();
  }
}

class $LastSyncDateTableTable extends LastSyncDateTable
    with TableInfo<$LastSyncDateTableTable, LastSyncDateTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LastSyncDateTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _lastSyncDivisaMeta =
      const VerificationMeta('lastSyncDivisa');
  @override
  late final GeneratedColumn<String> lastSyncDivisa = GeneratedColumn<String>(
      'LAST_SYNC_DIVISA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCountryMeta =
      const VerificationMeta('lastSyncCountry');
  @override
  late final GeneratedColumn<String> lastSyncCountry = GeneratedColumn<String>(
      'LAST_SYNC_COUNTRY', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCollectionMethodMeta =
      const VerificationMeta('lastSyncCollectionMethod');
  @override
  late final GeneratedColumn<String> lastSyncCollectionMethod =
      GeneratedColumn<String>('LAST_SYNC_COLLECTION_METHOD', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCollectionTermMeta =
      const VerificationMeta('lastSyncCollectionTerm');
  @override
  late final GeneratedColumn<String> lastSyncCollectionTerm =
      GeneratedColumn<String>('LAST_SYNC_COLLECTION_TERM', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerMeta =
      const VerificationMeta('lastSyncCustomer');
  @override
  late final GeneratedColumn<String> lastSyncCustomer = GeneratedColumn<String>(
      'LAST_SYNC_CUSTOMER', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerUserMeta =
      const VerificationMeta('lastSyncCustomerUser');
  @override
  late final GeneratedColumn<String> lastSyncCustomerUser =
      GeneratedColumn<String>('LAST_SYNC_CUSTOMER_USER', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerContactMeta =
      const VerificationMeta('lastSyncCustomerContact');
  @override
  late final GeneratedColumn<String> lastSyncCustomerContact =
      GeneratedColumn<String>('LAST_SYNC_CUSTOMER_CONTACT', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerDiscountMeta =
      const VerificationMeta('lastSyncCustomerDiscount');
  @override
  late final GeneratedColumn<String> lastSyncCustomerDiscount =
      GeneratedColumn<String>('LAST_SYNC_CUSTOMER_DISCOUNT', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerAddressMeta =
      const VerificationMeta('lastSyncCustomerAddress');
  @override
  late final GeneratedColumn<String> lastSyncCustomerAddress =
      GeneratedColumn<String>('LAST_SYNC_CUSTOMER_ADDRESS', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerNetPriceMeta =
      const VerificationMeta('lastSyncCustomerNetPrice');
  @override
  late final GeneratedColumn<String> lastSyncCustomerNetPrice =
      GeneratedColumn<String>('LAST_SYNC_CUSTOMER_NET_PRICE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerNetGroupMeta =
      const VerificationMeta('lastSyncCustomerNetGroup');
  @override
  late final GeneratedColumn<String> lastSyncCustomerNetGroup =
      GeneratedColumn<String>('LAST_SYNC_CUSTOMER_NET_GROUP', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerPendingPaymentMeta =
      const VerificationMeta('lastSyncCustomerPendingPayment');
  @override
  late final GeneratedColumn<String> lastSyncCustomerPendingPayment =
      GeneratedColumn<String>(
          'LAST_SYNC_CUSTOMER_PENDING_PAYMENT', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerRappelsMeta =
      const VerificationMeta('lastSyncCustomerRappels');
  @override
  late final GeneratedColumn<String> lastSyncCustomerRappels =
      GeneratedColumn<String>('LAST_SYNC_CUSTOMER_RAPPELS', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncTopArticlesMeta =
      const VerificationMeta('lastSyncTopArticles');
  @override
  late final GeneratedColumn<String> lastSyncTopArticles =
      GeneratedColumn<String>('LAST_SYNC_TOP_ARTICLES', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncSalesOrderMeta =
      const VerificationMeta('lastSyncSalesOrder');
  @override
  late final GeneratedColumn<String> lastSyncSalesOrder =
      GeneratedColumn<String>('LAST_SYNC_SALES_ORDER', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncVisitMeta =
      const VerificationMeta('lastSyncVisit');
  @override
  late final GeneratedColumn<String> lastSyncVisit = GeneratedColumn<String>(
      'LAST_SYNC_VISIT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncSalesOrderLineMeta =
      const VerificationMeta('lastSyncSalesOrderLine');
  @override
  late final GeneratedColumn<String> lastSyncSalesOrderLine =
      GeneratedColumn<String>('LAST_SYNC_SALES_ORDER_LINE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncSalesOrderStatusMeta =
      const VerificationMeta('lastSyncSalesOrderStatus');
  @override
  late final GeneratedColumn<String> lastSyncSalesOrderStatus =
      GeneratedColumn<String>('LAST_SYNC_SALES_ORDER_STATUS', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleMeta =
      const VerificationMeta('lastSyncArticle');
  @override
  late final GeneratedColumn<String> lastSyncArticle = GeneratedColumn<String>(
      'LAST_SYNC_ARTICLE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncFamilyMeta =
      const VerificationMeta('lastSyncFamily');
  @override
  late final GeneratedColumn<String> lastSyncFamily = GeneratedColumn<String>(
      'LAST_SYNC_FAMILY', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncSubfamilyMeta =
      const VerificationMeta('lastSyncSubfamily');
  @override
  late final GeneratedColumn<String> lastSyncSubfamily =
      GeneratedColumn<String>('LAST_SYNC_SUBFAMILY', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleNetGroupMeta =
      const VerificationMeta('lastSyncArticleNetGroup');
  @override
  late final GeneratedColumn<String> lastSyncArticleNetGroup =
      GeneratedColumn<String>('LAST_SYNC_ARTICLE_NET_GROUP', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleRatePriceMeta =
      const VerificationMeta('lastSyncArticleRatePrice');
  @override
  late final GeneratedColumn<String> lastSyncArticleRatePrice =
      GeneratedColumn<String>('LAST_SYNC_ARTICLE_RATE_PRICE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleComponentMeta =
      const VerificationMeta('lastSyncArticleComponent');
  @override
  late final GeneratedColumn<String> lastSyncArticleComponent =
      GeneratedColumn<String>('LAST_SYNC_ARTICLE_COMPONENT', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleSubstituteMeta =
      const VerificationMeta('lastSyncArticleSubstitute');
  @override
  late final GeneratedColumn<String> lastSyncArticleSubstitute =
      GeneratedColumn<String>('LAST_SYNC_ARTICLE_SUBSTITUTE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleSpareMeta =
      const VerificationMeta('lastSyncArticleSpare');
  @override
  late final GeneratedColumn<String> lastSyncArticleSpare =
      GeneratedColumn<String>('LAST_SYNC_ARTICLE_SPARE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleCompanyVatMeta =
      const VerificationMeta('lastSyncArticleCompanyVat');
  @override
  late final GeneratedColumn<String> lastSyncArticleCompanyVat =
      GeneratedColumn<String>(
          'LAST_SYNC_ARTICLE_COMPANY_VAT', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncStatsCustomerUserSalesMeta =
      const VerificationMeta('lastSyncStatsCustomerUserSales');
  @override
  late final GeneratedColumn<String> lastSyncStatsCustomerUserSales =
      GeneratedColumn<String>(
          'LAST_SYNC_STATS_CUSTOMER_USER_SALES', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastSyncStatsLastPricesMeta =
      const VerificationMeta('lastSyncStatsLastPrices');
  @override
  late final GeneratedColumn<String> lastSyncStatsLastPrices =
      GeneratedColumn<String>('LAST_SYNC_STATS_LAST_PRICES', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastSyncDivisa,
        lastSyncCountry,
        lastSyncCollectionMethod,
        lastSyncCollectionTerm,
        lastSyncCustomer,
        lastSyncCustomerUser,
        lastSyncCustomerContact,
        lastSyncCustomerDiscount,
        lastSyncCustomerAddress,
        lastSyncCustomerNetPrice,
        lastSyncCustomerNetGroup,
        lastSyncCustomerPendingPayment,
        lastSyncCustomerRappels,
        lastSyncTopArticles,
        lastSyncSalesOrder,
        lastSyncVisit,
        lastSyncSalesOrderLine,
        lastSyncSalesOrderStatus,
        lastSyncArticle,
        lastSyncFamily,
        lastSyncSubfamily,
        lastSyncArticleNetGroup,
        lastSyncArticleRatePrice,
        lastSyncArticleComponent,
        lastSyncArticleSubstitute,
        lastSyncArticleSpare,
        lastSyncArticleCompanyVat,
        lastSyncStatsCustomerUserSales,
        lastSyncStatsLastPrices
      ];
  @override
  String get aliasedName => _alias ?? 'LAST_SYNC_DATE';
  @override
  String get actualTableName => 'LAST_SYNC_DATE';
  @override
  VerificationContext validateIntegrity(
      Insertable<LastSyncDateTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('LAST_SYNC_DIVISA')) {
      context.handle(
          _lastSyncDivisaMeta,
          lastSyncDivisa.isAcceptableOrUnknown(
              data['LAST_SYNC_DIVISA']!, _lastSyncDivisaMeta));
    }
    if (data.containsKey('LAST_SYNC_COUNTRY')) {
      context.handle(
          _lastSyncCountryMeta,
          lastSyncCountry.isAcceptableOrUnknown(
              data['LAST_SYNC_COUNTRY']!, _lastSyncCountryMeta));
    }
    if (data.containsKey('LAST_SYNC_COLLECTION_METHOD')) {
      context.handle(
          _lastSyncCollectionMethodMeta,
          lastSyncCollectionMethod.isAcceptableOrUnknown(
              data['LAST_SYNC_COLLECTION_METHOD']!,
              _lastSyncCollectionMethodMeta));
    }
    if (data.containsKey('LAST_SYNC_COLLECTION_TERM')) {
      context.handle(
          _lastSyncCollectionTermMeta,
          lastSyncCollectionTerm.isAcceptableOrUnknown(
              data['LAST_SYNC_COLLECTION_TERM']!, _lastSyncCollectionTermMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER')) {
      context.handle(
          _lastSyncCustomerMeta,
          lastSyncCustomer.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER']!, _lastSyncCustomerMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_USER')) {
      context.handle(
          _lastSyncCustomerUserMeta,
          lastSyncCustomerUser.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_USER']!, _lastSyncCustomerUserMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_CONTACT')) {
      context.handle(
          _lastSyncCustomerContactMeta,
          lastSyncCustomerContact.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_CONTACT']!,
              _lastSyncCustomerContactMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_DISCOUNT')) {
      context.handle(
          _lastSyncCustomerDiscountMeta,
          lastSyncCustomerDiscount.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_DISCOUNT']!,
              _lastSyncCustomerDiscountMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_ADDRESS')) {
      context.handle(
          _lastSyncCustomerAddressMeta,
          lastSyncCustomerAddress.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_ADDRESS']!,
              _lastSyncCustomerAddressMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_NET_PRICE')) {
      context.handle(
          _lastSyncCustomerNetPriceMeta,
          lastSyncCustomerNetPrice.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_NET_PRICE']!,
              _lastSyncCustomerNetPriceMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_NET_GROUP')) {
      context.handle(
          _lastSyncCustomerNetGroupMeta,
          lastSyncCustomerNetGroup.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_NET_GROUP']!,
              _lastSyncCustomerNetGroupMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_PENDING_PAYMENT')) {
      context.handle(
          _lastSyncCustomerPendingPaymentMeta,
          lastSyncCustomerPendingPayment.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_PENDING_PAYMENT']!,
              _lastSyncCustomerPendingPaymentMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_RAPPELS')) {
      context.handle(
          _lastSyncCustomerRappelsMeta,
          lastSyncCustomerRappels.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_RAPPELS']!,
              _lastSyncCustomerRappelsMeta));
    }
    if (data.containsKey('LAST_SYNC_TOP_ARTICLES')) {
      context.handle(
          _lastSyncTopArticlesMeta,
          lastSyncTopArticles.isAcceptableOrUnknown(
              data['LAST_SYNC_TOP_ARTICLES']!, _lastSyncTopArticlesMeta));
    }
    if (data.containsKey('LAST_SYNC_SALES_ORDER')) {
      context.handle(
          _lastSyncSalesOrderMeta,
          lastSyncSalesOrder.isAcceptableOrUnknown(
              data['LAST_SYNC_SALES_ORDER']!, _lastSyncSalesOrderMeta));
    }
    if (data.containsKey('LAST_SYNC_VISIT')) {
      context.handle(
          _lastSyncVisitMeta,
          lastSyncVisit.isAcceptableOrUnknown(
              data['LAST_SYNC_VISIT']!, _lastSyncVisitMeta));
    }
    if (data.containsKey('LAST_SYNC_SALES_ORDER_LINE')) {
      context.handle(
          _lastSyncSalesOrderLineMeta,
          lastSyncSalesOrderLine.isAcceptableOrUnknown(
              data['LAST_SYNC_SALES_ORDER_LINE']!,
              _lastSyncSalesOrderLineMeta));
    }
    if (data.containsKey('LAST_SYNC_SALES_ORDER_STATUS')) {
      context.handle(
          _lastSyncSalesOrderStatusMeta,
          lastSyncSalesOrderStatus.isAcceptableOrUnknown(
              data['LAST_SYNC_SALES_ORDER_STATUS']!,
              _lastSyncSalesOrderStatusMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE')) {
      context.handle(
          _lastSyncArticleMeta,
          lastSyncArticle.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE']!, _lastSyncArticleMeta));
    }
    if (data.containsKey('LAST_SYNC_FAMILY')) {
      context.handle(
          _lastSyncFamilyMeta,
          lastSyncFamily.isAcceptableOrUnknown(
              data['LAST_SYNC_FAMILY']!, _lastSyncFamilyMeta));
    }
    if (data.containsKey('LAST_SYNC_SUBFAMILY')) {
      context.handle(
          _lastSyncSubfamilyMeta,
          lastSyncSubfamily.isAcceptableOrUnknown(
              data['LAST_SYNC_SUBFAMILY']!, _lastSyncSubfamilyMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_NET_GROUP')) {
      context.handle(
          _lastSyncArticleNetGroupMeta,
          lastSyncArticleNetGroup.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_NET_GROUP']!,
              _lastSyncArticleNetGroupMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_RATE_PRICE')) {
      context.handle(
          _lastSyncArticleRatePriceMeta,
          lastSyncArticleRatePrice.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_RATE_PRICE']!,
              _lastSyncArticleRatePriceMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_COMPONENT')) {
      context.handle(
          _lastSyncArticleComponentMeta,
          lastSyncArticleComponent.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_COMPONENT']!,
              _lastSyncArticleComponentMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_SUBSTITUTE')) {
      context.handle(
          _lastSyncArticleSubstituteMeta,
          lastSyncArticleSubstitute.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_SUBSTITUTE']!,
              _lastSyncArticleSubstituteMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_SPARE')) {
      context.handle(
          _lastSyncArticleSpareMeta,
          lastSyncArticleSpare.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_SPARE']!, _lastSyncArticleSpareMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_COMPANY_VAT')) {
      context.handle(
          _lastSyncArticleCompanyVatMeta,
          lastSyncArticleCompanyVat.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_COMPANY_VAT']!,
              _lastSyncArticleCompanyVatMeta));
    }
    if (data.containsKey('LAST_SYNC_STATS_CUSTOMER_USER_SALES')) {
      context.handle(
          _lastSyncStatsCustomerUserSalesMeta,
          lastSyncStatsCustomerUserSales.isAcceptableOrUnknown(
              data['LAST_SYNC_STATS_CUSTOMER_USER_SALES']!,
              _lastSyncStatsCustomerUserSalesMeta));
    }
    if (data.containsKey('LAST_SYNC_STATS_LAST_PRICES')) {
      context.handle(
          _lastSyncStatsLastPricesMeta,
          lastSyncStatsLastPrices.isAcceptableOrUnknown(
              data['LAST_SYNC_STATS_LAST_PRICES']!,
              _lastSyncStatsLastPricesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LastSyncDateTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LastSyncDateTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ID'])!,
      lastSyncDivisa: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_DIVISA']),
      lastSyncCountry: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_COUNTRY']),
      lastSyncCollectionMethod: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_COLLECTION_METHOD']),
      lastSyncCollectionTerm: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_COLLECTION_TERM']),
      lastSyncCustomer: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_CUSTOMER']),
      lastSyncCustomerUser: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_USER']),
      lastSyncCustomerContact: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_CONTACT']),
      lastSyncCustomerDiscount: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_DISCOUNT']),
      lastSyncCustomerAddress: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_ADDRESS']),
      lastSyncCustomerNetPrice: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_NET_PRICE']),
      lastSyncCustomerNetGroup: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_NET_GROUP']),
      lastSyncCustomerPendingPayment: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_PENDING_PAYMENT']),
      lastSyncCustomerRappels: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_RAPPELS']),
      lastSyncTopArticles: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_TOP_ARTICLES']),
      lastSyncSalesOrder: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_SALES_ORDER']),
      lastSyncVisit: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_VISIT']),
      lastSyncSalesOrderLine: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_SALES_ORDER_LINE']),
      lastSyncSalesOrderStatus: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_SALES_ORDER_STATUS']),
      lastSyncArticle: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_ARTICLE']),
      lastSyncFamily: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_FAMILY']),
      lastSyncSubfamily: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}LAST_SYNC_SUBFAMILY']),
      lastSyncArticleNetGroup: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_ARTICLE_NET_GROUP']),
      lastSyncArticleRatePrice: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_ARTICLE_RATE_PRICE']),
      lastSyncArticleComponent: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_ARTICLE_COMPONENT']),
      lastSyncArticleSubstitute: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_ARTICLE_SUBSTITUTE']),
      lastSyncArticleSpare: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_ARTICLE_SPARE']),
      lastSyncArticleCompanyVat: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_ARTICLE_COMPANY_VAT']),
      lastSyncStatsCustomerUserSales: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_STATS_CUSTOMER_USER_SALES']),
      lastSyncStatsLastPrices: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}LAST_SYNC_STATS_LAST_PRICES']),
    );
  }

  @override
  $LastSyncDateTableTable createAlias(String alias) {
    return $LastSyncDateTableTable(attachedDatabase, alias);
  }
}

class CountryTableCompanion extends UpdateCompanion<CountryDTO> {
  final Value<String> id;
  final Value<String?> isoCode;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CountryTableCompanion({
    this.id = const Value.absent(),
    this.isoCode = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CountryTableCompanion.insert({
    required String id,
    this.isoCode = const Value.absent(),
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CountryDTO> custom({
    Expression<String>? id,
    Expression<String>? isoCode,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'PAIS_ID': id,
      if (isoCode != null) 'CODIGO_ISO': isoCode,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CountryTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? isoCode,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CountryTableCompanion(
      id: id ?? this.id,
      isoCode: isoCode ?? this.isoCode,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['PAIS_ID'] = Variable<String>(id.value);
    }
    if (isoCode.present) {
      map['CODIGO_ISO'] = Variable<String>(isoCode.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CountryTableCompanion(')
          ..write('id: $id, ')
          ..write('isoCode: $isoCode, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CountryTableTable extends CountryTable
    with TableInfo<$CountryTableTable, CountryDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CountryTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _isoCodeMeta = const VerificationMeta('isoCode');
  @override
  late final GeneratedColumn<String> isoCode = GeneratedColumn<String>(
      'CODIGO_ISO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String> descriptionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        isoCode,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PAISES';
  @override
  String get actualTableName => 'PAISES';
  @override
  VerificationContext validateIntegrity(Insertable<CountryDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PAIS_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PAIS_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('CODIGO_ISO')) {
      context.handle(_isoCodeMeta,
          isoCode.isAcceptableOrUnknown(data['CODIGO_ISO']!, _isoCodeMeta));
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CountryDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CountryDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID'])!,
      isoCode: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_ISO']),
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CountryTableTable createAlias(String alias) {
    return $CountryTableTable(attachedDatabase, alias);
  }
}

class DivisaTableCompanion extends UpdateCompanion<DivisaDTO> {
  final Value<String> id;
  final Value<String> abv;
  final Value<String?> symbol;
  final Value<double?> rounded;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const DivisaTableCompanion({
    this.id = const Value.absent(),
    this.abv = const Value.absent(),
    this.symbol = const Value.absent(),
    this.rounded = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  DivisaTableCompanion.insert({
    required String id,
    required String abv,
    this.symbol = const Value.absent(),
    this.rounded = const Value.absent(),
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        abv = Value(abv),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<DivisaDTO> custom({
    Expression<String>? id,
    Expression<String>? abv,
    Expression<String>? symbol,
    Expression<double>? rounded,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'DIVISA_ID': id,
      if (abv != null) 'ABREVIACION': abv,
      if (symbol != null) 'SIMBOLO': symbol,
      if (rounded != null) 'REDONDEO': rounded,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  DivisaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? abv,
      Value<String?>? symbol,
      Value<double?>? rounded,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return DivisaTableCompanion(
      id: id ?? this.id,
      abv: abv ?? this.abv,
      symbol: symbol ?? this.symbol,
      rounded: rounded ?? this.rounded,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['DIVISA_ID'] = Variable<String>(id.value);
    }
    if (abv.present) {
      map['ABREVIACION'] = Variable<String>(abv.value);
    }
    if (symbol.present) {
      map['SIMBOLO'] = Variable<String>(symbol.value);
    }
    if (rounded.present) {
      map['REDONDEO'] = Variable<double>(rounded.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DivisaTableCompanion(')
          ..write('id: $id, ')
          ..write('abv: $abv, ')
          ..write('symbol: $symbol, ')
          ..write('rounded: $rounded, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $DivisaTableTable extends DivisaTable
    with TableInfo<$DivisaTableTable, DivisaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DivisaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _abvMeta = const VerificationMeta('abv');
  @override
  late final GeneratedColumn<String> abv = GeneratedColumn<String>(
      'ABREVIACION', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'SIMBOLO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _roundedMeta = const VerificationMeta('rounded');
  @override
  late final GeneratedColumn<double> rounded = GeneratedColumn<double>(
      'REDONDEO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String> descriptionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        abv,
        symbol,
        rounded,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'DIVISAS';
  @override
  String get actualTableName => 'DIVISAS';
  @override
  VerificationContext validateIntegrity(Insertable<DivisaDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('DIVISA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['DIVISA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ABREVIACION')) {
      context.handle(
          _abvMeta, abv.isAcceptableOrUnknown(data['ABREVIACION']!, _abvMeta));
    } else if (isInserting) {
      context.missing(_abvMeta);
    }
    if (data.containsKey('SIMBOLO')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['SIMBOLO']!, _symbolMeta));
    }
    if (data.containsKey('REDONDEO')) {
      context.handle(_roundedMeta,
          rounded.isAcceptableOrUnknown(data['REDONDEO']!, _roundedMeta));
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DivisaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DivisaDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID'])!,
      abv: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ABREVIACION'])!,
      symbol: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SIMBOLO']),
      rounded: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}REDONDEO']),
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $DivisaTableTable createAlias(String alias) {
    return $DivisaTableTable(attachedDatabase, alias);
  }
}

class SalesOrderStatusTableCompanion
    extends UpdateCompanion<SalesOrderStatusDTO> {
  final Value<int> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SalesOrderStatusTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SalesOrderStatusTableCompanion.insert({
    this.id = const Value.absent(),
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<SalesOrderStatusDTO> custom({
    Expression<int>? id,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ESTADO_PEDIDO_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SalesOrderStatusTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SalesOrderStatusTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ESTADO_PEDIDO_ID'] = Variable<int>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesOrderStatusTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SalesOrderStatusTableTable extends SalesOrderStatusTable
    with TableInfo<$SalesOrderStatusTableTable, SalesOrderStatusDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesOrderStatusTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ESTADO_PEDIDO_ID', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_ESTADOS';
  @override
  String get actualTableName => 'PEDIDOS_ESTADOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<SalesOrderStatusDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ESTADO_PEDIDO_ID')) {
      context.handle(_idMeta,
          id.isAcceptableOrUnknown(data['ESTADO_PEDIDO_ID']!, _idMeta));
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SalesOrderStatusDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesOrderStatusDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ESTADO_PEDIDO_ID'])!,
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SalesOrderStatusTableTable createAlias(String alias) {
    return $SalesOrderStatusTableTable(attachedDatabase, alias);
  }
}

class SalesOrderTableCompanion extends UpdateCompanion<SalesOrderDTO> {
  final Value<String> companyId;
  final Value<String> salesOrderId;
  final Value<DateTime> salesOrderDate;
  final Value<String> salesType;
  final Value<String?> customerId;
  final Value<String?> customerName;
  final Value<String?> addressId;
  final Value<String?> shippingAddress1;
  final Value<String?> shippingAddress2;
  final Value<String?> zipCode;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> countryId;
  final Value<String> divisaId;
  final Value<double> taxBase;
  final Value<double> ivaAmount;
  final Value<double> total;
  final Value<int> salesOrderStatusId;
  final Value<String> isOffer;
  final Value<double> promptPaymentDiscount;
  final Value<double> iva;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SalesOrderTableCompanion({
    this.companyId = const Value.absent(),
    this.salesOrderId = const Value.absent(),
    this.salesOrderDate = const Value.absent(),
    this.salesType = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.addressId = const Value.absent(),
    this.shippingAddress1 = const Value.absent(),
    this.shippingAddress2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.taxBase = const Value.absent(),
    this.ivaAmount = const Value.absent(),
    this.total = const Value.absent(),
    this.salesOrderStatusId = const Value.absent(),
    this.isOffer = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.iva = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SalesOrderTableCompanion.insert({
    required String companyId,
    required String salesOrderId,
    required DateTime salesOrderDate,
    required String salesType,
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.addressId = const Value.absent(),
    this.shippingAddress1 = const Value.absent(),
    this.shippingAddress2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    required String divisaId,
    this.taxBase = const Value.absent(),
    this.ivaAmount = const Value.absent(),
    this.total = const Value.absent(),
    this.salesOrderStatusId = const Value.absent(),
    this.isOffer = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.iva = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : companyId = Value(companyId),
        salesOrderId = Value(salesOrderId),
        salesOrderDate = Value(salesOrderDate),
        salesType = Value(salesType),
        divisaId = Value(divisaId),
        lastUpdated = Value(lastUpdated);
  static Insertable<SalesOrderDTO> custom({
    Expression<String>? companyId,
    Expression<String>? salesOrderId,
    Expression<DateTime>? salesOrderDate,
    Expression<String>? salesType,
    Expression<String>? customerId,
    Expression<String>? customerName,
    Expression<String>? addressId,
    Expression<String>? shippingAddress1,
    Expression<String>? shippingAddress2,
    Expression<String>? zipCode,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? countryId,
    Expression<String>? divisaId,
    Expression<double>? taxBase,
    Expression<double>? ivaAmount,
    Expression<double>? total,
    Expression<int>? salesOrderStatusId,
    Expression<String>? isOffer,
    Expression<double>? promptPaymentDiscount,
    Expression<double>? iva,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (salesOrderId != null) 'PEDIDO_ID': salesOrderId,
      if (salesOrderDate != null) 'FECHA_PEDIDO': salesOrderDate,
      if (salesType != null) 'TIPO_VENTA': salesType,
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (customerName != null) 'NOMRE_CLIENTE': customerName,
      if (addressId != null) 'DIRECCION_ID': addressId,
      if (shippingAddress1 != null) 'DIRECCION_ENVIO1': shippingAddress1,
      if (shippingAddress2 != null) 'DIRECCION_ENVIO2': shippingAddress2,
      if (zipCode != null) 'CODIGO_POSTAL': zipCode,
      if (city != null) 'POBLACION': city,
      if (state != null) 'PROVINCIA': state,
      if (countryId != null) 'PAIS_ID': countryId,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (taxBase != null) 'BASE_IMPONIBLE': taxBase,
      if (ivaAmount != null) 'IMPORTE_IVA': ivaAmount,
      if (total != null) 'TOTAL': total,
      if (salesOrderStatusId != null) 'ESTADO_PEDIDO_ID': salesOrderStatusId,
      if (isOffer != null) 'OFERTA_SN': isOffer,
      if (promptPaymentDiscount != null)
        'DESCUENTO_PRONTO_PAGO': promptPaymentDiscount,
      if (iva != null) 'IVA': iva,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SalesOrderTableCompanion copyWith(
      {Value<String>? companyId,
      Value<String>? salesOrderId,
      Value<DateTime>? salesOrderDate,
      Value<String>? salesType,
      Value<String?>? customerId,
      Value<String?>? customerName,
      Value<String?>? addressId,
      Value<String?>? shippingAddress1,
      Value<String?>? shippingAddress2,
      Value<String?>? zipCode,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? countryId,
      Value<String>? divisaId,
      Value<double>? taxBase,
      Value<double>? ivaAmount,
      Value<double>? total,
      Value<int>? salesOrderStatusId,
      Value<String>? isOffer,
      Value<double>? promptPaymentDiscount,
      Value<double>? iva,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SalesOrderTableCompanion(
      companyId: companyId ?? this.companyId,
      salesOrderId: salesOrderId ?? this.salesOrderId,
      salesOrderDate: salesOrderDate ?? this.salesOrderDate,
      salesType: salesType ?? this.salesType,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      addressId: addressId ?? this.addressId,
      shippingAddress1: shippingAddress1 ?? this.shippingAddress1,
      shippingAddress2: shippingAddress2 ?? this.shippingAddress2,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      state: state ?? this.state,
      countryId: countryId ?? this.countryId,
      divisaId: divisaId ?? this.divisaId,
      taxBase: taxBase ?? this.taxBase,
      ivaAmount: ivaAmount ?? this.ivaAmount,
      total: total ?? this.total,
      salesOrderStatusId: salesOrderStatusId ?? this.salesOrderStatusId,
      isOffer: isOffer ?? this.isOffer,
      promptPaymentDiscount:
          promptPaymentDiscount ?? this.promptPaymentDiscount,
      iva: iva ?? this.iva,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (salesOrderId.present) {
      map['PEDIDO_ID'] = Variable<String>(salesOrderId.value);
    }
    if (salesOrderDate.present) {
      map['FECHA_PEDIDO'] = Variable<DateTime>(salesOrderDate.value);
    }
    if (salesType.present) {
      map['TIPO_VENTA'] = Variable<String>(salesType.value);
    }
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (customerName.present) {
      map['NOMRE_CLIENTE'] = Variable<String>(customerName.value);
    }
    if (addressId.present) {
      map['DIRECCION_ID'] = Variable<String>(addressId.value);
    }
    if (shippingAddress1.present) {
      map['DIRECCION_ENVIO1'] = Variable<String>(shippingAddress1.value);
    }
    if (shippingAddress2.present) {
      map['DIRECCION_ENVIO2'] = Variable<String>(shippingAddress2.value);
    }
    if (zipCode.present) {
      map['CODIGO_POSTAL'] = Variable<String>(zipCode.value);
    }
    if (city.present) {
      map['POBLACION'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['PROVINCIA'] = Variable<String>(state.value);
    }
    if (countryId.present) {
      map['PAIS_ID'] = Variable<String>(countryId.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (taxBase.present) {
      map['BASE_IMPONIBLE'] = Variable<double>(taxBase.value);
    }
    if (ivaAmount.present) {
      map['IMPORTE_IVA'] = Variable<double>(ivaAmount.value);
    }
    if (total.present) {
      map['TOTAL'] = Variable<double>(total.value);
    }
    if (salesOrderStatusId.present) {
      map['ESTADO_PEDIDO_ID'] = Variable<int>(salesOrderStatusId.value);
    }
    if (isOffer.present) {
      map['OFERTA_SN'] = Variable<String>(isOffer.value);
    }
    if (promptPaymentDiscount.present) {
      map['DESCUENTO_PRONTO_PAGO'] =
          Variable<double>(promptPaymentDiscount.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesOrderTableCompanion(')
          ..write('companyId: $companyId, ')
          ..write('salesOrderId: $salesOrderId, ')
          ..write('salesOrderDate: $salesOrderDate, ')
          ..write('salesType: $salesType, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('addressId: $addressId, ')
          ..write('shippingAddress1: $shippingAddress1, ')
          ..write('shippingAddress2: $shippingAddress2, ')
          ..write('zipCode: $zipCode, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('countryId: $countryId, ')
          ..write('divisaId: $divisaId, ')
          ..write('taxBase: $taxBase, ')
          ..write('ivaAmount: $ivaAmount, ')
          ..write('total: $total, ')
          ..write('salesOrderStatusId: $salesOrderStatusId, ')
          ..write('isOffer: $isOffer, ')
          ..write('promptPaymentDiscount: $promptPaymentDiscount, ')
          ..write('iva: $iva, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SalesOrderTableTable extends SalesOrderTable
    with TableInfo<$SalesOrderTableTable, SalesOrderDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesOrderTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _salesOrderIdMeta =
      const VerificationMeta('salesOrderId');
  @override
  late final GeneratedColumn<String> salesOrderId = GeneratedColumn<String>(
      'PEDIDO_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _salesOrderDateMeta =
      const VerificationMeta('salesOrderDate');
  @override
  late final GeneratedColumn<DateTime> salesOrderDate =
      GeneratedColumn<DateTime>('FECHA_PEDIDO', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _salesTypeMeta = const VerificationMeta('salesType');
  @override
  late final GeneratedColumn<String> salesType = GeneratedColumn<String>(
      'TIPO_VENTA', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 6),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'NOMRE_CLIENTE', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<String> addressId = GeneratedColumn<String>(
      'DIRECCION_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _shippingAddress1Meta =
      const VerificationMeta('shippingAddress1');
  @override
  late final GeneratedColumn<String> shippingAddress1 = GeneratedColumn<String>(
      'DIRECCION_ENVIO1', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _shippingAddress2Meta =
      const VerificationMeta('shippingAddress2');
  @override
  late final GeneratedColumn<String> shippingAddress2 = GeneratedColumn<String>(
      'DIRECCION_ENVIO2', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _zipCodeMeta = const VerificationMeta('zipCode');
  @override
  late final GeneratedColumn<String> zipCode = GeneratedColumn<String>(
      'CODIGO_POSTAL', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'POBLACION', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 60),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'PROVINCIA', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _countryIdMeta = const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 3),
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES DIVISAS (DIVISA_ID)');
  final VerificationMeta _taxBaseMeta = const VerificationMeta('taxBase');
  @override
  late final GeneratedColumn<double> taxBase = GeneratedColumn<double>(
      'BASE_IMPONIBLE', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _ivaAmountMeta = const VerificationMeta('ivaAmount');
  @override
  late final GeneratedColumn<double> ivaAmount = GeneratedColumn<double>(
      'IMPORTE_IVA', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
      'TOTAL', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _salesOrderStatusIdMeta =
      const VerificationMeta('salesOrderStatusId');
  @override
  late final GeneratedColumn<int> salesOrderStatusId = GeneratedColumn<int>(
      'ESTADO_PEDIDO_ID', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PEDIDOS_ESTADOS (ESTADO_PEDIDO_ID)',
      defaultValue: const Constant(0));
  final VerificationMeta _isOfferMeta = const VerificationMeta('isOffer');
  @override
  late final GeneratedColumn<String> isOffer = GeneratedColumn<String>(
      'OFERTA_SN', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _promptPaymentDiscountMeta =
      const VerificationMeta('promptPaymentDiscount');
  @override
  late final GeneratedColumn<double> promptPaymentDiscount =
      GeneratedColumn<double>('DESCUENTO_PRONTO_PAGO', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(0.0));
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        companyId,
        salesOrderId,
        salesOrderDate,
        salesType,
        customerId,
        customerName,
        addressId,
        shippingAddress1,
        shippingAddress2,
        zipCode,
        city,
        state,
        countryId,
        divisaId,
        taxBase,
        ivaAmount,
        total,
        salesOrderStatusId,
        isOffer,
        promptPaymentDiscount,
        iva,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS';
  @override
  String get actualTableName => 'PEDIDOS';
  @override
  VerificationContext validateIntegrity(Insertable<SalesOrderDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _salesOrderIdMeta,
          salesOrderId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _salesOrderIdMeta));
    } else if (isInserting) {
      context.missing(_salesOrderIdMeta);
    }
    if (data.containsKey('FECHA_PEDIDO')) {
      context.handle(
          _salesOrderDateMeta,
          salesOrderDate.isAcceptableOrUnknown(
              data['FECHA_PEDIDO']!, _salesOrderDateMeta));
    } else if (isInserting) {
      context.missing(_salesOrderDateMeta);
    }
    if (data.containsKey('TIPO_VENTA')) {
      context.handle(_salesTypeMeta,
          salesType.isAcceptableOrUnknown(data['TIPO_VENTA']!, _salesTypeMeta));
    } else if (isInserting) {
      context.missing(_salesTypeMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    }
    if (data.containsKey('NOMRE_CLIENTE')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['NOMRE_CLIENTE']!, _customerNameMeta));
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _addressIdMeta,
          addressId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _addressIdMeta));
    }
    if (data.containsKey('DIRECCION_ENVIO1')) {
      context.handle(
          _shippingAddress1Meta,
          shippingAddress1.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO1']!, _shippingAddress1Meta));
    }
    if (data.containsKey('DIRECCION_ENVIO2')) {
      context.handle(
          _shippingAddress2Meta,
          shippingAddress2.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO2']!, _shippingAddress2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['CODIGO_POSTAL']!, _zipCodeMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['POBLACION']!, _cityMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_stateMeta,
          state.isAcceptableOrUnknown(data['PROVINCIA']!, _stateMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['PAIS_ID']!, _countryIdMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    } else if (isInserting) {
      context.missing(_divisaIdMeta);
    }
    if (data.containsKey('BASE_IMPONIBLE')) {
      context.handle(_taxBaseMeta,
          taxBase.isAcceptableOrUnknown(data['BASE_IMPONIBLE']!, _taxBaseMeta));
    }
    if (data.containsKey('IMPORTE_IVA')) {
      context.handle(
          _ivaAmountMeta,
          ivaAmount.isAcceptableOrUnknown(
              data['IMPORTE_IVA']!, _ivaAmountMeta));
    }
    if (data.containsKey('TOTAL')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['TOTAL']!, _totalMeta));
    }
    if (data.containsKey('ESTADO_PEDIDO_ID')) {
      context.handle(
          _salesOrderStatusIdMeta,
          salesOrderStatusId.isAcceptableOrUnknown(
              data['ESTADO_PEDIDO_ID']!, _salesOrderStatusIdMeta));
    }
    if (data.containsKey('OFERTA_SN')) {
      context.handle(_isOfferMeta,
          isOffer.isAcceptableOrUnknown(data['OFERTA_SN']!, _isOfferMeta));
    }
    if (data.containsKey('DESCUENTO_PRONTO_PAGO')) {
      context.handle(
          _promptPaymentDiscountMeta,
          promptPaymentDiscount.isAcceptableOrUnknown(
              data['DESCUENTO_PRONTO_PAGO']!, _promptPaymentDiscountMeta));
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {salesOrderId, companyId};
  @override
  SalesOrderDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesOrderDTO(
      companyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      salesOrderId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_ID'])!,
      salesOrderDate: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_PEDIDO'])!,
      salesType: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TIPO_VENTA'])!,
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID']),
      addressId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION_ID']),
      customerName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMRE_CLIENTE']),
      shippingAddress1: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_ENVIO1']),
      shippingAddress2: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_ENVIO2']),
      zipCode: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL']),
      city: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}POBLACION']),
      state: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PROVINCIA']),
      countryId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID']),
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID'])!,
      taxBase: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}BASE_IMPONIBLE'])!,
      ivaAmount: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IMPORTE_IVA'])!,
      total: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TOTAL'])!,
      salesOrderStatusId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ESTADO_PEDIDO_ID'])!,
      isOffer: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}OFERTA_SN'])!,
      promptPaymentDiscount: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}DESCUENTO_PRONTO_PAGO'])!,
      iva: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SalesOrderTableTable createAlias(String alias) {
    return $SalesOrderTableTable(attachedDatabase, alias);
  }
}

class SalesOrderLineTableCompanion extends UpdateCompanion<SalesOrderLineDTO> {
  final Value<String> companyId;
  final Value<String> salesOrderId;
  final Value<String> id;
  final Value<String> articleId;
  final Value<String?> articleDescription;
  final Value<double> quantity;
  final Value<double> divisaPrice;
  final Value<double?> priceType;
  final Value<double> discount1;
  final Value<double> discount2;
  final Value<double> discount3;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SalesOrderLineTableCompanion({
    this.companyId = const Value.absent(),
    this.salesOrderId = const Value.absent(),
    this.id = const Value.absent(),
    this.articleId = const Value.absent(),
    this.articleDescription = const Value.absent(),
    this.quantity = const Value.absent(),
    this.divisaPrice = const Value.absent(),
    this.priceType = const Value.absent(),
    this.discount1 = const Value.absent(),
    this.discount2 = const Value.absent(),
    this.discount3 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SalesOrderLineTableCompanion.insert({
    required String companyId,
    required String salesOrderId,
    required String id,
    required String articleId,
    this.articleDescription = const Value.absent(),
    required double quantity,
    required double divisaPrice,
    this.priceType = const Value.absent(),
    required double discount1,
    required double discount2,
    required double discount3,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : companyId = Value(companyId),
        salesOrderId = Value(salesOrderId),
        id = Value(id),
        articleId = Value(articleId),
        quantity = Value(quantity),
        divisaPrice = Value(divisaPrice),
        discount1 = Value(discount1),
        discount2 = Value(discount2),
        discount3 = Value(discount3),
        lastUpdated = Value(lastUpdated);
  static Insertable<SalesOrderLineDTO> custom({
    Expression<String>? companyId,
    Expression<String>? salesOrderId,
    Expression<String>? id,
    Expression<String>? articleId,
    Expression<String>? articleDescription,
    Expression<double>? quantity,
    Expression<double>? divisaPrice,
    Expression<double>? priceType,
    Expression<double>? discount1,
    Expression<double>? discount2,
    Expression<double>? discount3,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (salesOrderId != null) 'PEDIDO_ID': salesOrderId,
      if (id != null) 'PEDIDO_LINEA_ID': id,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (articleDescription != null)
        'ARTICULO_DESCRIPCION': articleDescription,
      if (quantity != null) 'CANTIDAD': quantity,
      if (divisaPrice != null) 'PRECIO_DIVISA': divisaPrice,
      if (priceType != null) 'TIPO_PRECIO': priceType,
      if (discount1 != null) 'DESCUENTO1': discount1,
      if (discount2 != null) 'DESCUENTO2': discount2,
      if (discount3 != null) 'DESCUENTO3': discount3,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SalesOrderLineTableCompanion copyWith(
      {Value<String>? companyId,
      Value<String>? salesOrderId,
      Value<String>? id,
      Value<String>? articleId,
      Value<String?>? articleDescription,
      Value<double>? quantity,
      Value<double>? divisaPrice,
      Value<double?>? priceType,
      Value<double>? discount1,
      Value<double>? discount2,
      Value<double>? discount3,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SalesOrderLineTableCompanion(
      companyId: companyId ?? this.companyId,
      salesOrderId: salesOrderId ?? this.salesOrderId,
      id: id ?? this.id,
      articleId: articleId ?? this.articleId,
      articleDescription: articleDescription ?? this.articleDescription,
      quantity: quantity ?? this.quantity,
      divisaPrice: divisaPrice ?? this.divisaPrice,
      priceType: priceType ?? this.priceType,
      discount1: discount1 ?? this.discount1,
      discount2: discount2 ?? this.discount2,
      discount3: discount3 ?? this.discount3,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (salesOrderId.present) {
      map['PEDIDO_ID'] = Variable<String>(salesOrderId.value);
    }
    if (id.present) {
      map['PEDIDO_LINEA_ID'] = Variable<String>(id.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (articleDescription.present) {
      map['ARTICULO_DESCRIPCION'] = Variable<String>(articleDescription.value);
    }
    if (quantity.present) {
      map['CANTIDAD'] = Variable<double>(quantity.value);
    }
    if (divisaPrice.present) {
      map['PRECIO_DIVISA'] = Variable<double>(divisaPrice.value);
    }
    if (priceType.present) {
      map['TIPO_PRECIO'] = Variable<double>(priceType.value);
    }
    if (discount1.present) {
      map['DESCUENTO1'] = Variable<double>(discount1.value);
    }
    if (discount2.present) {
      map['DESCUENTO2'] = Variable<double>(discount2.value);
    }
    if (discount3.present) {
      map['DESCUENTO3'] = Variable<double>(discount3.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesOrderLineTableCompanion(')
          ..write('companyId: $companyId, ')
          ..write('salesOrderId: $salesOrderId, ')
          ..write('id: $id, ')
          ..write('articleId: $articleId, ')
          ..write('articleDescription: $articleDescription, ')
          ..write('quantity: $quantity, ')
          ..write('divisaPrice: $divisaPrice, ')
          ..write('priceType: $priceType, ')
          ..write('discount1: $discount1, ')
          ..write('discount2: $discount2, ')
          ..write('discount3: $discount3, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SalesOrderLineTableTable extends SalesOrderLineTable
    with TableInfo<$SalesOrderLineTableTable, SalesOrderLineDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesOrderLineTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _salesOrderIdMeta =
      const VerificationMeta('salesOrderId');
  @override
  late final GeneratedColumn<String> salesOrderId = GeneratedColumn<String>(
      'PEDIDO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'PEDIDO_LINEA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleDescriptionMeta =
      const VerificationMeta('articleDescription');
  @override
  late final GeneratedColumn<String> articleDescription =
      GeneratedColumn<String>('ARTICULO_DESCRIPCION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _divisaPriceMeta =
      const VerificationMeta('divisaPrice');
  @override
  late final GeneratedColumn<double> divisaPrice = GeneratedColumn<double>(
      'PRECIO_DIVISA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceTypeMeta = const VerificationMeta('priceType');
  @override
  late final GeneratedColumn<double> priceType = GeneratedColumn<double>(
      'TIPO_PRECIO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _discount1Meta = const VerificationMeta('discount1');
  @override
  late final GeneratedColumn<double> discount1 = GeneratedColumn<double>(
      'DESCUENTO1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _discount2Meta = const VerificationMeta('discount2');
  @override
  late final GeneratedColumn<double> discount2 = GeneratedColumn<double>(
      'DESCUENTO2', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _discount3Meta = const VerificationMeta('discount3');
  @override
  late final GeneratedColumn<double> discount3 = GeneratedColumn<double>(
      'DESCUENTO3', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        companyId,
        salesOrderId,
        id,
        articleId,
        articleDescription,
        quantity,
        divisaPrice,
        priceType,
        discount1,
        discount2,
        discount3,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_LINEAS';
  @override
  String get actualTableName => 'PEDIDOS_LINEAS';
  @override
  VerificationContext validateIntegrity(Insertable<SalesOrderLineDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _salesOrderIdMeta,
          salesOrderId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _salesOrderIdMeta));
    } else if (isInserting) {
      context.missing(_salesOrderIdMeta);
    }
    if (data.containsKey('PEDIDO_LINEA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PEDIDO_LINEA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('ARTICULO_DESCRIPCION')) {
      context.handle(
          _articleDescriptionMeta,
          articleDescription.isAcceptableOrUnknown(
              data['ARTICULO_DESCRIPCION']!, _articleDescriptionMeta));
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['CANTIDAD']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('PRECIO_DIVISA')) {
      context.handle(
          _divisaPriceMeta,
          divisaPrice.isAcceptableOrUnknown(
              data['PRECIO_DIVISA']!, _divisaPriceMeta));
    } else if (isInserting) {
      context.missing(_divisaPriceMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _priceTypeMeta,
          priceType.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _priceTypeMeta));
    }
    if (data.containsKey('DESCUENTO1')) {
      context.handle(_discount1Meta,
          discount1.isAcceptableOrUnknown(data['DESCUENTO1']!, _discount1Meta));
    } else if (isInserting) {
      context.missing(_discount1Meta);
    }
    if (data.containsKey('DESCUENTO2')) {
      context.handle(_discount2Meta,
          discount2.isAcceptableOrUnknown(data['DESCUENTO2']!, _discount2Meta));
    } else if (isInserting) {
      context.missing(_discount2Meta);
    }
    if (data.containsKey('DESCUENTO3')) {
      context.handle(_discount3Meta,
          discount3.isAcceptableOrUnknown(data['DESCUENTO3']!, _discount3Meta));
    } else if (isInserting) {
      context.missing(_discount3Meta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {salesOrderId, companyId, id};
  @override
  SalesOrderLineDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesOrderLineDTO(
      companyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      salesOrderId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_ID'])!,
      id: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PEDIDO_LINEA_ID'])!,
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      articleDescription: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}ARTICULO_DESCRIPCION']),
      quantity: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}CANTIDAD'])!,
      divisaPrice: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO_DIVISA'])!,
      priceType: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TIPO_PRECIO']),
      discount1: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO1'])!,
      discount2: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO2'])!,
      discount3: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO3'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SalesOrderLineTableTable createAlias(String alias) {
    return $SalesOrderLineTableTable(attachedDatabase, alias);
  }
}

class CollectionTermTableCompanion extends UpdateCompanion<CollectionTermDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CollectionTermTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CollectionTermTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CollectionTermDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'PLAZO_COBRO_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CollectionTermTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CollectionTermTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['PLAZO_COBRO_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionTermTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CollectionTermTableTable extends CollectionTermTable
    with TableInfo<$CollectionTermTableTable, CollectionTermDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionTermTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'PLAZO_COBRO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String> descriptionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PLAZOS_COBRO';
  @override
  String get actualTableName => 'PLAZOS_COBRO';
  @override
  VerificationContext validateIntegrity(Insertable<CollectionTermDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PLAZO_COBRO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PLAZO_COBRO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionTermDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionTermDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PLAZO_COBRO_ID'])!,
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CollectionTermTableTable createAlias(String alias) {
    return $CollectionTermTableTable(attachedDatabase, alias);
  }
}

class CollectionMethodTableCompanion
    extends UpdateCompanion<CollectionMethodDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CollectionMethodTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CollectionMethodTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CollectionMethodDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'METODO_COBRO_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CollectionMethodTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CollectionMethodTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['METODO_COBRO_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionMethodTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CollectionMethodTableTable extends CollectionMethodTable
    with TableInfo<$CollectionMethodTableTable, CollectionMethodDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionMethodTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'METODO_COBRO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String> descriptionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'METODOS_COBRO';
  @override
  String get actualTableName => 'METODOS_COBRO';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollectionMethodDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['METODO_COBRO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionMethodDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionMethodDTO(
      id: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}METODO_COBRO_ID'])!,
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CollectionMethodTableTable createAlias(String alias) {
    return $CollectionMethodTableTable(attachedDatabase, alias);
  }
}

class CustomerTableCompanion extends UpdateCompanion<CustomerDTO> {
  final Value<String> id;
  final Value<String?> customerName;
  final Value<String?> nif;
  final Value<String?> fiscalName;
  final Value<String?> fiscalAddress1;
  final Value<String?> fiscalAddress2;
  final Value<String?> fiscalZipCode;
  final Value<String?> fiscalCity;
  final Value<String?> fiscalState;
  final Value<String?> fiscalCountryId;
  final Value<double?> fiscalLatitude;
  final Value<double?> fiscalLongitude;
  final Value<String> companyId;
  final Value<double?> especialVAT;
  final Value<String?> exemptVat;
  final Value<double?> currentYearSales;
  final Value<double?> previousYearSales;
  final Value<double?> salesTwoYearsAgo;
  final Value<double?> currentYearMargin;
  final Value<double?> previousYearMargin;
  final Value<double?> marginTwoYearsAgo;
  final Value<double?> paymentPercent;
  final Value<double?> warrantyPercent;
  final Value<String?> shoppingCenterName;
  final Value<String?> urlWebsite;
  final Value<String?> divisaId;
  final Value<String?> rateId;
  final Value<String?> rateDescription;
  final Value<String?> generalDiscount;
  final Value<String?> generalDiscountDescription;
  final Value<String> priceCalculationType;
  final Value<String?> collectionTermId;
  final Value<String?> collectionMethodId;
  final Value<double> promptPaymentDiscount;
  final Value<double> internalGrantedRisk;
  final Value<DateTime?> internalGrantedRiskDate;
  final Value<double> cofaceGrantedRisk;
  final Value<DateTime?> cofaceGrantedRiskDate;
  final Value<double?> riskGranted;
  final Value<double?> riskPendingCollectionDue;
  final Value<double?> riskPendingColleectionNotDue;
  final Value<double?> riskPendingToServe;
  final Value<double?> riskPendingBilling;
  final Value<String?> internalRemarks;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerTableCompanion({
    this.id = const Value.absent(),
    this.customerName = const Value.absent(),
    this.nif = const Value.absent(),
    this.fiscalName = const Value.absent(),
    this.fiscalAddress1 = const Value.absent(),
    this.fiscalAddress2 = const Value.absent(),
    this.fiscalZipCode = const Value.absent(),
    this.fiscalCity = const Value.absent(),
    this.fiscalState = const Value.absent(),
    this.fiscalCountryId = const Value.absent(),
    this.fiscalLatitude = const Value.absent(),
    this.fiscalLongitude = const Value.absent(),
    this.companyId = const Value.absent(),
    this.especialVAT = const Value.absent(),
    this.exemptVat = const Value.absent(),
    this.currentYearSales = const Value.absent(),
    this.previousYearSales = const Value.absent(),
    this.salesTwoYearsAgo = const Value.absent(),
    this.currentYearMargin = const Value.absent(),
    this.previousYearMargin = const Value.absent(),
    this.marginTwoYearsAgo = const Value.absent(),
    this.paymentPercent = const Value.absent(),
    this.warrantyPercent = const Value.absent(),
    this.shoppingCenterName = const Value.absent(),
    this.urlWebsite = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.rateId = const Value.absent(),
    this.rateDescription = const Value.absent(),
    this.generalDiscount = const Value.absent(),
    this.generalDiscountDescription = const Value.absent(),
    this.priceCalculationType = const Value.absent(),
    this.collectionTermId = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.internalGrantedRisk = const Value.absent(),
    this.internalGrantedRiskDate = const Value.absent(),
    this.cofaceGrantedRisk = const Value.absent(),
    this.cofaceGrantedRiskDate = const Value.absent(),
    this.riskGranted = const Value.absent(),
    this.riskPendingCollectionDue = const Value.absent(),
    this.riskPendingColleectionNotDue = const Value.absent(),
    this.riskPendingToServe = const Value.absent(),
    this.riskPendingBilling = const Value.absent(),
    this.internalRemarks = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerTableCompanion.insert({
    required String id,
    this.customerName = const Value.absent(),
    this.nif = const Value.absent(),
    this.fiscalName = const Value.absent(),
    this.fiscalAddress1 = const Value.absent(),
    this.fiscalAddress2 = const Value.absent(),
    this.fiscalZipCode = const Value.absent(),
    this.fiscalCity = const Value.absent(),
    this.fiscalState = const Value.absent(),
    this.fiscalCountryId = const Value.absent(),
    this.fiscalLatitude = const Value.absent(),
    this.fiscalLongitude = const Value.absent(),
    required String companyId,
    this.especialVAT = const Value.absent(),
    this.exemptVat = const Value.absent(),
    this.currentYearSales = const Value.absent(),
    this.previousYearSales = const Value.absent(),
    this.salesTwoYearsAgo = const Value.absent(),
    this.currentYearMargin = const Value.absent(),
    this.previousYearMargin = const Value.absent(),
    this.marginTwoYearsAgo = const Value.absent(),
    this.paymentPercent = const Value.absent(),
    this.warrantyPercent = const Value.absent(),
    this.shoppingCenterName = const Value.absent(),
    this.urlWebsite = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.rateId = const Value.absent(),
    this.rateDescription = const Value.absent(),
    this.generalDiscount = const Value.absent(),
    this.generalDiscountDescription = const Value.absent(),
    required String priceCalculationType,
    this.collectionTermId = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    required double promptPaymentDiscount,
    required double internalGrantedRisk,
    this.internalGrantedRiskDate = const Value.absent(),
    required double cofaceGrantedRisk,
    this.cofaceGrantedRiskDate = const Value.absent(),
    this.riskGranted = const Value.absent(),
    this.riskPendingCollectionDue = const Value.absent(),
    this.riskPendingColleectionNotDue = const Value.absent(),
    this.riskPendingToServe = const Value.absent(),
    this.riskPendingBilling = const Value.absent(),
    this.internalRemarks = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        companyId = Value(companyId),
        priceCalculationType = Value(priceCalculationType),
        promptPaymentDiscount = Value(promptPaymentDiscount),
        internalGrantedRisk = Value(internalGrantedRisk),
        cofaceGrantedRisk = Value(cofaceGrantedRisk),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerDTO> custom({
    Expression<String>? id,
    Expression<String>? customerName,
    Expression<String>? nif,
    Expression<String>? fiscalName,
    Expression<String>? fiscalAddress1,
    Expression<String>? fiscalAddress2,
    Expression<String>? fiscalZipCode,
    Expression<String>? fiscalCity,
    Expression<String>? fiscalState,
    Expression<String>? fiscalCountryId,
    Expression<double>? fiscalLatitude,
    Expression<double>? fiscalLongitude,
    Expression<String>? companyId,
    Expression<double>? especialVAT,
    Expression<String>? exemptVat,
    Expression<double>? currentYearSales,
    Expression<double>? previousYearSales,
    Expression<double>? salesTwoYearsAgo,
    Expression<double>? currentYearMargin,
    Expression<double>? previousYearMargin,
    Expression<double>? marginTwoYearsAgo,
    Expression<double>? paymentPercent,
    Expression<double>? warrantyPercent,
    Expression<String>? shoppingCenterName,
    Expression<String>? urlWebsite,
    Expression<String>? divisaId,
    Expression<String>? rateId,
    Expression<String>? rateDescription,
    Expression<String>? generalDiscount,
    Expression<String>? generalDiscountDescription,
    Expression<String>? priceCalculationType,
    Expression<String>? collectionTermId,
    Expression<String>? collectionMethodId,
    Expression<double>? promptPaymentDiscount,
    Expression<double>? internalGrantedRisk,
    Expression<DateTime>? internalGrantedRiskDate,
    Expression<double>? cofaceGrantedRisk,
    Expression<DateTime>? cofaceGrantedRiskDate,
    Expression<double>? riskGranted,
    Expression<double>? riskPendingCollectionDue,
    Expression<double>? riskPendingColleectionNotDue,
    Expression<double>? riskPendingToServe,
    Expression<double>? riskPendingBilling,
    Expression<String>? internalRemarks,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'CLIENTE_ID': id,
      if (customerName != null) 'NOMBRE': customerName,
      if (nif != null) 'NIF': nif,
      if (fiscalName != null) 'NOMBRE_FISCAL': fiscalName,
      if (fiscalAddress1 != null) 'DIRECCION_FISCAL1': fiscalAddress1,
      if (fiscalAddress2 != null) 'DIRECCION_FISCAL2': fiscalAddress2,
      if (fiscalZipCode != null) 'CODIGO_POSTAL_FISCAL': fiscalZipCode,
      if (fiscalCity != null) 'POBLACION_FISCAL': fiscalCity,
      if (fiscalState != null) 'PROVINCIA_FISCAL': fiscalState,
      if (fiscalCountryId != null) 'PAIS_ID_FISCAL': fiscalCountryId,
      if (fiscalLatitude != null) 'LATITUD_FISCAL': fiscalLatitude,
      if (fiscalLongitude != null) 'LONGITUD_FISCAL': fiscalLongitude,
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (especialVAT != null) 'IVA_ESPECIAL': especialVAT,
      if (exemptVat != null) 'IVA_EXENTO': exemptVat,
      if (currentYearSales != null) 'VENTAS_ANYO_ACTUAL': currentYearSales,
      if (previousYearSales != null) 'VENTAS_ANYO_ANTERIOR': previousYearSales,
      if (salesTwoYearsAgo != null) 'VENTAS_HACE_DOS_ANYOS': salesTwoYearsAgo,
      if (currentYearMargin != null) 'MARGEN_ANYO_ACTUAL': currentYearMargin,
      if (previousYearMargin != null)
        'MARGEN_ANYO_ANTERIOR': previousYearMargin,
      if (marginTwoYearsAgo != null) 'MARGEN_HACE_DOS_ANYOS': marginTwoYearsAgo,
      if (paymentPercent != null) 'PORCENTAJE_ABONOS': paymentPercent,
      if (warrantyPercent != null) 'PORCENTAJE_GARANTIAS': warrantyPercent,
      if (shoppingCenterName != null)
        'CENTRAL_COMPRAS_NOMBRE': shoppingCenterName,
      if (urlWebsite != null) 'URL_WEB': urlWebsite,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (rateId != null) 'TARIFA_ID': rateId,
      if (rateDescription != null) 'TARIFA_DESCRIPCION': rateDescription,
      if (generalDiscount != null) 'DESCUENTO_GENERAL_ID': generalDiscount,
      if (generalDiscountDescription != null)
        'DESCUENTO_GENERAL_DESCRIPCION': generalDiscountDescription,
      if (priceCalculationType != null)
        'TIPO_CALCULO_PRECIO': priceCalculationType,
      if (collectionTermId != null) 'PLAZO_COBRO_ID': collectionTermId,
      if (collectionMethodId != null) 'METODO_COBRO_ID': collectionMethodId,
      if (promptPaymentDiscount != null)
        'DESCUENTO_PRONTO_PAGO': promptPaymentDiscount,
      if (internalGrantedRisk != null)
        'RIESGO_CONCEDIDO_INTERNO': internalGrantedRisk,
      if (internalGrantedRiskDate != null)
        'RIESGO_CONCEDIDO_INTERNO_FECHA': internalGrantedRiskDate,
      if (cofaceGrantedRisk != null)
        'RIESGO_CONCEDIDO_COFACE': cofaceGrantedRisk,
      if (cofaceGrantedRiskDate != null)
        'RIESGO_CONCEDIDO_COFACE_FECHA': cofaceGrantedRiskDate,
      if (riskGranted != null) 'RIESGO_CONCEDIDO': riskGranted,
      if (riskPendingCollectionDue != null)
        'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE': riskPendingCollectionDue,
      if (riskPendingColleectionNotDue != null)
        'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE': riskPendingColleectionNotDue,
      if (riskPendingToServe != null)
        'RIESGO_PDTE_SERVIR_CLIENTE': riskPendingToServe,
      if (riskPendingBilling != null)
        'RIESGO_PDTE_FACTURAR_CLIENTE': riskPendingBilling,
      if (internalRemarks != null) 'OBSERVACIONES_INTERNAS': internalRemarks,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? customerName,
      Value<String?>? nif,
      Value<String?>? fiscalName,
      Value<String?>? fiscalAddress1,
      Value<String?>? fiscalAddress2,
      Value<String?>? fiscalZipCode,
      Value<String?>? fiscalCity,
      Value<String?>? fiscalState,
      Value<String?>? fiscalCountryId,
      Value<double?>? fiscalLatitude,
      Value<double?>? fiscalLongitude,
      Value<String>? companyId,
      Value<double?>? especialVAT,
      Value<String?>? exemptVat,
      Value<double?>? currentYearSales,
      Value<double?>? previousYearSales,
      Value<double?>? salesTwoYearsAgo,
      Value<double?>? currentYearMargin,
      Value<double?>? previousYearMargin,
      Value<double?>? marginTwoYearsAgo,
      Value<double?>? paymentPercent,
      Value<double?>? warrantyPercent,
      Value<String?>? shoppingCenterName,
      Value<String?>? urlWebsite,
      Value<String?>? divisaId,
      Value<String?>? rateId,
      Value<String?>? rateDescription,
      Value<String?>? generalDiscount,
      Value<String?>? generalDiscountDescription,
      Value<String>? priceCalculationType,
      Value<String?>? collectionTermId,
      Value<String?>? collectionMethodId,
      Value<double>? promptPaymentDiscount,
      Value<double>? internalGrantedRisk,
      Value<DateTime?>? internalGrantedRiskDate,
      Value<double>? cofaceGrantedRisk,
      Value<DateTime?>? cofaceGrantedRiskDate,
      Value<double?>? riskGranted,
      Value<double?>? riskPendingCollectionDue,
      Value<double?>? riskPendingColleectionNotDue,
      Value<double?>? riskPendingToServe,
      Value<double?>? riskPendingBilling,
      Value<String?>? internalRemarks,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerTableCompanion(
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      nif: nif ?? this.nif,
      fiscalName: fiscalName ?? this.fiscalName,
      fiscalAddress1: fiscalAddress1 ?? this.fiscalAddress1,
      fiscalAddress2: fiscalAddress2 ?? this.fiscalAddress2,
      fiscalZipCode: fiscalZipCode ?? this.fiscalZipCode,
      fiscalCity: fiscalCity ?? this.fiscalCity,
      fiscalState: fiscalState ?? this.fiscalState,
      fiscalCountryId: fiscalCountryId ?? this.fiscalCountryId,
      fiscalLatitude: fiscalLatitude ?? this.fiscalLatitude,
      fiscalLongitude: fiscalLongitude ?? this.fiscalLongitude,
      companyId: companyId ?? this.companyId,
      especialVAT: especialVAT ?? this.especialVAT,
      exemptVat: exemptVat ?? this.exemptVat,
      currentYearSales: currentYearSales ?? this.currentYearSales,
      previousYearSales: previousYearSales ?? this.previousYearSales,
      salesTwoYearsAgo: salesTwoYearsAgo ?? this.salesTwoYearsAgo,
      currentYearMargin: currentYearMargin ?? this.currentYearMargin,
      previousYearMargin: previousYearMargin ?? this.previousYearMargin,
      marginTwoYearsAgo: marginTwoYearsAgo ?? this.marginTwoYearsAgo,
      paymentPercent: paymentPercent ?? this.paymentPercent,
      warrantyPercent: warrantyPercent ?? this.warrantyPercent,
      shoppingCenterName: shoppingCenterName ?? this.shoppingCenterName,
      urlWebsite: urlWebsite ?? this.urlWebsite,
      divisaId: divisaId ?? this.divisaId,
      rateId: rateId ?? this.rateId,
      rateDescription: rateDescription ?? this.rateDescription,
      generalDiscount: generalDiscount ?? this.generalDiscount,
      generalDiscountDescription:
          generalDiscountDescription ?? this.generalDiscountDescription,
      priceCalculationType: priceCalculationType ?? this.priceCalculationType,
      collectionTermId: collectionTermId ?? this.collectionTermId,
      collectionMethodId: collectionMethodId ?? this.collectionMethodId,
      promptPaymentDiscount:
          promptPaymentDiscount ?? this.promptPaymentDiscount,
      internalGrantedRisk: internalGrantedRisk ?? this.internalGrantedRisk,
      internalGrantedRiskDate:
          internalGrantedRiskDate ?? this.internalGrantedRiskDate,
      cofaceGrantedRisk: cofaceGrantedRisk ?? this.cofaceGrantedRisk,
      cofaceGrantedRiskDate:
          cofaceGrantedRiskDate ?? this.cofaceGrantedRiskDate,
      riskGranted: riskGranted ?? this.riskGranted,
      riskPendingCollectionDue:
          riskPendingCollectionDue ?? this.riskPendingCollectionDue,
      riskPendingColleectionNotDue:
          riskPendingColleectionNotDue ?? this.riskPendingColleectionNotDue,
      riskPendingToServe: riskPendingToServe ?? this.riskPendingToServe,
      riskPendingBilling: riskPendingBilling ?? this.riskPendingBilling,
      internalRemarks: internalRemarks ?? this.internalRemarks,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['CLIENTE_ID'] = Variable<String>(id.value);
    }
    if (customerName.present) {
      map['NOMBRE'] = Variable<String>(customerName.value);
    }
    if (nif.present) {
      map['NIF'] = Variable<String>(nif.value);
    }
    if (fiscalName.present) {
      map['NOMBRE_FISCAL'] = Variable<String>(fiscalName.value);
    }
    if (fiscalAddress1.present) {
      map['DIRECCION_FISCAL1'] = Variable<String>(fiscalAddress1.value);
    }
    if (fiscalAddress2.present) {
      map['DIRECCION_FISCAL2'] = Variable<String>(fiscalAddress2.value);
    }
    if (fiscalZipCode.present) {
      map['CODIGO_POSTAL_FISCAL'] = Variable<String>(fiscalZipCode.value);
    }
    if (fiscalCity.present) {
      map['POBLACION_FISCAL'] = Variable<String>(fiscalCity.value);
    }
    if (fiscalState.present) {
      map['PROVINCIA_FISCAL'] = Variable<String>(fiscalState.value);
    }
    if (fiscalCountryId.present) {
      map['PAIS_ID_FISCAL'] = Variable<String>(fiscalCountryId.value);
    }
    if (fiscalLatitude.present) {
      map['LATITUD_FISCAL'] = Variable<double>(fiscalLatitude.value);
    }
    if (fiscalLongitude.present) {
      map['LONGITUD_FISCAL'] = Variable<double>(fiscalLongitude.value);
    }
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (especialVAT.present) {
      map['IVA_ESPECIAL'] = Variable<double>(especialVAT.value);
    }
    if (exemptVat.present) {
      map['IVA_EXENTO'] = Variable<String>(exemptVat.value);
    }
    if (currentYearSales.present) {
      map['VENTAS_ANYO_ACTUAL'] = Variable<double>(currentYearSales.value);
    }
    if (previousYearSales.present) {
      map['VENTAS_ANYO_ANTERIOR'] = Variable<double>(previousYearSales.value);
    }
    if (salesTwoYearsAgo.present) {
      map['VENTAS_HACE_DOS_ANYOS'] = Variable<double>(salesTwoYearsAgo.value);
    }
    if (currentYearMargin.present) {
      map['MARGEN_ANYO_ACTUAL'] = Variable<double>(currentYearMargin.value);
    }
    if (previousYearMargin.present) {
      map['MARGEN_ANYO_ANTERIOR'] = Variable<double>(previousYearMargin.value);
    }
    if (marginTwoYearsAgo.present) {
      map['MARGEN_HACE_DOS_ANYOS'] = Variable<double>(marginTwoYearsAgo.value);
    }
    if (paymentPercent.present) {
      map['PORCENTAJE_ABONOS'] = Variable<double>(paymentPercent.value);
    }
    if (warrantyPercent.present) {
      map['PORCENTAJE_GARANTIAS'] = Variable<double>(warrantyPercent.value);
    }
    if (shoppingCenterName.present) {
      map['CENTRAL_COMPRAS_NOMBRE'] =
          Variable<String>(shoppingCenterName.value);
    }
    if (urlWebsite.present) {
      map['URL_WEB'] = Variable<String>(urlWebsite.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (rateId.present) {
      map['TARIFA_ID'] = Variable<String>(rateId.value);
    }
    if (rateDescription.present) {
      map['TARIFA_DESCRIPCION'] = Variable<String>(rateDescription.value);
    }
    if (generalDiscount.present) {
      map['DESCUENTO_GENERAL_ID'] = Variable<String>(generalDiscount.value);
    }
    if (generalDiscountDescription.present) {
      map['DESCUENTO_GENERAL_DESCRIPCION'] =
          Variable<String>(generalDiscountDescription.value);
    }
    if (priceCalculationType.present) {
      map['TIPO_CALCULO_PRECIO'] = Variable<String>(priceCalculationType.value);
    }
    if (collectionTermId.present) {
      map['PLAZO_COBRO_ID'] = Variable<String>(collectionTermId.value);
    }
    if (collectionMethodId.present) {
      map['METODO_COBRO_ID'] = Variable<String>(collectionMethodId.value);
    }
    if (promptPaymentDiscount.present) {
      map['DESCUENTO_PRONTO_PAGO'] =
          Variable<double>(promptPaymentDiscount.value);
    }
    if (internalGrantedRisk.present) {
      map['RIESGO_CONCEDIDO_INTERNO'] =
          Variable<double>(internalGrantedRisk.value);
    }
    if (internalGrantedRiskDate.present) {
      map['RIESGO_CONCEDIDO_INTERNO_FECHA'] =
          Variable<DateTime>(internalGrantedRiskDate.value);
    }
    if (cofaceGrantedRisk.present) {
      map['RIESGO_CONCEDIDO_COFACE'] =
          Variable<double>(cofaceGrantedRisk.value);
    }
    if (cofaceGrantedRiskDate.present) {
      map['RIESGO_CONCEDIDO_COFACE_FECHA'] =
          Variable<DateTime>(cofaceGrantedRiskDate.value);
    }
    if (riskGranted.present) {
      map['RIESGO_CONCEDIDO'] = Variable<double>(riskGranted.value);
    }
    if (riskPendingCollectionDue.present) {
      map['RIESGO_PDTE_COBRO_VENCIDO_CLIENTE'] =
          Variable<double>(riskPendingCollectionDue.value);
    }
    if (riskPendingColleectionNotDue.present) {
      map['RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE'] =
          Variable<double>(riskPendingColleectionNotDue.value);
    }
    if (riskPendingToServe.present) {
      map['RIESGO_PDTE_SERVIR_CLIENTE'] =
          Variable<double>(riskPendingToServe.value);
    }
    if (riskPendingBilling.present) {
      map['RIESGO_PDTE_FACTURAR_CLIENTE'] =
          Variable<double>(riskPendingBilling.value);
    }
    if (internalRemarks.present) {
      map['OBSERVACIONES_INTERNAS'] = Variable<String>(internalRemarks.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerTableCompanion(')
          ..write('id: $id, ')
          ..write('customerName: $customerName, ')
          ..write('nif: $nif, ')
          ..write('fiscalName: $fiscalName, ')
          ..write('fiscalAddress1: $fiscalAddress1, ')
          ..write('fiscalAddress2: $fiscalAddress2, ')
          ..write('fiscalZipCode: $fiscalZipCode, ')
          ..write('fiscalCity: $fiscalCity, ')
          ..write('fiscalState: $fiscalState, ')
          ..write('fiscalCountryId: $fiscalCountryId, ')
          ..write('fiscalLatitude: $fiscalLatitude, ')
          ..write('fiscalLongitude: $fiscalLongitude, ')
          ..write('companyId: $companyId, ')
          ..write('especialVAT: $especialVAT, ')
          ..write('exemptVat: $exemptVat, ')
          ..write('currentYearSales: $currentYearSales, ')
          ..write('previousYearSales: $previousYearSales, ')
          ..write('salesTwoYearsAgo: $salesTwoYearsAgo, ')
          ..write('currentYearMargin: $currentYearMargin, ')
          ..write('previousYearMargin: $previousYearMargin, ')
          ..write('marginTwoYearsAgo: $marginTwoYearsAgo, ')
          ..write('paymentPercent: $paymentPercent, ')
          ..write('warrantyPercent: $warrantyPercent, ')
          ..write('shoppingCenterName: $shoppingCenterName, ')
          ..write('urlWebsite: $urlWebsite, ')
          ..write('divisaId: $divisaId, ')
          ..write('rateId: $rateId, ')
          ..write('rateDescription: $rateDescription, ')
          ..write('generalDiscount: $generalDiscount, ')
          ..write('generalDiscountDescription: $generalDiscountDescription, ')
          ..write('priceCalculationType: $priceCalculationType, ')
          ..write('collectionTermId: $collectionTermId, ')
          ..write('collectionMethodId: $collectionMethodId, ')
          ..write('promptPaymentDiscount: $promptPaymentDiscount, ')
          ..write('internalGrantedRisk: $internalGrantedRisk, ')
          ..write('internalGrantedRiskDate: $internalGrantedRiskDate, ')
          ..write('cofaceGrantedRisk: $cofaceGrantedRisk, ')
          ..write('cofaceGrantedRiskDate: $cofaceGrantedRiskDate, ')
          ..write('riskGranted: $riskGranted, ')
          ..write('riskPendingCollectionDue: $riskPendingCollectionDue, ')
          ..write(
              'riskPendingColleectionNotDue: $riskPendingColleectionNotDue, ')
          ..write('riskPendingToServe: $riskPendingToServe, ')
          ..write('riskPendingBilling: $riskPendingBilling, ')
          ..write('internalRemarks: $internalRemarks, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerTableTable extends CustomerTable
    with TableInfo<$CustomerTableTable, CustomerDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'NOMBRE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _nifMeta = const VerificationMeta('nif');
  @override
  late final GeneratedColumn<String> nif = GeneratedColumn<String>(
      'NIF', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fiscalNameMeta = const VerificationMeta('fiscalName');
  @override
  late final GeneratedColumn<String> fiscalName = GeneratedColumn<String>(
      'NOMBRE_FISCAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fiscalAddress1Meta =
      const VerificationMeta('fiscalAddress1');
  @override
  late final GeneratedColumn<String> fiscalAddress1 = GeneratedColumn<String>(
      'DIRECCION_FISCAL1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fiscalAddress2Meta =
      const VerificationMeta('fiscalAddress2');
  @override
  late final GeneratedColumn<String> fiscalAddress2 = GeneratedColumn<String>(
      'DIRECCION_FISCAL2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fiscalZipCodeMeta =
      const VerificationMeta('fiscalZipCode');
  @override
  late final GeneratedColumn<String> fiscalZipCode = GeneratedColumn<String>(
      'CODIGO_POSTAL_FISCAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fiscalCityMeta = const VerificationMeta('fiscalCity');
  @override
  late final GeneratedColumn<String> fiscalCity = GeneratedColumn<String>(
      'POBLACION_FISCAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fiscalStateMeta =
      const VerificationMeta('fiscalState');
  @override
  late final GeneratedColumn<String> fiscalState = GeneratedColumn<String>(
      'PROVINCIA_FISCAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fiscalCountryIdMeta =
      const VerificationMeta('fiscalCountryId');
  @override
  late final GeneratedColumn<String> fiscalCountryId = GeneratedColumn<String>(
      'PAIS_ID_FISCAL', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _fiscalLatitudeMeta =
      const VerificationMeta('fiscalLatitude');
  @override
  late final GeneratedColumn<double> fiscalLatitude = GeneratedColumn<double>(
      'LATITUD_FISCAL', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _fiscalLongitudeMeta =
      const VerificationMeta('fiscalLongitude');
  @override
  late final GeneratedColumn<double> fiscalLongitude = GeneratedColumn<double>(
      'LONGITUD_FISCAL', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _especialVATMeta =
      const VerificationMeta('especialVAT');
  @override
  late final GeneratedColumn<double> especialVAT = GeneratedColumn<double>(
      'IVA_ESPECIAL', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _exemptVatMeta = const VerificationMeta('exemptVat');
  @override
  late final GeneratedColumn<String> exemptVat = GeneratedColumn<String>(
      'IVA_EXENTO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _currentYearSalesMeta =
      const VerificationMeta('currentYearSales');
  @override
  late final GeneratedColumn<double> currentYearSales = GeneratedColumn<double>(
      'VENTAS_ANYO_ACTUAL', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _previousYearSalesMeta =
      const VerificationMeta('previousYearSales');
  @override
  late final GeneratedColumn<double> previousYearSales =
      GeneratedColumn<double>('VENTAS_ANYO_ANTERIOR', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _salesTwoYearsAgoMeta =
      const VerificationMeta('salesTwoYearsAgo');
  @override
  late final GeneratedColumn<double> salesTwoYearsAgo = GeneratedColumn<double>(
      'VENTAS_HACE_DOS_ANYOS', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _currentYearMarginMeta =
      const VerificationMeta('currentYearMargin');
  @override
  late final GeneratedColumn<double> currentYearMargin =
      GeneratedColumn<double>('MARGEN_ANYO_ACTUAL', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _previousYearMarginMeta =
      const VerificationMeta('previousYearMargin');
  @override
  late final GeneratedColumn<double> previousYearMargin =
      GeneratedColumn<double>('MARGEN_ANYO_ANTERIOR', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _marginTwoYearsAgoMeta =
      const VerificationMeta('marginTwoYearsAgo');
  @override
  late final GeneratedColumn<double> marginTwoYearsAgo =
      GeneratedColumn<double>('MARGEN_HACE_DOS_ANYOS', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _paymentPercentMeta =
      const VerificationMeta('paymentPercent');
  @override
  late final GeneratedColumn<double> paymentPercent = GeneratedColumn<double>(
      'PORCENTAJE_ABONOS', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _warrantyPercentMeta =
      const VerificationMeta('warrantyPercent');
  @override
  late final GeneratedColumn<double> warrantyPercent = GeneratedColumn<double>(
      'PORCENTAJE_GARANTIAS', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _shoppingCenterNameMeta =
      const VerificationMeta('shoppingCenterName');
  @override
  late final GeneratedColumn<String> shoppingCenterName =
      GeneratedColumn<String>('CENTRAL_COMPRAS_NOMBRE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _urlWebsiteMeta = const VerificationMeta('urlWebsite');
  @override
  late final GeneratedColumn<String> urlWebsite = GeneratedColumn<String>(
      'URL_WEB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES DIVISAS (DIVISA_ID)');
  final VerificationMeta _rateIdMeta = const VerificationMeta('rateId');
  @override
  late final GeneratedColumn<String> rateId = GeneratedColumn<String>(
      'TARIFA_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _rateDescriptionMeta =
      const VerificationMeta('rateDescription');
  @override
  late final GeneratedColumn<String> rateDescription = GeneratedColumn<String>(
      'TARIFA_DESCRIPCION', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _generalDiscountMeta =
      const VerificationMeta('generalDiscount');
  @override
  late final GeneratedColumn<String> generalDiscount = GeneratedColumn<String>(
      'DESCUENTO_GENERAL_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _generalDiscountDescriptionMeta =
      const VerificationMeta('generalDiscountDescription');
  @override
  late final GeneratedColumn<String> generalDiscountDescription =
      GeneratedColumn<String>(
          'DESCUENTO_GENERAL_DESCRIPCION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _priceCalculationTypeMeta =
      const VerificationMeta('priceCalculationType');
  @override
  late final GeneratedColumn<String> priceCalculationType =
      GeneratedColumn<String>('TIPO_CALCULO_PRECIO', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _collectionTermIdMeta =
      const VerificationMeta('collectionTermId');
  @override
  late final GeneratedColumn<String> collectionTermId = GeneratedColumn<String>(
      'PLAZO_COBRO_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PLAZOS_COBRO (PLAZO_COBRO_ID)');
  final VerificationMeta _collectionMethodIdMeta =
      const VerificationMeta('collectionMethodId');
  @override
  late final GeneratedColumn<String> collectionMethodId =
      GeneratedColumn<String>('METODO_COBRO_ID', aliasedName, true,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES METODOS_COBRO (METODO_COBRO_ID)');
  final VerificationMeta _promptPaymentDiscountMeta =
      const VerificationMeta('promptPaymentDiscount');
  @override
  late final GeneratedColumn<double> promptPaymentDiscount =
      GeneratedColumn<double>('DESCUENTO_PRONTO_PAGO', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _internalGrantedRiskMeta =
      const VerificationMeta('internalGrantedRisk');
  @override
  late final GeneratedColumn<double> internalGrantedRisk =
      GeneratedColumn<double>('RIESGO_CONCEDIDO_INTERNO', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _internalGrantedRiskDateMeta =
      const VerificationMeta('internalGrantedRiskDate');
  @override
  late final GeneratedColumn<DateTime> internalGrantedRiskDate =
      GeneratedColumn<DateTime>(
          'RIESGO_CONCEDIDO_INTERNO_FECHA', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _cofaceGrantedRiskMeta =
      const VerificationMeta('cofaceGrantedRisk');
  @override
  late final GeneratedColumn<double> cofaceGrantedRisk =
      GeneratedColumn<double>('RIESGO_CONCEDIDO_COFACE', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _cofaceGrantedRiskDateMeta =
      const VerificationMeta('cofaceGrantedRiskDate');
  @override
  late final GeneratedColumn<DateTime> cofaceGrantedRiskDate =
      GeneratedColumn<DateTime>(
          'RIESGO_CONCEDIDO_COFACE_FECHA', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _riskGrantedMeta =
      const VerificationMeta('riskGranted');
  @override
  late final GeneratedColumn<double> riskGranted = GeneratedColumn<double>(
      'RIESGO_CONCEDIDO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riskPendingCollectionDueMeta =
      const VerificationMeta('riskPendingCollectionDue');
  @override
  late final GeneratedColumn<double> riskPendingCollectionDue =
      GeneratedColumn<double>(
          'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riskPendingColleectionNotDueMeta =
      const VerificationMeta('riskPendingColleectionNotDue');
  @override
  late final GeneratedColumn<double> riskPendingColleectionNotDue =
      GeneratedColumn<double>(
          'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riskPendingToServeMeta =
      const VerificationMeta('riskPendingToServe');
  @override
  late final GeneratedColumn<double> riskPendingToServe =
      GeneratedColumn<double>('RIESGO_PDTE_SERVIR_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riskPendingBillingMeta =
      const VerificationMeta('riskPendingBilling');
  @override
  late final GeneratedColumn<double> riskPendingBilling =
      GeneratedColumn<double>('RIESGO_PDTE_FACTURAR_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _internalRemarksMeta =
      const VerificationMeta('internalRemarks');
  @override
  late final GeneratedColumn<String> internalRemarks = GeneratedColumn<String>(
      'OBSERVACIONES_INTERNAS', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        customerName,
        nif,
        fiscalName,
        fiscalAddress1,
        fiscalAddress2,
        fiscalZipCode,
        fiscalCity,
        fiscalState,
        fiscalCountryId,
        fiscalLatitude,
        fiscalLongitude,
        companyId,
        especialVAT,
        exemptVat,
        currentYearSales,
        previousYearSales,
        salesTwoYearsAgo,
        currentYearMargin,
        previousYearMargin,
        marginTwoYearsAgo,
        paymentPercent,
        warrantyPercent,
        shoppingCenterName,
        urlWebsite,
        divisaId,
        rateId,
        rateDescription,
        generalDiscount,
        generalDiscountDescription,
        priceCalculationType,
        collectionTermId,
        collectionMethodId,
        promptPaymentDiscount,
        internalGrantedRisk,
        internalGrantedRiskDate,
        cofaceGrantedRisk,
        cofaceGrantedRiskDate,
        riskGranted,
        riskPendingCollectionDue,
        riskPendingColleectionNotDue,
        riskPendingToServe,
        riskPendingBilling,
        internalRemarks,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES';
  @override
  String get actualTableName => 'CLIENTES';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['CLIENTE_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['NOMBRE']!, _customerNameMeta));
    }
    if (data.containsKey('NIF')) {
      context.handle(
          _nifMeta, nif.isAcceptableOrUnknown(data['NIF']!, _nifMeta));
    }
    if (data.containsKey('NOMBRE_FISCAL')) {
      context.handle(
          _fiscalNameMeta,
          fiscalName.isAcceptableOrUnknown(
              data['NOMBRE_FISCAL']!, _fiscalNameMeta));
    }
    if (data.containsKey('DIRECCION_FISCAL1')) {
      context.handle(
          _fiscalAddress1Meta,
          fiscalAddress1.isAcceptableOrUnknown(
              data['DIRECCION_FISCAL1']!, _fiscalAddress1Meta));
    }
    if (data.containsKey('DIRECCION_FISCAL2')) {
      context.handle(
          _fiscalAddress2Meta,
          fiscalAddress2.isAcceptableOrUnknown(
              data['DIRECCION_FISCAL2']!, _fiscalAddress2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL_FISCAL')) {
      context.handle(
          _fiscalZipCodeMeta,
          fiscalZipCode.isAcceptableOrUnknown(
              data['CODIGO_POSTAL_FISCAL']!, _fiscalZipCodeMeta));
    }
    if (data.containsKey('POBLACION_FISCAL')) {
      context.handle(
          _fiscalCityMeta,
          fiscalCity.isAcceptableOrUnknown(
              data['POBLACION_FISCAL']!, _fiscalCityMeta));
    }
    if (data.containsKey('PROVINCIA_FISCAL')) {
      context.handle(
          _fiscalStateMeta,
          fiscalState.isAcceptableOrUnknown(
              data['PROVINCIA_FISCAL']!, _fiscalStateMeta));
    }
    if (data.containsKey('PAIS_ID_FISCAL')) {
      context.handle(
          _fiscalCountryIdMeta,
          fiscalCountryId.isAcceptableOrUnknown(
              data['PAIS_ID_FISCAL']!, _fiscalCountryIdMeta));
    }
    if (data.containsKey('LATITUD_FISCAL')) {
      context.handle(
          _fiscalLatitudeMeta,
          fiscalLatitude.isAcceptableOrUnknown(
              data['LATITUD_FISCAL']!, _fiscalLatitudeMeta));
    }
    if (data.containsKey('LONGITUD_FISCAL')) {
      context.handle(
          _fiscalLongitudeMeta,
          fiscalLongitude.isAcceptableOrUnknown(
              data['LONGITUD_FISCAL']!, _fiscalLongitudeMeta));
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('IVA_ESPECIAL')) {
      context.handle(
          _especialVATMeta,
          especialVAT.isAcceptableOrUnknown(
              data['IVA_ESPECIAL']!, _especialVATMeta));
    }
    if (data.containsKey('IVA_EXENTO')) {
      context.handle(_exemptVatMeta,
          exemptVat.isAcceptableOrUnknown(data['IVA_EXENTO']!, _exemptVatMeta));
    }
    if (data.containsKey('VENTAS_ANYO_ACTUAL')) {
      context.handle(
          _currentYearSalesMeta,
          currentYearSales.isAcceptableOrUnknown(
              data['VENTAS_ANYO_ACTUAL']!, _currentYearSalesMeta));
    }
    if (data.containsKey('VENTAS_ANYO_ANTERIOR')) {
      context.handle(
          _previousYearSalesMeta,
          previousYearSales.isAcceptableOrUnknown(
              data['VENTAS_ANYO_ANTERIOR']!, _previousYearSalesMeta));
    }
    if (data.containsKey('VENTAS_HACE_DOS_ANYOS')) {
      context.handle(
          _salesTwoYearsAgoMeta,
          salesTwoYearsAgo.isAcceptableOrUnknown(
              data['VENTAS_HACE_DOS_ANYOS']!, _salesTwoYearsAgoMeta));
    }
    if (data.containsKey('MARGEN_ANYO_ACTUAL')) {
      context.handle(
          _currentYearMarginMeta,
          currentYearMargin.isAcceptableOrUnknown(
              data['MARGEN_ANYO_ACTUAL']!, _currentYearMarginMeta));
    }
    if (data.containsKey('MARGEN_ANYO_ANTERIOR')) {
      context.handle(
          _previousYearMarginMeta,
          previousYearMargin.isAcceptableOrUnknown(
              data['MARGEN_ANYO_ANTERIOR']!, _previousYearMarginMeta));
    }
    if (data.containsKey('MARGEN_HACE_DOS_ANYOS')) {
      context.handle(
          _marginTwoYearsAgoMeta,
          marginTwoYearsAgo.isAcceptableOrUnknown(
              data['MARGEN_HACE_DOS_ANYOS']!, _marginTwoYearsAgoMeta));
    }
    if (data.containsKey('PORCENTAJE_ABONOS')) {
      context.handle(
          _paymentPercentMeta,
          paymentPercent.isAcceptableOrUnknown(
              data['PORCENTAJE_ABONOS']!, _paymentPercentMeta));
    }
    if (data.containsKey('PORCENTAJE_GARANTIAS')) {
      context.handle(
          _warrantyPercentMeta,
          warrantyPercent.isAcceptableOrUnknown(
              data['PORCENTAJE_GARANTIAS']!, _warrantyPercentMeta));
    }
    if (data.containsKey('CENTRAL_COMPRAS_NOMBRE')) {
      context.handle(
          _shoppingCenterNameMeta,
          shoppingCenterName.isAcceptableOrUnknown(
              data['CENTRAL_COMPRAS_NOMBRE']!, _shoppingCenterNameMeta));
    }
    if (data.containsKey('URL_WEB')) {
      context.handle(_urlWebsiteMeta,
          urlWebsite.isAcceptableOrUnknown(data['URL_WEB']!, _urlWebsiteMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    }
    if (data.containsKey('TARIFA_ID')) {
      context.handle(_rateIdMeta,
          rateId.isAcceptableOrUnknown(data['TARIFA_ID']!, _rateIdMeta));
    }
    if (data.containsKey('TARIFA_DESCRIPCION')) {
      context.handle(
          _rateDescriptionMeta,
          rateDescription.isAcceptableOrUnknown(
              data['TARIFA_DESCRIPCION']!, _rateDescriptionMeta));
    }
    if (data.containsKey('DESCUENTO_GENERAL_ID')) {
      context.handle(
          _generalDiscountMeta,
          generalDiscount.isAcceptableOrUnknown(
              data['DESCUENTO_GENERAL_ID']!, _generalDiscountMeta));
    }
    if (data.containsKey('DESCUENTO_GENERAL_DESCRIPCION')) {
      context.handle(
          _generalDiscountDescriptionMeta,
          generalDiscountDescription.isAcceptableOrUnknown(
              data['DESCUENTO_GENERAL_DESCRIPCION']!,
              _generalDiscountDescriptionMeta));
    }
    if (data.containsKey('TIPO_CALCULO_PRECIO')) {
      context.handle(
          _priceCalculationTypeMeta,
          priceCalculationType.isAcceptableOrUnknown(
              data['TIPO_CALCULO_PRECIO']!, _priceCalculationTypeMeta));
    } else if (isInserting) {
      context.missing(_priceCalculationTypeMeta);
    }
    if (data.containsKey('PLAZO_COBRO_ID')) {
      context.handle(
          _collectionTermIdMeta,
          collectionTermId.isAcceptableOrUnknown(
              data['PLAZO_COBRO_ID']!, _collectionTermIdMeta));
    }
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _collectionMethodIdMeta,
          collectionMethodId.isAcceptableOrUnknown(
              data['METODO_COBRO_ID']!, _collectionMethodIdMeta));
    }
    if (data.containsKey('DESCUENTO_PRONTO_PAGO')) {
      context.handle(
          _promptPaymentDiscountMeta,
          promptPaymentDiscount.isAcceptableOrUnknown(
              data['DESCUENTO_PRONTO_PAGO']!, _promptPaymentDiscountMeta));
    } else if (isInserting) {
      context.missing(_promptPaymentDiscountMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_INTERNO')) {
      context.handle(
          _internalGrantedRiskMeta,
          internalGrantedRisk.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_INTERNO']!, _internalGrantedRiskMeta));
    } else if (isInserting) {
      context.missing(_internalGrantedRiskMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_INTERNO_FECHA')) {
      context.handle(
          _internalGrantedRiskDateMeta,
          internalGrantedRiskDate.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_INTERNO_FECHA']!,
              _internalGrantedRiskDateMeta));
    }
    if (data.containsKey('RIESGO_CONCEDIDO_COFACE')) {
      context.handle(
          _cofaceGrantedRiskMeta,
          cofaceGrantedRisk.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_COFACE']!, _cofaceGrantedRiskMeta));
    } else if (isInserting) {
      context.missing(_cofaceGrantedRiskMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_COFACE_FECHA')) {
      context.handle(
          _cofaceGrantedRiskDateMeta,
          cofaceGrantedRiskDate.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_COFACE_FECHA']!,
              _cofaceGrantedRiskDateMeta));
    }
    if (data.containsKey('RIESGO_CONCEDIDO')) {
      context.handle(
          _riskGrantedMeta,
          riskGranted.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO']!, _riskGrantedMeta));
    }
    if (data.containsKey('RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')) {
      context.handle(
          _riskPendingCollectionDueMeta,
          riskPendingCollectionDue.isAcceptableOrUnknown(
              data['RIESGO_PDTE_COBRO_VENCIDO_CLIENTE']!,
              _riskPendingCollectionDueMeta));
    }
    if (data.containsKey('RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')) {
      context.handle(
          _riskPendingColleectionNotDueMeta,
          riskPendingColleectionNotDue.isAcceptableOrUnknown(
              data['RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE']!,
              _riskPendingColleectionNotDueMeta));
    }
    if (data.containsKey('RIESGO_PDTE_SERVIR_CLIENTE')) {
      context.handle(
          _riskPendingToServeMeta,
          riskPendingToServe.isAcceptableOrUnknown(
              data['RIESGO_PDTE_SERVIR_CLIENTE']!, _riskPendingToServeMeta));
    }
    if (data.containsKey('RIESGO_PDTE_FACTURAR_CLIENTE')) {
      context.handle(
          _riskPendingBillingMeta,
          riskPendingBilling.isAcceptableOrUnknown(
              data['RIESGO_PDTE_FACTURAR_CLIENTE']!, _riskPendingBillingMeta));
    }
    if (data.containsKey('OBSERVACIONES_INTERNAS')) {
      context.handle(
          _internalRemarksMeta,
          internalRemarks.isAcceptableOrUnknown(
              data['OBSERVACIONES_INTERNAS']!, _internalRemarksMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      customerName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE']),
      nif: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NIF']),
      fiscalName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE_FISCAL']),
      fiscalAddress1: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_FISCAL1']),
      fiscalAddress2: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_FISCAL2']),
      fiscalZipCode: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL_FISCAL']),
      fiscalCity: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}POBLACION_FISCAL']),
      fiscalCountryId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID_FISCAL']),
      fiscalState: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PROVINCIA_FISCAL']),
      fiscalLatitude: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD_FISCAL']),
      fiscalLongitude: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LONGITUD_FISCAL']),
      companyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      especialVAT: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA_ESPECIAL']),
      exemptVat: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}IVA_EXENTO']),
      currentYearSales: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}VENTAS_ANYO_ACTUAL']),
      previousYearSales: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}VENTAS_ANYO_ANTERIOR']),
      salesTwoYearsAgo: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}VENTAS_HACE_DOS_ANYOS']),
      currentYearMargin: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}MARGEN_ANYO_ACTUAL']),
      previousYearMargin: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}MARGEN_ANYO_ANTERIOR']),
      marginTwoYearsAgo: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}MARGEN_HACE_DOS_ANYOS']),
      paymentPercent: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}PORCENTAJE_ABONOS']),
      warrantyPercent: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}PORCENTAJE_GARANTIAS']),
      shoppingCenterName: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}CENTRAL_COMPRAS_NOMBRE']),
      urlWebsite: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}URL_WEB']),
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID']),
      rateId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TARIFA_ID']),
      rateDescription: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TARIFA_DESCRIPCION']),
      generalDiscount: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DESCUENTO_GENERAL_ID']),
      generalDiscountDescription: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}DESCUENTO_GENERAL_DESCRIPCION']),
      priceCalculationType: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TIPO_CALCULO_PRECIO'])!,
      collectionTermId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PLAZO_COBRO_ID']),
      collectionMethodId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}METODO_COBRO_ID']),
      promptPaymentDiscount: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}DESCUENTO_PRONTO_PAGO'])!,
      internalGrantedRisk: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_CONCEDIDO_INTERNO'])!,
      internalGrantedRiskDate: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}RIESGO_CONCEDIDO_INTERNO_FECHA']),
      cofaceGrantedRisk: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_CONCEDIDO_COFACE'])!,
      cofaceGrantedRiskDate: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}RIESGO_CONCEDIDO_COFACE_FECHA']),
      riskGranted: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}RIESGO_CONCEDIDO']),
      riskPendingCollectionDue: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_COBRO_VENCIDO_CLIENTE']),
      riskPendingColleectionNotDue: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE']),
      riskPendingToServe: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_SERVIR_CLIENTE']),
      riskPendingBilling: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_FACTURAR_CLIENTE']),
      internalRemarks: attachedDatabase.options.types.read(DriftSqlType.string,
          data['${effectivePrefix}OBSERVACIONES_INTERNAS']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerTableTable createAlias(String alias) {
    return $CustomerTableTable(attachedDatabase, alias);
  }
}

class CustomerUserTableCompanion extends UpdateCompanion<CustomerUserDTO> {
  final Value<String> customerId;
  final Value<String> userId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerUserTableCompanion({
    this.customerId = const Value.absent(),
    this.userId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerUserTableCompanion.insert({
    required String customerId,
    required String userId,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        userId = Value(userId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerUserDTO> custom({
    Expression<String>? customerId,
    Expression<String>? userId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (userId != null) 'USUARIO_ID': userId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerUserTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? userId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerUserTableCompanion(
      customerId: customerId ?? this.customerId,
      userId: userId ?? this.userId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (userId.present) {
      map['USUARIO_ID'] = Variable<String>(userId.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerUserTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('userId: $userId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerUserTableTable extends CustomerUserTable
    with TableInfo<$CustomerUserTableTable, CustomerUserDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerUserTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'USUARIO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [customerId, userId, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_USUARIO';
  @override
  String get actualTableName => 'CLIENTES_USUARIO';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerUserDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('USUARIO_ID')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['USUARIO_ID']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, userId};
  @override
  CustomerUserDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerUserDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      userId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}USUARIO_ID'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerUserTableTable createAlias(String alias) {
    return $CustomerUserTableTable(attachedDatabase, alias);
  }
}

class CustomerNetGroupTableCompanion
    extends UpdateCompanion<CustomerNetGroupDTO> {
  final Value<String> customerId;
  final Value<String> netGroupId;
  final Value<String?> netGroupDescription;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerNetGroupTableCompanion({
    this.customerId = const Value.absent(),
    this.netGroupId = const Value.absent(),
    this.netGroupDescription = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerNetGroupTableCompanion.insert({
    required String customerId,
    required String netGroupId,
    this.netGroupDescription = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        netGroupId = Value(netGroupId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerNetGroupDTO> custom({
    Expression<String>? customerId,
    Expression<String>? netGroupId,
    Expression<String>? netGroupDescription,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (netGroupId != null) 'GRUPO_NETO_ID': netGroupId,
      if (netGroupDescription != null)
        'GRUPO_NETO_DESCRIPCION': netGroupDescription,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerNetGroupTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? netGroupId,
      Value<String?>? netGroupDescription,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerNetGroupTableCompanion(
      customerId: customerId ?? this.customerId,
      netGroupId: netGroupId ?? this.netGroupId,
      netGroupDescription: netGroupDescription ?? this.netGroupDescription,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (netGroupId.present) {
      map['GRUPO_NETO_ID'] = Variable<String>(netGroupId.value);
    }
    if (netGroupDescription.present) {
      map['GRUPO_NETO_DESCRIPCION'] =
          Variable<String>(netGroupDescription.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerNetGroupTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('netGroupId: $netGroupId, ')
          ..write('netGroupDescription: $netGroupDescription, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerNetGroupTableTable extends CustomerNetGroupTable
    with TableInfo<$CustomerNetGroupTableTable, CustomerNetGroupDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerNetGroupTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _netGroupIdMeta = const VerificationMeta('netGroupId');
  @override
  late final GeneratedColumn<String> netGroupId = GeneratedColumn<String>(
      'GRUPO_NETO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _netGroupDescriptionMeta =
      const VerificationMeta('netGroupDescription');
  @override
  late final GeneratedColumn<String> netGroupDescription =
      GeneratedColumn<String>('GRUPO_NETO_DESCRIPCION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [customerId, netGroupId, netGroupDescription, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_GRUPOS_NETOS';
  @override
  String get actualTableName => 'CLIENTES_GRUPOS_NETOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerNetGroupDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_ID')) {
      context.handle(
          _netGroupIdMeta,
          netGroupId.isAcceptableOrUnknown(
              data['GRUPO_NETO_ID']!, _netGroupIdMeta));
    } else if (isInserting) {
      context.missing(_netGroupIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_DESCRIPCION')) {
      context.handle(
          _netGroupDescriptionMeta,
          netGroupDescription.isAcceptableOrUnknown(
              data['GRUPO_NETO_DESCRIPCION']!, _netGroupDescriptionMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, netGroupId};
  @override
  CustomerNetGroupDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerNetGroupDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      netGroupId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}GRUPO_NETO_ID'])!,
      netGroupDescription: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}GRUPO_NETO_DESCRIPCION']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerNetGroupTableTable createAlias(String alias) {
    return $CustomerNetGroupTableTable(attachedDatabase, alias);
  }
}

class FamilyTableCompanion extends UpdateCompanion<FamilyDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const FamilyTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  FamilyTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<FamilyDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'FAMILIA_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  FamilyTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return FamilyTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['FAMILIA_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilyTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $FamilyTableTable extends FamilyTable
    with TableInfo<$FamilyTableTable, FamilyDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilyTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String> descriptionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'FAMILIAS';
  @override
  String get actualTableName => 'FAMILIAS';
  @override
  VerificationContext validateIntegrity(Insertable<FamilyDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['FAMILIA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilyDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilyDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID'])!,
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $FamilyTableTable createAlias(String alias) {
    return $FamilyTableTable(attachedDatabase, alias);
  }
}

class SubfamilyTableCompanion extends UpdateCompanion<SubfamilyDTO> {
  final Value<String> id;
  final Value<String> familyId;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SubfamilyTableCompanion({
    this.id = const Value.absent(),
    this.familyId = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SubfamilyTableCompanion.insert({
    required String id,
    required String familyId,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        familyId = Value(familyId),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<SubfamilyDTO> custom({
    Expression<String>? id,
    Expression<String>? familyId,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'SUBFAMILIA_ID': id,
      if (familyId != null) 'FAMILIA_ID': familyId,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SubfamilyTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? familyId,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SubfamilyTableCompanion(
      id: id ?? this.id,
      familyId: familyId ?? this.familyId,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(id.value);
    }
    if (familyId.present) {
      map['FAMILIA_ID'] = Variable<String>(familyId.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubfamilyTableCompanion(')
          ..write('id: $id, ')
          ..write('familyId: $familyId, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SubfamilyTableTable extends SubfamilyTable
    with TableInfo<$SubfamilyTableTable, SubfamilyDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubfamilyTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'SUBFAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _familyIdMeta = const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<String> familyId = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String> descriptionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        familyId,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'SUBFAMILIAS';
  @override
  String get actualTableName => 'SUBFAMILIAS';
  @override
  VerificationContext validateIntegrity(Insertable<SubfamilyDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['SUBFAMILIA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familyIdMeta));
    } else if (isInserting) {
      context.missing(_familyIdMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, familyId};
  @override
  SubfamilyDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubfamilyDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SUBFAMILIA_ID'])!,
      familyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID'])!,
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SubfamilyTableTable createAlias(String alias) {
    return $SubfamilyTableTable(attachedDatabase, alias);
  }
}

class CustomerDiscountTableCompanion
    extends UpdateCompanion<CustomerDiscountDTO> {
  final Value<String> customerId;
  final Value<String> articleId;
  final Value<String> familyId;
  final Value<String> subfamilyId;
  final Value<double> quantityFrom;
  final Value<double> discount;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerDiscountTableCompanion({
    this.customerId = const Value.absent(),
    this.articleId = const Value.absent(),
    this.familyId = const Value.absent(),
    this.subfamilyId = const Value.absent(),
    this.quantityFrom = const Value.absent(),
    this.discount = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerDiscountTableCompanion.insert({
    required String customerId,
    required String articleId,
    required String familyId,
    required String subfamilyId,
    required double quantityFrom,
    required double discount,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        articleId = Value(articleId),
        familyId = Value(familyId),
        subfamilyId = Value(subfamilyId),
        quantityFrom = Value(quantityFrom),
        discount = Value(discount),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerDiscountDTO> custom({
    Expression<String>? customerId,
    Expression<String>? articleId,
    Expression<String>? familyId,
    Expression<String>? subfamilyId,
    Expression<double>? quantityFrom,
    Expression<double>? discount,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (familyId != null) 'FAMILIA_ID': familyId,
      if (subfamilyId != null) 'SUBFAMILIA_ID': subfamilyId,
      if (quantityFrom != null) 'CANTIDAD_DESDE': quantityFrom,
      if (discount != null) 'DESCUENTO': discount,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerDiscountTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? articleId,
      Value<String>? familyId,
      Value<String>? subfamilyId,
      Value<double>? quantityFrom,
      Value<double>? discount,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerDiscountTableCompanion(
      customerId: customerId ?? this.customerId,
      articleId: articleId ?? this.articleId,
      familyId: familyId ?? this.familyId,
      subfamilyId: subfamilyId ?? this.subfamilyId,
      quantityFrom: quantityFrom ?? this.quantityFrom,
      discount: discount ?? this.discount,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (familyId.present) {
      map['FAMILIA_ID'] = Variable<String>(familyId.value);
    }
    if (subfamilyId.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(subfamilyId.value);
    }
    if (quantityFrom.present) {
      map['CANTIDAD_DESDE'] = Variable<double>(quantityFrom.value);
    }
    if (discount.present) {
      map['DESCUENTO'] = Variable<double>(discount.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerDiscountTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('articleId: $articleId, ')
          ..write('familyId: $familyId, ')
          ..write('subfamilyId: $subfamilyId, ')
          ..write('quantityFrom: $quantityFrom, ')
          ..write('discount: $discount, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerDiscountTableTable extends CustomerDiscountTable
    with TableInfo<$CustomerDiscountTableTable, CustomerDiscountDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerDiscountTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _familyIdMeta = const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<String> familyId = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES FAMILIAS (FAMILIA_ID)');
  final VerificationMeta _subfamilyIdMeta =
      const VerificationMeta('subfamilyId');
  @override
  late final GeneratedColumn<String> subfamilyId = GeneratedColumn<String>(
      'SUBFAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES SUBFAMILIAS (SUBFAMILIA_ID)');
  final VerificationMeta _quantityFromMeta =
      const VerificationMeta('quantityFrom');
  @override
  late final GeneratedColumn<double> quantityFrom = GeneratedColumn<double>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _discountMeta = const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'DESCUENTO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        articleId,
        familyId,
        subfamilyId,
        quantityFrom,
        discount,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_DESCUENTOS';
  @override
  String get actualTableName => 'CLIENTES_DESCUENTOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerDiscountDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familyIdMeta));
    } else if (isInserting) {
      context.missing(_familyIdMeta);
    }
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _subfamilyIdMeta,
          subfamilyId.isAcceptableOrUnknown(
              data['SUBFAMILIA_ID']!, _subfamilyIdMeta));
    } else if (isInserting) {
      context.missing(_subfamilyIdMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _quantityFromMeta,
          quantityFrom.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _quantityFromMeta));
    } else if (isInserting) {
      context.missing(_quantityFromMeta);
    }
    if (data.containsKey('DESCUENTO')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['DESCUENTO']!, _discountMeta));
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {customerId, articleId, familyId, subfamilyId, quantityFrom};
  @override
  CustomerDiscountDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerDiscountDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      familyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID'])!,
      subfamilyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SUBFAMILIA_ID'])!,
      quantityFrom: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      discount: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerDiscountTableTable createAlias(String alias) {
    return $CustomerDiscountTableTable(attachedDatabase, alias);
  }
}

class CustomerContactTableCompanion
    extends UpdateCompanion<CustomerContactDTO> {
  final Value<String> customerId;
  final Value<String> contactId;
  final Value<String?> remarks;
  final Value<String?> name;
  final Value<String?> lastName1;
  final Value<String?> lastName2;
  final Value<String?> phone1;
  final Value<String?> phone2;
  final Value<String?> email;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerContactTableCompanion({
    this.customerId = const Value.absent(),
    this.contactId = const Value.absent(),
    this.remarks = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName1 = const Value.absent(),
    this.lastName2 = const Value.absent(),
    this.phone1 = const Value.absent(),
    this.phone2 = const Value.absent(),
    this.email = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerContactTableCompanion.insert({
    required String customerId,
    required String contactId,
    this.remarks = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName1 = const Value.absent(),
    this.lastName2 = const Value.absent(),
    this.phone1 = const Value.absent(),
    this.phone2 = const Value.absent(),
    this.email = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        contactId = Value(contactId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerContactDTO> custom({
    Expression<String>? customerId,
    Expression<String>? contactId,
    Expression<String>? remarks,
    Expression<String>? name,
    Expression<String>? lastName1,
    Expression<String>? lastName2,
    Expression<String>? phone1,
    Expression<String>? phone2,
    Expression<String>? email,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (contactId != null) 'CONTACTO_ID': contactId,
      if (remarks != null) 'OBSERVACIONES': remarks,
      if (name != null) 'NOMBRE': name,
      if (lastName1 != null) 'APELLIDO1': lastName1,
      if (lastName2 != null) 'APELLIDO2': lastName2,
      if (phone1 != null) 'TELEFONO1': phone1,
      if (phone2 != null) 'TELEFONO2': phone2,
      if (email != null) 'EMAIL': email,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerContactTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? contactId,
      Value<String?>? remarks,
      Value<String?>? name,
      Value<String?>? lastName1,
      Value<String?>? lastName2,
      Value<String?>? phone1,
      Value<String?>? phone2,
      Value<String?>? email,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerContactTableCompanion(
      customerId: customerId ?? this.customerId,
      contactId: contactId ?? this.contactId,
      remarks: remarks ?? this.remarks,
      name: name ?? this.name,
      lastName1: lastName1 ?? this.lastName1,
      lastName2: lastName2 ?? this.lastName2,
      phone1: phone1 ?? this.phone1,
      phone2: phone2 ?? this.phone2,
      email: email ?? this.email,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (contactId.present) {
      map['CONTACTO_ID'] = Variable<String>(contactId.value);
    }
    if (remarks.present) {
      map['OBSERVACIONES'] = Variable<String>(remarks.value);
    }
    if (name.present) {
      map['NOMBRE'] = Variable<String>(name.value);
    }
    if (lastName1.present) {
      map['APELLIDO1'] = Variable<String>(lastName1.value);
    }
    if (lastName2.present) {
      map['APELLIDO2'] = Variable<String>(lastName2.value);
    }
    if (phone1.present) {
      map['TELEFONO1'] = Variable<String>(phone1.value);
    }
    if (phone2.present) {
      map['TELEFONO2'] = Variable<String>(phone2.value);
    }
    if (email.present) {
      map['EMAIL'] = Variable<String>(email.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerContactTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('contactId: $contactId, ')
          ..write('remarks: $remarks, ')
          ..write('name: $name, ')
          ..write('lastName1: $lastName1, ')
          ..write('lastName2: $lastName2, ')
          ..write('phone1: $phone1, ')
          ..write('phone2: $phone2, ')
          ..write('email: $email, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerContactTableTable extends CustomerContactTable
    with TableInfo<$CustomerContactTableTable, CustomerContactDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerContactTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _contactIdMeta = const VerificationMeta('contactId');
  @override
  late final GeneratedColumn<String> contactId = GeneratedColumn<String>(
      'CONTACTO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _remarksMeta = const VerificationMeta('remarks');
  @override
  late final GeneratedColumn<String> remarks = GeneratedColumn<String>(
      'OBSERVACIONES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'NOMBRE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastName1Meta = const VerificationMeta('lastName1');
  @override
  late final GeneratedColumn<String> lastName1 = GeneratedColumn<String>(
      'APELLIDO1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastName2Meta = const VerificationMeta('lastName2');
  @override
  late final GeneratedColumn<String> lastName2 = GeneratedColumn<String>(
      'APELLIDO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _phone1Meta = const VerificationMeta('phone1');
  @override
  late final GeneratedColumn<String> phone1 = GeneratedColumn<String>(
      'TELEFONO1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _phone2Meta = const VerificationMeta('phone2');
  @override
  late final GeneratedColumn<String> phone2 = GeneratedColumn<String>(
      'TELEFONO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'EMAIL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        contactId,
        remarks,
        name,
        lastName1,
        lastName2,
        phone1,
        phone2,
        email,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_CONTACTOS';
  @override
  String get actualTableName => 'CLIENTES_CONTACTOS';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerContactDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('CONTACTO_ID')) {
      context.handle(
          _contactIdMeta,
          contactId.isAcceptableOrUnknown(
              data['CONTACTO_ID']!, _contactIdMeta));
    } else if (isInserting) {
      context.missing(_contactIdMeta);
    }
    if (data.containsKey('OBSERVACIONES')) {
      context.handle(_remarksMeta,
          remarks.isAcceptableOrUnknown(data['OBSERVACIONES']!, _remarksMeta));
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['NOMBRE']!, _nameMeta));
    }
    if (data.containsKey('APELLIDO1')) {
      context.handle(_lastName1Meta,
          lastName1.isAcceptableOrUnknown(data['APELLIDO1']!, _lastName1Meta));
    }
    if (data.containsKey('APELLIDO2')) {
      context.handle(_lastName2Meta,
          lastName2.isAcceptableOrUnknown(data['APELLIDO2']!, _lastName2Meta));
    }
    if (data.containsKey('TELEFONO1')) {
      context.handle(_phone1Meta,
          phone1.isAcceptableOrUnknown(data['TELEFONO1']!, _phone1Meta));
    }
    if (data.containsKey('TELEFONO2')) {
      context.handle(_phone2Meta,
          phone2.isAcceptableOrUnknown(data['TELEFONO2']!, _phone2Meta));
    }
    if (data.containsKey('EMAIL')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['EMAIL']!, _emailMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, contactId};
  @override
  CustomerContactDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerContactDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      contactId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CONTACTO_ID'])!,
      remarks: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}OBSERVACIONES']),
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE']),
      lastName1: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}APELLIDO1']),
      lastName2: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}APELLIDO2']),
      phone1: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TELEFONO1']),
      phone2: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TELEFONO2']),
      email: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMAIL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerContactTableTable createAlias(String alias) {
    return $CustomerContactTableTable(attachedDatabase, alias);
  }
}

class CustomerAddressTableCompanion
    extends UpdateCompanion<CustomerAddressDTO> {
  final Value<String> customerId;
  final Value<String> addressId;
  final Value<String?> name;
  final Value<String?> address1;
  final Value<String?> address2;
  final Value<String?> zipCode;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> countryId;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerAddressTableCompanion({
    this.customerId = const Value.absent(),
    this.addressId = const Value.absent(),
    this.name = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerAddressTableCompanion.insert({
    required String customerId,
    required String addressId,
    this.name = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    required double latitude,
    required double longitude,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        addressId = Value(addressId),
        latitude = Value(latitude),
        longitude = Value(longitude),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerAddressDTO> custom({
    Expression<String>? customerId,
    Expression<String>? addressId,
    Expression<String>? name,
    Expression<String>? address1,
    Expression<String>? address2,
    Expression<String>? zipCode,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? countryId,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (addressId != null) 'DIRECCION_ID': addressId,
      if (name != null) 'NOMBRE': name,
      if (address1 != null) 'DIRECCION1': address1,
      if (address2 != null) 'DIRECCION2': address2,
      if (zipCode != null) 'CODIGO_POSTAL': zipCode,
      if (city != null) 'POBLACION': city,
      if (state != null) 'PROVINCIA': state,
      if (countryId != null) 'PAIS_ID': countryId,
      if (latitude != null) 'LATITUD': latitude,
      if (longitude != null) 'LONGITUD': longitude,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerAddressTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? addressId,
      Value<String?>? name,
      Value<String?>? address1,
      Value<String?>? address2,
      Value<String?>? zipCode,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? countryId,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerAddressTableCompanion(
      customerId: customerId ?? this.customerId,
      addressId: addressId ?? this.addressId,
      name: name ?? this.name,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      state: state ?? this.state,
      countryId: countryId ?? this.countryId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (addressId.present) {
      map['DIRECCION_ID'] = Variable<String>(addressId.value);
    }
    if (name.present) {
      map['NOMBRE'] = Variable<String>(name.value);
    }
    if (address1.present) {
      map['DIRECCION1'] = Variable<String>(address1.value);
    }
    if (address2.present) {
      map['DIRECCION2'] = Variable<String>(address2.value);
    }
    if (zipCode.present) {
      map['CODIGO_POSTAL'] = Variable<String>(zipCode.value);
    }
    if (city.present) {
      map['POBLACION'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['PROVINCIA'] = Variable<String>(state.value);
    }
    if (countryId.present) {
      map['PAIS_ID'] = Variable<String>(countryId.value);
    }
    if (latitude.present) {
      map['LATITUD'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['LONGITUD'] = Variable<double>(longitude.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerAddressTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('addressId: $addressId, ')
          ..write('name: $name, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('zipCode: $zipCode, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('countryId: $countryId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerAddressTableTable extends CustomerAddressTable
    with TableInfo<$CustomerAddressTableTable, CustomerAddressDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerAddressTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<String> addressId = GeneratedColumn<String>(
      'DIRECCION_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'NOMBRE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _address1Meta = const VerificationMeta('address1');
  @override
  late final GeneratedColumn<String> address1 = GeneratedColumn<String>(
      'DIRECCION1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _address2Meta = const VerificationMeta('address2');
  @override
  late final GeneratedColumn<String> address2 = GeneratedColumn<String>(
      'DIRECCION2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _zipCodeMeta = const VerificationMeta('zipCode');
  @override
  late final GeneratedColumn<String> zipCode = GeneratedColumn<String>(
      'CODIGO_POSTAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'POBLACION', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'PROVINCIA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _countryIdMeta = const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'LATITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'LONGITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        addressId,
        name,
        address1,
        address2,
        zipCode,
        city,
        state,
        countryId,
        latitude,
        longitude,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_DIRECCIONES_ENVIO';
  @override
  String get actualTableName => 'CLIENTES_DIRECCIONES_ENVIO';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerAddressDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _addressIdMeta,
          addressId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _addressIdMeta));
    } else if (isInserting) {
      context.missing(_addressIdMeta);
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['NOMBRE']!, _nameMeta));
    }
    if (data.containsKey('DIRECCION1')) {
      context.handle(_address1Meta,
          address1.isAcceptableOrUnknown(data['DIRECCION1']!, _address1Meta));
    }
    if (data.containsKey('DIRECCION2')) {
      context.handle(_address2Meta,
          address2.isAcceptableOrUnknown(data['DIRECCION2']!, _address2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['CODIGO_POSTAL']!, _zipCodeMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['POBLACION']!, _cityMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_stateMeta,
          state.isAcceptableOrUnknown(data['PROVINCIA']!, _stateMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['PAIS_ID']!, _countryIdMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['LATITUD']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['LONGITUD']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, addressId};
  @override
  CustomerAddressDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerAddressDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      addressId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION_ID'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE']),
      address1: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION1']),
      address2: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION2']),
      zipCode: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL']),
      city: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}POBLACION']),
      state: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PROVINCIA']),
      countryId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID']),
      latitude: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD'])!,
      longitude: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LONGITUD'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerAddressTableTable createAlias(String alias) {
    return $CustomerAddressTableTable(attachedDatabase, alias);
  }
}

class CustomerPendingPaymentTableCompanion
    extends UpdateCompanion<CustomerPendingPaymentDTO> {
  final Value<String> customerId;
  final Value<String> effectId;
  final Value<String?> invoiceId;
  final Value<DateTime?> invoiceDate;
  final Value<DateTime?> expirationDate;
  final Value<String?> collectionMethodId;
  final Value<String?> collectionStatusId;
  final Value<double?> amount;
  final Value<DateTime?> initialExpirationDate;
  final Value<String?> expirationJBM;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerPendingPaymentTableCompanion({
    this.customerId = const Value.absent(),
    this.effectId = const Value.absent(),
    this.invoiceId = const Value.absent(),
    this.invoiceDate = const Value.absent(),
    this.expirationDate = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    this.collectionStatusId = const Value.absent(),
    this.amount = const Value.absent(),
    this.initialExpirationDate = const Value.absent(),
    this.expirationJBM = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerPendingPaymentTableCompanion.insert({
    required String customerId,
    required String effectId,
    this.invoiceId = const Value.absent(),
    this.invoiceDate = const Value.absent(),
    this.expirationDate = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    this.collectionStatusId = const Value.absent(),
    this.amount = const Value.absent(),
    this.initialExpirationDate = const Value.absent(),
    this.expirationJBM = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        effectId = Value(effectId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerPendingPaymentDTO> custom({
    Expression<String>? customerId,
    Expression<String>? effectId,
    Expression<String>? invoiceId,
    Expression<DateTime>? invoiceDate,
    Expression<DateTime>? expirationDate,
    Expression<String>? collectionMethodId,
    Expression<String>? collectionStatusId,
    Expression<double>? amount,
    Expression<DateTime>? initialExpirationDate,
    Expression<String>? expirationJBM,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (effectId != null) 'EFECTO_ID': effectId,
      if (invoiceId != null) 'FACTURA_ID': invoiceId,
      if (invoiceDate != null) 'FECHA_FACTURA': invoiceDate,
      if (expirationDate != null) 'FECHA_VENCIMIENTO': expirationDate,
      if (collectionMethodId != null) 'METODO_COBRO_ID': collectionMethodId,
      if (collectionStatusId != null) 'ESTADO_COBRO_ID': collectionStatusId,
      if (amount != null) 'IMPORTE': amount,
      if (initialExpirationDate != null)
        'FECHA_VENCIMIENTO_INICIAL': initialExpirationDate,
      if (expirationJBM != null) 'VENCIDO_JBM': expirationJBM,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerPendingPaymentTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? effectId,
      Value<String?>? invoiceId,
      Value<DateTime?>? invoiceDate,
      Value<DateTime?>? expirationDate,
      Value<String?>? collectionMethodId,
      Value<String?>? collectionStatusId,
      Value<double?>? amount,
      Value<DateTime?>? initialExpirationDate,
      Value<String?>? expirationJBM,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerPendingPaymentTableCompanion(
      customerId: customerId ?? this.customerId,
      effectId: effectId ?? this.effectId,
      invoiceId: invoiceId ?? this.invoiceId,
      invoiceDate: invoiceDate ?? this.invoiceDate,
      expirationDate: expirationDate ?? this.expirationDate,
      collectionMethodId: collectionMethodId ?? this.collectionMethodId,
      collectionStatusId: collectionStatusId ?? this.collectionStatusId,
      amount: amount ?? this.amount,
      initialExpirationDate:
          initialExpirationDate ?? this.initialExpirationDate,
      expirationJBM: expirationJBM ?? this.expirationJBM,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (effectId.present) {
      map['EFECTO_ID'] = Variable<String>(effectId.value);
    }
    if (invoiceId.present) {
      map['FACTURA_ID'] = Variable<String>(invoiceId.value);
    }
    if (invoiceDate.present) {
      map['FECHA_FACTURA'] = Variable<DateTime>(invoiceDate.value);
    }
    if (expirationDate.present) {
      map['FECHA_VENCIMIENTO'] = Variable<DateTime>(expirationDate.value);
    }
    if (collectionMethodId.present) {
      map['METODO_COBRO_ID'] = Variable<String>(collectionMethodId.value);
    }
    if (collectionStatusId.present) {
      map['ESTADO_COBRO_ID'] = Variable<String>(collectionStatusId.value);
    }
    if (amount.present) {
      map['IMPORTE'] = Variable<double>(amount.value);
    }
    if (initialExpirationDate.present) {
      map['FECHA_VENCIMIENTO_INICIAL'] =
          Variable<DateTime>(initialExpirationDate.value);
    }
    if (expirationJBM.present) {
      map['VENCIDO_JBM'] = Variable<String>(expirationJBM.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerPendingPaymentTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('effectId: $effectId, ')
          ..write('invoiceId: $invoiceId, ')
          ..write('invoiceDate: $invoiceDate, ')
          ..write('expirationDate: $expirationDate, ')
          ..write('collectionMethodId: $collectionMethodId, ')
          ..write('collectionStatusId: $collectionStatusId, ')
          ..write('amount: $amount, ')
          ..write('initialExpirationDate: $initialExpirationDate, ')
          ..write('expirationJBM: $expirationJBM, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerPendingPaymentTableTable extends CustomerPendingPaymentTable
    with
        TableInfo<$CustomerPendingPaymentTableTable,
            CustomerPendingPaymentDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerPendingPaymentTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _effectIdMeta = const VerificationMeta('effectId');
  @override
  late final GeneratedColumn<String> effectId = GeneratedColumn<String>(
      'EFECTO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _invoiceIdMeta = const VerificationMeta('invoiceId');
  @override
  late final GeneratedColumn<String> invoiceId = GeneratedColumn<String>(
      'FACTURA_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _invoiceDateMeta =
      const VerificationMeta('invoiceDate');
  @override
  late final GeneratedColumn<DateTime> invoiceDate = GeneratedColumn<DateTime>(
      'FECHA_FACTURA', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _expirationDateMeta =
      const VerificationMeta('expirationDate');
  @override
  late final GeneratedColumn<DateTime> expirationDate =
      GeneratedColumn<DateTime>('FECHA_VENCIMIENTO', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _collectionMethodIdMeta =
      const VerificationMeta('collectionMethodId');
  @override
  late final GeneratedColumn<String> collectionMethodId =
      GeneratedColumn<String>('METODO_COBRO_ID', aliasedName, true,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES METODOS_COBRO (METODO_COBRO_ID)');
  final VerificationMeta _collectionStatusIdMeta =
      const VerificationMeta('collectionStatusId');
  @override
  late final GeneratedColumn<String> collectionStatusId =
      GeneratedColumn<String>('ESTADO_COBRO_ID', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'IMPORTE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _initialExpirationDateMeta =
      const VerificationMeta('initialExpirationDate');
  @override
  late final GeneratedColumn<DateTime> initialExpirationDate =
      GeneratedColumn<DateTime>('FECHA_VENCIMIENTO_INICIAL', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _expirationJBMMeta =
      const VerificationMeta('expirationJBM');
  @override
  late final GeneratedColumn<String> expirationJBM = GeneratedColumn<String>(
      'VENCIDO_JBM', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        effectId,
        invoiceId,
        invoiceDate,
        expirationDate,
        collectionMethodId,
        collectionStatusId,
        amount,
        initialExpirationDate,
        expirationJBM,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_PAGOS_PENDIENTES';
  @override
  String get actualTableName => 'CLIENTES_PAGOS_PENDIENTES';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerPendingPaymentDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('EFECTO_ID')) {
      context.handle(_effectIdMeta,
          effectId.isAcceptableOrUnknown(data['EFECTO_ID']!, _effectIdMeta));
    } else if (isInserting) {
      context.missing(_effectIdMeta);
    }
    if (data.containsKey('FACTURA_ID')) {
      context.handle(_invoiceIdMeta,
          invoiceId.isAcceptableOrUnknown(data['FACTURA_ID']!, _invoiceIdMeta));
    }
    if (data.containsKey('FECHA_FACTURA')) {
      context.handle(
          _invoiceDateMeta,
          invoiceDate.isAcceptableOrUnknown(
              data['FECHA_FACTURA']!, _invoiceDateMeta));
    }
    if (data.containsKey('FECHA_VENCIMIENTO')) {
      context.handle(
          _expirationDateMeta,
          expirationDate.isAcceptableOrUnknown(
              data['FECHA_VENCIMIENTO']!, _expirationDateMeta));
    }
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _collectionMethodIdMeta,
          collectionMethodId.isAcceptableOrUnknown(
              data['METODO_COBRO_ID']!, _collectionMethodIdMeta));
    }
    if (data.containsKey('ESTADO_COBRO_ID')) {
      context.handle(
          _collectionStatusIdMeta,
          collectionStatusId.isAcceptableOrUnknown(
              data['ESTADO_COBRO_ID']!, _collectionStatusIdMeta));
    }
    if (data.containsKey('IMPORTE')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['IMPORTE']!, _amountMeta));
    }
    if (data.containsKey('FECHA_VENCIMIENTO_INICIAL')) {
      context.handle(
          _initialExpirationDateMeta,
          initialExpirationDate.isAcceptableOrUnknown(
              data['FECHA_VENCIMIENTO_INICIAL']!, _initialExpirationDateMeta));
    }
    if (data.containsKey('VENCIDO_JBM')) {
      context.handle(
          _expirationJBMMeta,
          expirationJBM.isAcceptableOrUnknown(
              data['VENCIDO_JBM']!, _expirationJBMMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, effectId};
  @override
  CustomerPendingPaymentDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerPendingPaymentDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      effectId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EFECTO_ID'])!,
      invoiceId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FACTURA_ID']),
      invoiceDate: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_FACTURA']),
      expirationDate: attachedDatabase.options.types.read(
          DriftSqlType.dateTime, data['${effectivePrefix}FECHA_VENCIMIENTO']),
      collectionMethodId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}METODO_COBRO_ID']),
      collectionStatusId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ESTADO_COBRO_ID']),
      amount: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IMPORTE']),
      initialExpirationDate: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}FECHA_VENCIMIENTO_INICIAL']),
      expirationJBM: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}VENCIDO_JBM']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerPendingPaymentTableTable createAlias(String alias) {
    return $CustomerPendingPaymentTableTable(attachedDatabase, alias);
  }
}

class CustomerNetPriceTableCompanion
    extends UpdateCompanion<CustomerNetPriceDTO> {
  final Value<String> customerId;
  final Value<String> articleId;
  final Value<double> quantityFrom;
  final Value<double> price;
  final Value<double?> priceType;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerNetPriceTableCompanion({
    this.customerId = const Value.absent(),
    this.articleId = const Value.absent(),
    this.quantityFrom = const Value.absent(),
    this.price = const Value.absent(),
    this.priceType = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerNetPriceTableCompanion.insert({
    required String customerId,
    required String articleId,
    required double quantityFrom,
    required double price,
    this.priceType = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        articleId = Value(articleId),
        quantityFrom = Value(quantityFrom),
        price = Value(price),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerNetPriceDTO> custom({
    Expression<String>? customerId,
    Expression<String>? articleId,
    Expression<double>? quantityFrom,
    Expression<double>? price,
    Expression<double>? priceType,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (quantityFrom != null) 'CANTIDAD_DESDE': quantityFrom,
      if (price != null) 'PRECIO': price,
      if (priceType != null) 'TIPO_PRECIO': priceType,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerNetPriceTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? articleId,
      Value<double>? quantityFrom,
      Value<double>? price,
      Value<double?>? priceType,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerNetPriceTableCompanion(
      customerId: customerId ?? this.customerId,
      articleId: articleId ?? this.articleId,
      quantityFrom: quantityFrom ?? this.quantityFrom,
      price: price ?? this.price,
      priceType: priceType ?? this.priceType,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (quantityFrom.present) {
      map['CANTIDAD_DESDE'] = Variable<double>(quantityFrom.value);
    }
    if (price.present) {
      map['PRECIO'] = Variable<double>(price.value);
    }
    if (priceType.present) {
      map['TIPO_PRECIO'] = Variable<double>(priceType.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerNetPriceTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('articleId: $articleId, ')
          ..write('quantityFrom: $quantityFrom, ')
          ..write('price: $price, ')
          ..write('priceType: $priceType, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerNetPriceTableTable extends CustomerNetPriceTable
    with TableInfo<$CustomerNetPriceTableTable, CustomerNetPriceDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerNetPriceTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _quantityFromMeta =
      const VerificationMeta('quantityFrom');
  @override
  late final GeneratedColumn<double> quantityFrom = GeneratedColumn<double>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'PRECIO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceTypeMeta = const VerificationMeta('priceType');
  @override
  late final GeneratedColumn<double> priceType = GeneratedColumn<double>(
      'TIPO_PRECIO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        articleId,
        quantityFrom,
        price,
        priceType,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_PRECIOS_NETOS';
  @override
  String get actualTableName => 'CLIENTES_PRECIOS_NETOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerNetPriceDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _quantityFromMeta,
          quantityFrom.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _quantityFromMeta));
    } else if (isInserting) {
      context.missing(_quantityFromMeta);
    }
    if (data.containsKey('PRECIO')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['PRECIO']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _priceTypeMeta,
          priceType.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _priceTypeMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, articleId, quantityFrom};
  @override
  CustomerNetPriceDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerNetPriceDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      quantityFrom: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      price: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO'])!,
      priceType: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TIPO_PRECIO']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerNetPriceTableTable createAlias(String alias) {
    return $CustomerNetPriceTableTable(attachedDatabase, alias);
  }
}

class CustomerRappelTableCompanion extends UpdateCompanion<CustomerRappelDTO> {
  final Value<String> customerId;
  final Value<String> rappelId;
  final Value<String> description;
  final Value<DateTime> dateFrom;
  final Value<DateTime?> dateTo;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerRappelTableCompanion({
    this.customerId = const Value.absent(),
    this.rappelId = const Value.absent(),
    this.description = const Value.absent(),
    this.dateFrom = const Value.absent(),
    this.dateTo = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerRappelTableCompanion.insert({
    required String customerId,
    required String rappelId,
    required String description,
    required DateTime dateFrom,
    this.dateTo = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        rappelId = Value(rappelId),
        description = Value(description),
        dateFrom = Value(dateFrom),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerRappelDTO> custom({
    Expression<String>? customerId,
    Expression<String>? rappelId,
    Expression<String>? description,
    Expression<DateTime>? dateFrom,
    Expression<DateTime>? dateTo,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (rappelId != null) 'RAPPEL_ID': rappelId,
      if (description != null) 'DESCRIPCION': description,
      if (dateFrom != null) 'FECHA_DESDE': dateFrom,
      if (dateTo != null) 'FECHA_HASTA': dateTo,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerRappelTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? rappelId,
      Value<String>? description,
      Value<DateTime>? dateFrom,
      Value<DateTime?>? dateTo,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerRappelTableCompanion(
      customerId: customerId ?? this.customerId,
      rappelId: rappelId ?? this.rappelId,
      description: description ?? this.description,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (rappelId.present) {
      map['RAPPEL_ID'] = Variable<String>(rappelId.value);
    }
    if (description.present) {
      map['DESCRIPCION'] = Variable<String>(description.value);
    }
    if (dateFrom.present) {
      map['FECHA_DESDE'] = Variable<DateTime>(dateFrom.value);
    }
    if (dateTo.present) {
      map['FECHA_HASTA'] = Variable<DateTime>(dateTo.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerRappelTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('rappelId: $rappelId, ')
          ..write('description: $description, ')
          ..write('dateFrom: $dateFrom, ')
          ..write('dateTo: $dateTo, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerRappelTableTable extends CustomerRappelTable
    with TableInfo<$CustomerRappelTableTable, CustomerRappelDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerRappelTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _rappelIdMeta = const VerificationMeta('rappelId');
  @override
  late final GeneratedColumn<String> rappelId = GeneratedColumn<String>(
      'RAPPEL_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'DESCRIPCION', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _dateFromMeta = const VerificationMeta('dateFrom');
  @override
  late final GeneratedColumn<DateTime> dateFrom = GeneratedColumn<DateTime>(
      'FECHA_DESDE', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _dateToMeta = const VerificationMeta('dateTo');
  @override
  late final GeneratedColumn<DateTime> dateTo = GeneratedColumn<DateTime>(
      'FECHA_HASTA', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        rappelId,
        description,
        dateFrom,
        dateTo,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_RAPPELS';
  @override
  String get actualTableName => 'CLIENTES_RAPPELS';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerRappelDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('RAPPEL_ID')) {
      context.handle(_rappelIdMeta,
          rappelId.isAcceptableOrUnknown(data['RAPPEL_ID']!, _rappelIdMeta));
    } else if (isInserting) {
      context.missing(_rappelIdMeta);
    }
    if (data.containsKey('DESCRIPCION')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['DESCRIPCION']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('FECHA_DESDE')) {
      context.handle(_dateFromMeta,
          dateFrom.isAcceptableOrUnknown(data['FECHA_DESDE']!, _dateFromMeta));
    } else if (isInserting) {
      context.missing(_dateFromMeta);
    }
    if (data.containsKey('FECHA_HASTA')) {
      context.handle(_dateToMeta,
          dateTo.isAcceptableOrUnknown(data['FECHA_HASTA']!, _dateToMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, rappelId};
  @override
  CustomerRappelDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerRappelDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      rappelId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RAPPEL_ID'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION'])!,
      dateFrom: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_DESDE'])!,
      dateTo: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_HASTA']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerRappelTableTable createAlias(String alias) {
    return $CustomerRappelTableTable(attachedDatabase, alias);
  }
}

class TopArticleTableCompanion extends UpdateCompanion<TopArticleDTO> {
  final Value<String> articleId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const TopArticleTableCompanion({
    this.articleId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  TopArticleTableCompanion.insert({
    required String articleId,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articleId = Value(articleId),
        lastUpdated = Value(lastUpdated);
  static Insertable<TopArticleDTO> custom({
    Expression<String>? articleId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  TopArticleTableCompanion copyWith(
      {Value<String>? articleId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return TopArticleTableCompanion(
      articleId: articleId ?? this.articleId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopArticleTableCompanion(')
          ..write('articleId: $articleId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $TopArticleTableTable extends TopArticleTable
    with TableInfo<$TopArticleTableTable, TopArticleDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TopArticleTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [articleId, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ESTADISTICAS_ARTICULOS_TOP';
  @override
  String get actualTableName => 'ESTADISTICAS_ARTICULOS_TOP';
  @override
  VerificationContext validateIntegrity(Insertable<TopArticleDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId};
  @override
  TopArticleDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TopArticleDTO(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $TopArticleTableTable createAlias(String alias) {
    return $TopArticleTableTable(attachedDatabase, alias);
  }
}

class ArticleTableCompanion extends UpdateCompanion<ArticleDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<String?> familyId;
  final Value<String?> subfamilyId;
  final Value<double> minimumSales;
  final Value<double> multipleSales;
  final Value<double> subboxUnits;
  final Value<double> boxUnits;
  final Value<double> paletUnits;
  final Value<String> isActiveWeb;
  final Value<String> isActiveApp;
  final Value<String> inCatalogue;
  final Value<String> discontinued;
  final Value<String?> cataloguePage;
  final Value<String?> cataloguePage2;
  final Value<double> weightKg;
  final Value<double> largeCm;
  final Value<double> widthCm;
  final Value<double> heightCm;
  final Value<String?> summaryES;
  final Value<String?> summaryEN;
  final Value<String?> summaryFR;
  final Value<String?> summaryDE;
  final Value<String?> summaryCA;
  final Value<String?> summaryGB;
  final Value<String?> summaryHU;
  final Value<String?> summaryIT;
  final Value<String?> summaryNL;
  final Value<String?> summaryPL;
  final Value<String?> summaryPT;
  final Value<String?> summaryRO;
  final Value<String?> summaryRU;
  final Value<String?> summaryCN;
  final Value<String?> summaryEL;
  final Value<double?> availableStock;
  final Value<double?> currentSales;
  final Value<double?> previousSales;
  final Value<double?> purchasesDeliveryQuantity1;
  final Value<double?> purchasesDeliveryQuantity2;
  final Value<double?> purchasesDeliveryQuantity3;
  final Value<double?> purchasesDeliveryQuantityMore3;
  final Value<DateTime?> purchasesDeliveryDate1;
  final Value<DateTime?> purchasesDeliveryDate2;
  final Value<DateTime?> purchasesDeliveryDate3;
  final Value<String?> purchasesDeliveryStatus1;
  final Value<String?> purchasesDeliveryStatus2;
  final Value<String?> purchasesDeliveryStatus3;
  final Value<String?> principalImage;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticleTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.familyId = const Value.absent(),
    this.subfamilyId = const Value.absent(),
    this.minimumSales = const Value.absent(),
    this.multipleSales = const Value.absent(),
    this.subboxUnits = const Value.absent(),
    this.boxUnits = const Value.absent(),
    this.paletUnits = const Value.absent(),
    this.isActiveWeb = const Value.absent(),
    this.isActiveApp = const Value.absent(),
    this.inCatalogue = const Value.absent(),
    this.discontinued = const Value.absent(),
    this.cataloguePage = const Value.absent(),
    this.cataloguePage2 = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.largeCm = const Value.absent(),
    this.widthCm = const Value.absent(),
    this.heightCm = const Value.absent(),
    this.summaryES = const Value.absent(),
    this.summaryEN = const Value.absent(),
    this.summaryFR = const Value.absent(),
    this.summaryDE = const Value.absent(),
    this.summaryCA = const Value.absent(),
    this.summaryGB = const Value.absent(),
    this.summaryHU = const Value.absent(),
    this.summaryIT = const Value.absent(),
    this.summaryNL = const Value.absent(),
    this.summaryPL = const Value.absent(),
    this.summaryPT = const Value.absent(),
    this.summaryRO = const Value.absent(),
    this.summaryRU = const Value.absent(),
    this.summaryCN = const Value.absent(),
    this.summaryEL = const Value.absent(),
    this.availableStock = const Value.absent(),
    this.currentSales = const Value.absent(),
    this.previousSales = const Value.absent(),
    this.purchasesDeliveryQuantity1 = const Value.absent(),
    this.purchasesDeliveryQuantity2 = const Value.absent(),
    this.purchasesDeliveryQuantity3 = const Value.absent(),
    this.purchasesDeliveryQuantityMore3 = const Value.absent(),
    this.purchasesDeliveryDate1 = const Value.absent(),
    this.purchasesDeliveryDate2 = const Value.absent(),
    this.purchasesDeliveryDate3 = const Value.absent(),
    this.purchasesDeliveryStatus1 = const Value.absent(),
    this.purchasesDeliveryStatus2 = const Value.absent(),
    this.purchasesDeliveryStatus3 = const Value.absent(),
    this.principalImage = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticleTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.familyId = const Value.absent(),
    this.subfamilyId = const Value.absent(),
    required double minimumSales,
    required double multipleSales,
    required double subboxUnits,
    required double boxUnits,
    required double paletUnits,
    required String isActiveWeb,
    required String isActiveApp,
    required String inCatalogue,
    required String discontinued,
    this.cataloguePage = const Value.absent(),
    this.cataloguePage2 = const Value.absent(),
    required double weightKg,
    required double largeCm,
    required double widthCm,
    required double heightCm,
    this.summaryES = const Value.absent(),
    this.summaryEN = const Value.absent(),
    this.summaryFR = const Value.absent(),
    this.summaryDE = const Value.absent(),
    this.summaryCA = const Value.absent(),
    this.summaryGB = const Value.absent(),
    this.summaryHU = const Value.absent(),
    this.summaryIT = const Value.absent(),
    this.summaryNL = const Value.absent(),
    this.summaryPL = const Value.absent(),
    this.summaryPT = const Value.absent(),
    this.summaryRO = const Value.absent(),
    this.summaryRU = const Value.absent(),
    this.summaryCN = const Value.absent(),
    this.summaryEL = const Value.absent(),
    this.availableStock = const Value.absent(),
    this.currentSales = const Value.absent(),
    this.previousSales = const Value.absent(),
    this.purchasesDeliveryQuantity1 = const Value.absent(),
    this.purchasesDeliveryQuantity2 = const Value.absent(),
    this.purchasesDeliveryQuantity3 = const Value.absent(),
    this.purchasesDeliveryQuantityMore3 = const Value.absent(),
    this.purchasesDeliveryDate1 = const Value.absent(),
    this.purchasesDeliveryDate2 = const Value.absent(),
    this.purchasesDeliveryDate3 = const Value.absent(),
    this.purchasesDeliveryStatus1 = const Value.absent(),
    this.purchasesDeliveryStatus2 = const Value.absent(),
    this.purchasesDeliveryStatus3 = const Value.absent(),
    this.principalImage = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        minimumSales = Value(minimumSales),
        multipleSales = Value(multipleSales),
        subboxUnits = Value(subboxUnits),
        boxUnits = Value(boxUnits),
        paletUnits = Value(paletUnits),
        isActiveWeb = Value(isActiveWeb),
        isActiveApp = Value(isActiveApp),
        inCatalogue = Value(inCatalogue),
        discontinued = Value(discontinued),
        weightKg = Value(weightKg),
        largeCm = Value(largeCm),
        widthCm = Value(widthCm),
        heightCm = Value(heightCm),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticleDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String>? descriptionEN,
    Expression<String>? descriptionFR,
    Expression<String>? descriptionDE,
    Expression<String>? descriptionCA,
    Expression<String>? descriptionGB,
    Expression<String>? descriptionHU,
    Expression<String>? descriptionIT,
    Expression<String>? descriptionNL,
    Expression<String>? descriptionPL,
    Expression<String>? descriptionPT,
    Expression<String>? descriptionRO,
    Expression<String>? descriptionRU,
    Expression<String>? descriptionCN,
    Expression<String>? descriptionEL,
    Expression<String>? familyId,
    Expression<String>? subfamilyId,
    Expression<double>? minimumSales,
    Expression<double>? multipleSales,
    Expression<double>? subboxUnits,
    Expression<double>? boxUnits,
    Expression<double>? paletUnits,
    Expression<String>? isActiveWeb,
    Expression<String>? isActiveApp,
    Expression<String>? inCatalogue,
    Expression<String>? discontinued,
    Expression<String>? cataloguePage,
    Expression<String>? cataloguePage2,
    Expression<double>? weightKg,
    Expression<double>? largeCm,
    Expression<double>? widthCm,
    Expression<double>? heightCm,
    Expression<String>? summaryES,
    Expression<String>? summaryEN,
    Expression<String>? summaryFR,
    Expression<String>? summaryDE,
    Expression<String>? summaryCA,
    Expression<String>? summaryGB,
    Expression<String>? summaryHU,
    Expression<String>? summaryIT,
    Expression<String>? summaryNL,
    Expression<String>? summaryPL,
    Expression<String>? summaryPT,
    Expression<String>? summaryRO,
    Expression<String>? summaryRU,
    Expression<String>? summaryCN,
    Expression<String>? summaryEL,
    Expression<double>? availableStock,
    Expression<double>? currentSales,
    Expression<double>? previousSales,
    Expression<double>? purchasesDeliveryQuantity1,
    Expression<double>? purchasesDeliveryQuantity2,
    Expression<double>? purchasesDeliveryQuantity3,
    Expression<double>? purchasesDeliveryQuantityMore3,
    Expression<DateTime>? purchasesDeliveryDate1,
    Expression<DateTime>? purchasesDeliveryDate2,
    Expression<DateTime>? purchasesDeliveryDate3,
    Expression<String>? purchasesDeliveryStatus1,
    Expression<String>? purchasesDeliveryStatus2,
    Expression<String>? purchasesDeliveryStatus3,
    Expression<String>? principalImage,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ARTICULO_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (familyId != null) 'FAMILIA_ID': familyId,
      if (subfamilyId != null) 'SUBFAMILIA_ID': subfamilyId,
      if (minimumSales != null) 'VENTA_MINIMO': minimumSales,
      if (multipleSales != null) 'VENTA_MULTIPLO': multipleSales,
      if (subboxUnits != null) 'UNIDADES_SUBCAJA': subboxUnits,
      if (boxUnits != null) 'UNIDADES_CAJA': boxUnits,
      if (paletUnits != null) 'UNIDADES_PALET': paletUnits,
      if (isActiveWeb != null) 'ACTIVO_WEB': isActiveWeb,
      if (isActiveApp != null) 'ACTIVO_APP': isActiveApp,
      if (inCatalogue != null) 'EN_CATALOGO': inCatalogue,
      if (discontinued != null) 'DESCATALOGADO': discontinued,
      if (cataloguePage != null) 'PAGINA_EN_CATALOGO': cataloguePage,
      if (cataloguePage2 != null) 'PAGINA_EN_CATALOGO2': cataloguePage2,
      if (weightKg != null) 'PESO_KG': weightKg,
      if (largeCm != null) 'LARGO_CM': largeCm,
      if (widthCm != null) 'ANCHO_CM': widthCm,
      if (heightCm != null) 'ALTO_CM': heightCm,
      if (summaryES != null) 'RESUMEN_ES': summaryES,
      if (summaryEN != null) 'RESUMEN_EN': summaryEN,
      if (summaryFR != null) 'RESUMEN_FR': summaryFR,
      if (summaryDE != null) 'RESUMEN_DE': summaryDE,
      if (summaryCA != null) 'RESUMEN_CA': summaryCA,
      if (summaryGB != null) 'RESUMEN_GB': summaryGB,
      if (summaryHU != null) 'RESUMEN_HU': summaryHU,
      if (summaryIT != null) 'RESUMEN_IT': summaryIT,
      if (summaryNL != null) 'RESUMEN_NL': summaryNL,
      if (summaryPL != null) 'RESUMEN_PL': summaryPL,
      if (summaryPT != null) 'RESUMEN_PT': summaryPT,
      if (summaryRO != null) 'RESUMEN_RO': summaryRO,
      if (summaryRU != null) 'RESUMEN_RU': summaryRU,
      if (summaryCN != null) 'RESUMEN_CN': summaryCN,
      if (summaryEL != null) 'RESUMEN_EL': summaryEL,
      if (availableStock != null) 'STOCK_DISPONIBLE': availableStock,
      if (currentSales != null) 'VENTAS_ACTUAL': currentSales,
      if (previousSales != null) 'VENTAS_ANTERIOR': previousSales,
      if (purchasesDeliveryQuantity1 != null)
        'COMPRAS_ENTREGA_CANTIDAD_1': purchasesDeliveryQuantity1,
      if (purchasesDeliveryQuantity2 != null)
        'COMPRAS_ENTREGA_CANTIDAD_2': purchasesDeliveryQuantity2,
      if (purchasesDeliveryQuantity3 != null)
        'COMPRAS_ENTREGA_CANTIDAD_3': purchasesDeliveryQuantity3,
      if (purchasesDeliveryQuantityMore3 != null)
        'COMPRAS_ENTREGA_CANTIDAD_MAS_3': purchasesDeliveryQuantityMore3,
      if (purchasesDeliveryDate1 != null)
        'COMPRAS_ENTREGA_FECHA_1': purchasesDeliveryDate1,
      if (purchasesDeliveryDate2 != null)
        'COMPRAS_ENTREGA_FECHA_2': purchasesDeliveryDate2,
      if (purchasesDeliveryDate3 != null)
        'COMPRAS_ENTREGA_FECHA_3': purchasesDeliveryDate3,
      if (purchasesDeliveryStatus1 != null)
        'COMPRAS_ENTREGA_ESTADO_1': purchasesDeliveryStatus1,
      if (purchasesDeliveryStatus2 != null)
        'COMPRAS_ENTREGA_ESTADO_2': purchasesDeliveryStatus2,
      if (purchasesDeliveryStatus3 != null)
        'COMPRAS_ENTREGA_ESTADO_3': purchasesDeliveryStatus3,
      if (principalImage != null) 'IMAGEN_PRINCIPAL': principalImage,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticleTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<String?>? familyId,
      Value<String?>? subfamilyId,
      Value<double>? minimumSales,
      Value<double>? multipleSales,
      Value<double>? subboxUnits,
      Value<double>? boxUnits,
      Value<double>? paletUnits,
      Value<String>? isActiveWeb,
      Value<String>? isActiveApp,
      Value<String>? inCatalogue,
      Value<String>? discontinued,
      Value<String?>? cataloguePage,
      Value<String?>? cataloguePage2,
      Value<double>? weightKg,
      Value<double>? largeCm,
      Value<double>? widthCm,
      Value<double>? heightCm,
      Value<String?>? summaryES,
      Value<String?>? summaryEN,
      Value<String?>? summaryFR,
      Value<String?>? summaryDE,
      Value<String?>? summaryCA,
      Value<String?>? summaryGB,
      Value<String?>? summaryHU,
      Value<String?>? summaryIT,
      Value<String?>? summaryNL,
      Value<String?>? summaryPL,
      Value<String?>? summaryPT,
      Value<String?>? summaryRO,
      Value<String?>? summaryRU,
      Value<String?>? summaryCN,
      Value<String?>? summaryEL,
      Value<double?>? availableStock,
      Value<double?>? currentSales,
      Value<double?>? previousSales,
      Value<double?>? purchasesDeliveryQuantity1,
      Value<double?>? purchasesDeliveryQuantity2,
      Value<double?>? purchasesDeliveryQuantity3,
      Value<double?>? purchasesDeliveryQuantityMore3,
      Value<DateTime?>? purchasesDeliveryDate1,
      Value<DateTime?>? purchasesDeliveryDate2,
      Value<DateTime?>? purchasesDeliveryDate3,
      Value<String?>? purchasesDeliveryStatus1,
      Value<String?>? purchasesDeliveryStatus2,
      Value<String?>? purchasesDeliveryStatus3,
      Value<String?>? principalImage,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticleTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      familyId: familyId ?? this.familyId,
      subfamilyId: subfamilyId ?? this.subfamilyId,
      minimumSales: minimumSales ?? this.minimumSales,
      multipleSales: multipleSales ?? this.multipleSales,
      subboxUnits: subboxUnits ?? this.subboxUnits,
      boxUnits: boxUnits ?? this.boxUnits,
      paletUnits: paletUnits ?? this.paletUnits,
      isActiveWeb: isActiveWeb ?? this.isActiveWeb,
      isActiveApp: isActiveApp ?? this.isActiveApp,
      inCatalogue: inCatalogue ?? this.inCatalogue,
      discontinued: discontinued ?? this.discontinued,
      cataloguePage: cataloguePage ?? this.cataloguePage,
      cataloguePage2: cataloguePage2 ?? this.cataloguePage2,
      weightKg: weightKg ?? this.weightKg,
      largeCm: largeCm ?? this.largeCm,
      widthCm: widthCm ?? this.widthCm,
      heightCm: heightCm ?? this.heightCm,
      summaryES: summaryES ?? this.summaryES,
      summaryEN: summaryEN ?? this.summaryEN,
      summaryFR: summaryFR ?? this.summaryFR,
      summaryDE: summaryDE ?? this.summaryDE,
      summaryCA: summaryCA ?? this.summaryCA,
      summaryGB: summaryGB ?? this.summaryGB,
      summaryHU: summaryHU ?? this.summaryHU,
      summaryIT: summaryIT ?? this.summaryIT,
      summaryNL: summaryNL ?? this.summaryNL,
      summaryPL: summaryPL ?? this.summaryPL,
      summaryPT: summaryPT ?? this.summaryPT,
      summaryRO: summaryRO ?? this.summaryRO,
      summaryRU: summaryRU ?? this.summaryRU,
      summaryCN: summaryCN ?? this.summaryCN,
      summaryEL: summaryEL ?? this.summaryEL,
      availableStock: availableStock ?? this.availableStock,
      currentSales: currentSales ?? this.currentSales,
      previousSales: previousSales ?? this.previousSales,
      purchasesDeliveryQuantity1:
          purchasesDeliveryQuantity1 ?? this.purchasesDeliveryQuantity1,
      purchasesDeliveryQuantity2:
          purchasesDeliveryQuantity2 ?? this.purchasesDeliveryQuantity2,
      purchasesDeliveryQuantity3:
          purchasesDeliveryQuantity3 ?? this.purchasesDeliveryQuantity3,
      purchasesDeliveryQuantityMore3:
          purchasesDeliveryQuantityMore3 ?? this.purchasesDeliveryQuantityMore3,
      purchasesDeliveryDate1:
          purchasesDeliveryDate1 ?? this.purchasesDeliveryDate1,
      purchasesDeliveryDate2:
          purchasesDeliveryDate2 ?? this.purchasesDeliveryDate2,
      purchasesDeliveryDate3:
          purchasesDeliveryDate3 ?? this.purchasesDeliveryDate3,
      purchasesDeliveryStatus1:
          purchasesDeliveryStatus1 ?? this.purchasesDeliveryStatus1,
      purchasesDeliveryStatus2:
          purchasesDeliveryStatus2 ?? this.purchasesDeliveryStatus2,
      purchasesDeliveryStatus3:
          purchasesDeliveryStatus3 ?? this.purchasesDeliveryStatus3,
      principalImage: principalImage ?? this.principalImage,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ARTICULO_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descriptionEL.value);
    }
    if (familyId.present) {
      map['FAMILIA_ID'] = Variable<String>(familyId.value);
    }
    if (subfamilyId.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(subfamilyId.value);
    }
    if (minimumSales.present) {
      map['VENTA_MINIMO'] = Variable<double>(minimumSales.value);
    }
    if (multipleSales.present) {
      map['VENTA_MULTIPLO'] = Variable<double>(multipleSales.value);
    }
    if (subboxUnits.present) {
      map['UNIDADES_SUBCAJA'] = Variable<double>(subboxUnits.value);
    }
    if (boxUnits.present) {
      map['UNIDADES_CAJA'] = Variable<double>(boxUnits.value);
    }
    if (paletUnits.present) {
      map['UNIDADES_PALET'] = Variable<double>(paletUnits.value);
    }
    if (isActiveWeb.present) {
      map['ACTIVO_WEB'] = Variable<String>(isActiveWeb.value);
    }
    if (isActiveApp.present) {
      map['ACTIVO_APP'] = Variable<String>(isActiveApp.value);
    }
    if (inCatalogue.present) {
      map['EN_CATALOGO'] = Variable<String>(inCatalogue.value);
    }
    if (discontinued.present) {
      map['DESCATALOGADO'] = Variable<String>(discontinued.value);
    }
    if (cataloguePage.present) {
      map['PAGINA_EN_CATALOGO'] = Variable<String>(cataloguePage.value);
    }
    if (cataloguePage2.present) {
      map['PAGINA_EN_CATALOGO2'] = Variable<String>(cataloguePage2.value);
    }
    if (weightKg.present) {
      map['PESO_KG'] = Variable<double>(weightKg.value);
    }
    if (largeCm.present) {
      map['LARGO_CM'] = Variable<double>(largeCm.value);
    }
    if (widthCm.present) {
      map['ANCHO_CM'] = Variable<double>(widthCm.value);
    }
    if (heightCm.present) {
      map['ALTO_CM'] = Variable<double>(heightCm.value);
    }
    if (summaryES.present) {
      map['RESUMEN_ES'] = Variable<String>(summaryES.value);
    }
    if (summaryEN.present) {
      map['RESUMEN_EN'] = Variable<String>(summaryEN.value);
    }
    if (summaryFR.present) {
      map['RESUMEN_FR'] = Variable<String>(summaryFR.value);
    }
    if (summaryDE.present) {
      map['RESUMEN_DE'] = Variable<String>(summaryDE.value);
    }
    if (summaryCA.present) {
      map['RESUMEN_CA'] = Variable<String>(summaryCA.value);
    }
    if (summaryGB.present) {
      map['RESUMEN_GB'] = Variable<String>(summaryGB.value);
    }
    if (summaryHU.present) {
      map['RESUMEN_HU'] = Variable<String>(summaryHU.value);
    }
    if (summaryIT.present) {
      map['RESUMEN_IT'] = Variable<String>(summaryIT.value);
    }
    if (summaryNL.present) {
      map['RESUMEN_NL'] = Variable<String>(summaryNL.value);
    }
    if (summaryPL.present) {
      map['RESUMEN_PL'] = Variable<String>(summaryPL.value);
    }
    if (summaryPT.present) {
      map['RESUMEN_PT'] = Variable<String>(summaryPT.value);
    }
    if (summaryRO.present) {
      map['RESUMEN_RO'] = Variable<String>(summaryRO.value);
    }
    if (summaryRU.present) {
      map['RESUMEN_RU'] = Variable<String>(summaryRU.value);
    }
    if (summaryCN.present) {
      map['RESUMEN_CN'] = Variable<String>(summaryCN.value);
    }
    if (summaryEL.present) {
      map['RESUMEN_EL'] = Variable<String>(summaryEL.value);
    }
    if (availableStock.present) {
      map['STOCK_DISPONIBLE'] = Variable<double>(availableStock.value);
    }
    if (currentSales.present) {
      map['VENTAS_ACTUAL'] = Variable<double>(currentSales.value);
    }
    if (previousSales.present) {
      map['VENTAS_ANTERIOR'] = Variable<double>(previousSales.value);
    }
    if (purchasesDeliveryQuantity1.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_1'] =
          Variable<double>(purchasesDeliveryQuantity1.value);
    }
    if (purchasesDeliveryQuantity2.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_2'] =
          Variable<double>(purchasesDeliveryQuantity2.value);
    }
    if (purchasesDeliveryQuantity3.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_3'] =
          Variable<double>(purchasesDeliveryQuantity3.value);
    }
    if (purchasesDeliveryQuantityMore3.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_MAS_3'] =
          Variable<double>(purchasesDeliveryQuantityMore3.value);
    }
    if (purchasesDeliveryDate1.present) {
      map['COMPRAS_ENTREGA_FECHA_1'] =
          Variable<DateTime>(purchasesDeliveryDate1.value);
    }
    if (purchasesDeliveryDate2.present) {
      map['COMPRAS_ENTREGA_FECHA_2'] =
          Variable<DateTime>(purchasesDeliveryDate2.value);
    }
    if (purchasesDeliveryDate3.present) {
      map['COMPRAS_ENTREGA_FECHA_3'] =
          Variable<DateTime>(purchasesDeliveryDate3.value);
    }
    if (purchasesDeliveryStatus1.present) {
      map['COMPRAS_ENTREGA_ESTADO_1'] =
          Variable<String>(purchasesDeliveryStatus1.value);
    }
    if (purchasesDeliveryStatus2.present) {
      map['COMPRAS_ENTREGA_ESTADO_2'] =
          Variable<String>(purchasesDeliveryStatus2.value);
    }
    if (purchasesDeliveryStatus3.present) {
      map['COMPRAS_ENTREGA_ESTADO_3'] =
          Variable<String>(purchasesDeliveryStatus3.value);
    }
    if (principalImage.present) {
      map['IMAGEN_PRINCIPAL'] = Variable<String>(principalImage.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('familyId: $familyId, ')
          ..write('subfamilyId: $subfamilyId, ')
          ..write('minimumSales: $minimumSales, ')
          ..write('multipleSales: $multipleSales, ')
          ..write('subboxUnits: $subboxUnits, ')
          ..write('boxUnits: $boxUnits, ')
          ..write('paletUnits: $paletUnits, ')
          ..write('isActiveWeb: $isActiveWeb, ')
          ..write('isActiveApp: $isActiveApp, ')
          ..write('inCatalogue: $inCatalogue, ')
          ..write('discontinued: $discontinued, ')
          ..write('cataloguePage: $cataloguePage, ')
          ..write('cataloguePage2: $cataloguePage2, ')
          ..write('weightKg: $weightKg, ')
          ..write('largeCm: $largeCm, ')
          ..write('widthCm: $widthCm, ')
          ..write('heightCm: $heightCm, ')
          ..write('summaryES: $summaryES, ')
          ..write('summaryEN: $summaryEN, ')
          ..write('summaryFR: $summaryFR, ')
          ..write('summaryDE: $summaryDE, ')
          ..write('summaryCA: $summaryCA, ')
          ..write('summaryGB: $summaryGB, ')
          ..write('summaryHU: $summaryHU, ')
          ..write('summaryIT: $summaryIT, ')
          ..write('summaryNL: $summaryNL, ')
          ..write('summaryPL: $summaryPL, ')
          ..write('summaryPT: $summaryPT, ')
          ..write('summaryRO: $summaryRO, ')
          ..write('summaryRU: $summaryRU, ')
          ..write('summaryCN: $summaryCN, ')
          ..write('summaryEL: $summaryEL, ')
          ..write('availableStock: $availableStock, ')
          ..write('currentSales: $currentSales, ')
          ..write('previousSales: $previousSales, ')
          ..write('purchasesDeliveryQuantity1: $purchasesDeliveryQuantity1, ')
          ..write('purchasesDeliveryQuantity2: $purchasesDeliveryQuantity2, ')
          ..write('purchasesDeliveryQuantity3: $purchasesDeliveryQuantity3, ')
          ..write(
              'purchasesDeliveryQuantityMore3: $purchasesDeliveryQuantityMore3, ')
          ..write('purchasesDeliveryDate1: $purchasesDeliveryDate1, ')
          ..write('purchasesDeliveryDate2: $purchasesDeliveryDate2, ')
          ..write('purchasesDeliveryDate3: $purchasesDeliveryDate3, ')
          ..write('purchasesDeliveryStatus1: $purchasesDeliveryStatus1, ')
          ..write('purchasesDeliveryStatus2: $purchasesDeliveryStatus2, ')
          ..write('purchasesDeliveryStatus3: $purchasesDeliveryStatus3, ')
          ..write('principalImage: $principalImage, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticleTableTable extends ArticleTable
    with TableInfo<$ArticleTableTable, ArticleDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String> descriptionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String> descriptionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String> descriptionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String> descriptionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String> descriptionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String> descriptionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String> descriptionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String> descriptionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String> descriptionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String> descriptionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String> descriptionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String> descriptionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String> descriptionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String> descriptionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String> descriptionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _familyIdMeta = const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<String> familyId = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES FAMILIAS (FAMILIA_ID)');
  final VerificationMeta _subfamilyIdMeta =
      const VerificationMeta('subfamilyId');
  @override
  late final GeneratedColumn<String> subfamilyId = GeneratedColumn<String>(
      'SUBFAMILIA_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES SUBFAMILIAS (SUBFAMILIA_ID)');
  final VerificationMeta _minimumSalesMeta =
      const VerificationMeta('minimumSales');
  @override
  late final GeneratedColumn<double> minimumSales = GeneratedColumn<double>(
      'VENTA_MINIMO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _multipleSalesMeta =
      const VerificationMeta('multipleSales');
  @override
  late final GeneratedColumn<double> multipleSales = GeneratedColumn<double>(
      'VENTA_MULTIPLO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _subboxUnitsMeta =
      const VerificationMeta('subboxUnits');
  @override
  late final GeneratedColumn<double> subboxUnits = GeneratedColumn<double>(
      'UNIDADES_SUBCAJA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _boxUnitsMeta = const VerificationMeta('boxUnits');
  @override
  late final GeneratedColumn<double> boxUnits = GeneratedColumn<double>(
      'UNIDADES_CAJA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _paletUnitsMeta = const VerificationMeta('paletUnits');
  @override
  late final GeneratedColumn<double> paletUnits = GeneratedColumn<double>(
      'UNIDADES_PALET', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _isActiveWebMeta =
      const VerificationMeta('isActiveWeb');
  @override
  late final GeneratedColumn<String> isActiveWeb = GeneratedColumn<String>(
      'ACTIVO_WEB', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _isActiveAppMeta =
      const VerificationMeta('isActiveApp');
  @override
  late final GeneratedColumn<String> isActiveApp = GeneratedColumn<String>(
      'ACTIVO_APP', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _inCatalogueMeta =
      const VerificationMeta('inCatalogue');
  @override
  late final GeneratedColumn<String> inCatalogue = GeneratedColumn<String>(
      'EN_CATALOGO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _discontinuedMeta =
      const VerificationMeta('discontinued');
  @override
  late final GeneratedColumn<String> discontinued = GeneratedColumn<String>(
      'DESCATALOGADO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cataloguePageMeta =
      const VerificationMeta('cataloguePage');
  @override
  late final GeneratedColumn<String> cataloguePage = GeneratedColumn<String>(
      'PAGINA_EN_CATALOGO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _cataloguePage2Meta =
      const VerificationMeta('cataloguePage2');
  @override
  late final GeneratedColumn<String> cataloguePage2 = GeneratedColumn<String>(
      'PAGINA_EN_CATALOGO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _weightKgMeta = const VerificationMeta('weightKg');
  @override
  late final GeneratedColumn<double> weightKg = GeneratedColumn<double>(
      'PESO_KG', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _largeCmMeta = const VerificationMeta('largeCm');
  @override
  late final GeneratedColumn<double> largeCm = GeneratedColumn<double>(
      'LARGO_CM', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _widthCmMeta = const VerificationMeta('widthCm');
  @override
  late final GeneratedColumn<double> widthCm = GeneratedColumn<double>(
      'ANCHO_CM', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _heightCmMeta = const VerificationMeta('heightCm');
  @override
  late final GeneratedColumn<double> heightCm = GeneratedColumn<double>(
      'ALTO_CM', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _summaryESMeta = const VerificationMeta('summaryES');
  @override
  late final GeneratedColumn<String> summaryES = GeneratedColumn<String>(
      'RESUMEN_ES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryENMeta = const VerificationMeta('summaryEN');
  @override
  late final GeneratedColumn<String> summaryEN = GeneratedColumn<String>(
      'RESUMEN_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryFRMeta = const VerificationMeta('summaryFR');
  @override
  late final GeneratedColumn<String> summaryFR = GeneratedColumn<String>(
      'RESUMEN_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryDEMeta = const VerificationMeta('summaryDE');
  @override
  late final GeneratedColumn<String> summaryDE = GeneratedColumn<String>(
      'RESUMEN_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryCAMeta = const VerificationMeta('summaryCA');
  @override
  late final GeneratedColumn<String> summaryCA = GeneratedColumn<String>(
      'RESUMEN_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryGBMeta = const VerificationMeta('summaryGB');
  @override
  late final GeneratedColumn<String> summaryGB = GeneratedColumn<String>(
      'RESUMEN_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryHUMeta = const VerificationMeta('summaryHU');
  @override
  late final GeneratedColumn<String> summaryHU = GeneratedColumn<String>(
      'RESUMEN_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryITMeta = const VerificationMeta('summaryIT');
  @override
  late final GeneratedColumn<String> summaryIT = GeneratedColumn<String>(
      'RESUMEN_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryNLMeta = const VerificationMeta('summaryNL');
  @override
  late final GeneratedColumn<String> summaryNL = GeneratedColumn<String>(
      'RESUMEN_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryPLMeta = const VerificationMeta('summaryPL');
  @override
  late final GeneratedColumn<String> summaryPL = GeneratedColumn<String>(
      'RESUMEN_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryPTMeta = const VerificationMeta('summaryPT');
  @override
  late final GeneratedColumn<String> summaryPT = GeneratedColumn<String>(
      'RESUMEN_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryROMeta = const VerificationMeta('summaryRO');
  @override
  late final GeneratedColumn<String> summaryRO = GeneratedColumn<String>(
      'RESUMEN_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryRUMeta = const VerificationMeta('summaryRU');
  @override
  late final GeneratedColumn<String> summaryRU = GeneratedColumn<String>(
      'RESUMEN_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryCNMeta = const VerificationMeta('summaryCN');
  @override
  late final GeneratedColumn<String> summaryCN = GeneratedColumn<String>(
      'RESUMEN_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryELMeta = const VerificationMeta('summaryEL');
  @override
  late final GeneratedColumn<String> summaryEL = GeneratedColumn<String>(
      'RESUMEN_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _availableStockMeta =
      const VerificationMeta('availableStock');
  @override
  late final GeneratedColumn<double> availableStock = GeneratedColumn<double>(
      'STOCK_DISPONIBLE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _currentSalesMeta =
      const VerificationMeta('currentSales');
  @override
  late final GeneratedColumn<double> currentSales = GeneratedColumn<double>(
      'VENTAS_ACTUAL', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _previousSalesMeta =
      const VerificationMeta('previousSales');
  @override
  late final GeneratedColumn<double> previousSales = GeneratedColumn<double>(
      'VENTAS_ANTERIOR', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryQuantity1Meta =
      const VerificationMeta('purchasesDeliveryQuantity1');
  @override
  late final GeneratedColumn<double> purchasesDeliveryQuantity1 =
      GeneratedColumn<double>('COMPRAS_ENTREGA_CANTIDAD_1', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryQuantity2Meta =
      const VerificationMeta('purchasesDeliveryQuantity2');
  @override
  late final GeneratedColumn<double> purchasesDeliveryQuantity2 =
      GeneratedColumn<double>('COMPRAS_ENTREGA_CANTIDAD_2', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryQuantity3Meta =
      const VerificationMeta('purchasesDeliveryQuantity3');
  @override
  late final GeneratedColumn<double> purchasesDeliveryQuantity3 =
      GeneratedColumn<double>('COMPRAS_ENTREGA_CANTIDAD_3', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryQuantityMore3Meta =
      const VerificationMeta('purchasesDeliveryQuantityMore3');
  @override
  late final GeneratedColumn<double> purchasesDeliveryQuantityMore3 =
      GeneratedColumn<double>(
          'COMPRAS_ENTREGA_CANTIDAD_MAS_3', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryDate1Meta =
      const VerificationMeta('purchasesDeliveryDate1');
  @override
  late final GeneratedColumn<DateTime> purchasesDeliveryDate1 =
      GeneratedColumn<DateTime>('COMPRAS_ENTREGA_FECHA_1', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryDate2Meta =
      const VerificationMeta('purchasesDeliveryDate2');
  @override
  late final GeneratedColumn<DateTime> purchasesDeliveryDate2 =
      GeneratedColumn<DateTime>('COMPRAS_ENTREGA_FECHA_2', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryDate3Meta =
      const VerificationMeta('purchasesDeliveryDate3');
  @override
  late final GeneratedColumn<DateTime> purchasesDeliveryDate3 =
      GeneratedColumn<DateTime>('COMPRAS_ENTREGA_FECHA_3', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryStatus1Meta =
      const VerificationMeta('purchasesDeliveryStatus1');
  @override
  late final GeneratedColumn<String> purchasesDeliveryStatus1 =
      GeneratedColumn<String>('COMPRAS_ENTREGA_ESTADO_1', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryStatus2Meta =
      const VerificationMeta('purchasesDeliveryStatus2');
  @override
  late final GeneratedColumn<String> purchasesDeliveryStatus2 =
      GeneratedColumn<String>('COMPRAS_ENTREGA_ESTADO_2', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _purchasesDeliveryStatus3Meta =
      const VerificationMeta('purchasesDeliveryStatus3');
  @override
  late final GeneratedColumn<String> purchasesDeliveryStatus3 =
      GeneratedColumn<String>('COMPRAS_ENTREGA_ESTADO_3', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _principalImageMeta =
      const VerificationMeta('principalImage');
  @override
  late final GeneratedColumn<String> principalImage = GeneratedColumn<String>(
      'IMAGEN_PRINCIPAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        familyId,
        subfamilyId,
        minimumSales,
        multipleSales,
        subboxUnits,
        boxUnits,
        paletUnits,
        isActiveWeb,
        isActiveApp,
        inCatalogue,
        discontinued,
        cataloguePage,
        cataloguePage2,
        weightKg,
        largeCm,
        widthCm,
        heightCm,
        summaryES,
        summaryEN,
        summaryFR,
        summaryDE,
        summaryCA,
        summaryGB,
        summaryHU,
        summaryIT,
        summaryNL,
        summaryPL,
        summaryPT,
        summaryRO,
        summaryRU,
        summaryCN,
        summaryEL,
        availableStock,
        currentSales,
        previousSales,
        purchasesDeliveryQuantity1,
        purchasesDeliveryQuantity2,
        purchasesDeliveryQuantity3,
        purchasesDeliveryQuantityMore3,
        purchasesDeliveryDate1,
        purchasesDeliveryDate2,
        purchasesDeliveryDate3,
        purchasesDeliveryStatus1,
        purchasesDeliveryStatus2,
        purchasesDeliveryStatus3,
        principalImage,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS';
  @override
  String get actualTableName => 'ARTICULOS';
  @override
  VerificationContext validateIntegrity(Insertable<ArticleDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['ARTICULO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familyIdMeta));
    }
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _subfamilyIdMeta,
          subfamilyId.isAcceptableOrUnknown(
              data['SUBFAMILIA_ID']!, _subfamilyIdMeta));
    }
    if (data.containsKey('VENTA_MINIMO')) {
      context.handle(
          _minimumSalesMeta,
          minimumSales.isAcceptableOrUnknown(
              data['VENTA_MINIMO']!, _minimumSalesMeta));
    } else if (isInserting) {
      context.missing(_minimumSalesMeta);
    }
    if (data.containsKey('VENTA_MULTIPLO')) {
      context.handle(
          _multipleSalesMeta,
          multipleSales.isAcceptableOrUnknown(
              data['VENTA_MULTIPLO']!, _multipleSalesMeta));
    } else if (isInserting) {
      context.missing(_multipleSalesMeta);
    }
    if (data.containsKey('UNIDADES_SUBCAJA')) {
      context.handle(
          _subboxUnitsMeta,
          subboxUnits.isAcceptableOrUnknown(
              data['UNIDADES_SUBCAJA']!, _subboxUnitsMeta));
    } else if (isInserting) {
      context.missing(_subboxUnitsMeta);
    }
    if (data.containsKey('UNIDADES_CAJA')) {
      context.handle(
          _boxUnitsMeta,
          boxUnits.isAcceptableOrUnknown(
              data['UNIDADES_CAJA']!, _boxUnitsMeta));
    } else if (isInserting) {
      context.missing(_boxUnitsMeta);
    }
    if (data.containsKey('UNIDADES_PALET')) {
      context.handle(
          _paletUnitsMeta,
          paletUnits.isAcceptableOrUnknown(
              data['UNIDADES_PALET']!, _paletUnitsMeta));
    } else if (isInserting) {
      context.missing(_paletUnitsMeta);
    }
    if (data.containsKey('ACTIVO_WEB')) {
      context.handle(
          _isActiveWebMeta,
          isActiveWeb.isAcceptableOrUnknown(
              data['ACTIVO_WEB']!, _isActiveWebMeta));
    } else if (isInserting) {
      context.missing(_isActiveWebMeta);
    }
    if (data.containsKey('ACTIVO_APP')) {
      context.handle(
          _isActiveAppMeta,
          isActiveApp.isAcceptableOrUnknown(
              data['ACTIVO_APP']!, _isActiveAppMeta));
    } else if (isInserting) {
      context.missing(_isActiveAppMeta);
    }
    if (data.containsKey('EN_CATALOGO')) {
      context.handle(
          _inCatalogueMeta,
          inCatalogue.isAcceptableOrUnknown(
              data['EN_CATALOGO']!, _inCatalogueMeta));
    } else if (isInserting) {
      context.missing(_inCatalogueMeta);
    }
    if (data.containsKey('DESCATALOGADO')) {
      context.handle(
          _discontinuedMeta,
          discontinued.isAcceptableOrUnknown(
              data['DESCATALOGADO']!, _discontinuedMeta));
    } else if (isInserting) {
      context.missing(_discontinuedMeta);
    }
    if (data.containsKey('PAGINA_EN_CATALOGO')) {
      context.handle(
          _cataloguePageMeta,
          cataloguePage.isAcceptableOrUnknown(
              data['PAGINA_EN_CATALOGO']!, _cataloguePageMeta));
    }
    if (data.containsKey('PAGINA_EN_CATALOGO2')) {
      context.handle(
          _cataloguePage2Meta,
          cataloguePage2.isAcceptableOrUnknown(
              data['PAGINA_EN_CATALOGO2']!, _cataloguePage2Meta));
    }
    if (data.containsKey('PESO_KG')) {
      context.handle(_weightKgMeta,
          weightKg.isAcceptableOrUnknown(data['PESO_KG']!, _weightKgMeta));
    } else if (isInserting) {
      context.missing(_weightKgMeta);
    }
    if (data.containsKey('LARGO_CM')) {
      context.handle(_largeCmMeta,
          largeCm.isAcceptableOrUnknown(data['LARGO_CM']!, _largeCmMeta));
    } else if (isInserting) {
      context.missing(_largeCmMeta);
    }
    if (data.containsKey('ANCHO_CM')) {
      context.handle(_widthCmMeta,
          widthCm.isAcceptableOrUnknown(data['ANCHO_CM']!, _widthCmMeta));
    } else if (isInserting) {
      context.missing(_widthCmMeta);
    }
    if (data.containsKey('ALTO_CM')) {
      context.handle(_heightCmMeta,
          heightCm.isAcceptableOrUnknown(data['ALTO_CM']!, _heightCmMeta));
    } else if (isInserting) {
      context.missing(_heightCmMeta);
    }
    if (data.containsKey('RESUMEN_ES')) {
      context.handle(_summaryESMeta,
          summaryES.isAcceptableOrUnknown(data['RESUMEN_ES']!, _summaryESMeta));
    }
    if (data.containsKey('RESUMEN_EN')) {
      context.handle(_summaryENMeta,
          summaryEN.isAcceptableOrUnknown(data['RESUMEN_EN']!, _summaryENMeta));
    }
    if (data.containsKey('RESUMEN_FR')) {
      context.handle(_summaryFRMeta,
          summaryFR.isAcceptableOrUnknown(data['RESUMEN_FR']!, _summaryFRMeta));
    }
    if (data.containsKey('RESUMEN_DE')) {
      context.handle(_summaryDEMeta,
          summaryDE.isAcceptableOrUnknown(data['RESUMEN_DE']!, _summaryDEMeta));
    }
    if (data.containsKey('RESUMEN_CA')) {
      context.handle(_summaryCAMeta,
          summaryCA.isAcceptableOrUnknown(data['RESUMEN_CA']!, _summaryCAMeta));
    }
    if (data.containsKey('RESUMEN_GB')) {
      context.handle(_summaryGBMeta,
          summaryGB.isAcceptableOrUnknown(data['RESUMEN_GB']!, _summaryGBMeta));
    }
    if (data.containsKey('RESUMEN_HU')) {
      context.handle(_summaryHUMeta,
          summaryHU.isAcceptableOrUnknown(data['RESUMEN_HU']!, _summaryHUMeta));
    }
    if (data.containsKey('RESUMEN_IT')) {
      context.handle(_summaryITMeta,
          summaryIT.isAcceptableOrUnknown(data['RESUMEN_IT']!, _summaryITMeta));
    }
    if (data.containsKey('RESUMEN_NL')) {
      context.handle(_summaryNLMeta,
          summaryNL.isAcceptableOrUnknown(data['RESUMEN_NL']!, _summaryNLMeta));
    }
    if (data.containsKey('RESUMEN_PL')) {
      context.handle(_summaryPLMeta,
          summaryPL.isAcceptableOrUnknown(data['RESUMEN_PL']!, _summaryPLMeta));
    }
    if (data.containsKey('RESUMEN_PT')) {
      context.handle(_summaryPTMeta,
          summaryPT.isAcceptableOrUnknown(data['RESUMEN_PT']!, _summaryPTMeta));
    }
    if (data.containsKey('RESUMEN_RO')) {
      context.handle(_summaryROMeta,
          summaryRO.isAcceptableOrUnknown(data['RESUMEN_RO']!, _summaryROMeta));
    }
    if (data.containsKey('RESUMEN_RU')) {
      context.handle(_summaryRUMeta,
          summaryRU.isAcceptableOrUnknown(data['RESUMEN_RU']!, _summaryRUMeta));
    }
    if (data.containsKey('RESUMEN_CN')) {
      context.handle(_summaryCNMeta,
          summaryCN.isAcceptableOrUnknown(data['RESUMEN_CN']!, _summaryCNMeta));
    }
    if (data.containsKey('RESUMEN_EL')) {
      context.handle(_summaryELMeta,
          summaryEL.isAcceptableOrUnknown(data['RESUMEN_EL']!, _summaryELMeta));
    }
    if (data.containsKey('STOCK_DISPONIBLE')) {
      context.handle(
          _availableStockMeta,
          availableStock.isAcceptableOrUnknown(
              data['STOCK_DISPONIBLE']!, _availableStockMeta));
    }
    if (data.containsKey('VENTAS_ACTUAL')) {
      context.handle(
          _currentSalesMeta,
          currentSales.isAcceptableOrUnknown(
              data['VENTAS_ACTUAL']!, _currentSalesMeta));
    }
    if (data.containsKey('VENTAS_ANTERIOR')) {
      context.handle(
          _previousSalesMeta,
          previousSales.isAcceptableOrUnknown(
              data['VENTAS_ANTERIOR']!, _previousSalesMeta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_1')) {
      context.handle(
          _purchasesDeliveryQuantity1Meta,
          purchasesDeliveryQuantity1.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_1']!,
              _purchasesDeliveryQuantity1Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_2')) {
      context.handle(
          _purchasesDeliveryQuantity2Meta,
          purchasesDeliveryQuantity2.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_2']!,
              _purchasesDeliveryQuantity2Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_3')) {
      context.handle(
          _purchasesDeliveryQuantity3Meta,
          purchasesDeliveryQuantity3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_3']!,
              _purchasesDeliveryQuantity3Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_MAS_3')) {
      context.handle(
          _purchasesDeliveryQuantityMore3Meta,
          purchasesDeliveryQuantityMore3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_MAS_3']!,
              _purchasesDeliveryQuantityMore3Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_FECHA_1')) {
      context.handle(
          _purchasesDeliveryDate1Meta,
          purchasesDeliveryDate1.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_FECHA_1']!, _purchasesDeliveryDate1Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_FECHA_2')) {
      context.handle(
          _purchasesDeliveryDate2Meta,
          purchasesDeliveryDate2.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_FECHA_2']!, _purchasesDeliveryDate2Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_FECHA_3')) {
      context.handle(
          _purchasesDeliveryDate3Meta,
          purchasesDeliveryDate3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_FECHA_3']!, _purchasesDeliveryDate3Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_ESTADO_1')) {
      context.handle(
          _purchasesDeliveryStatus1Meta,
          purchasesDeliveryStatus1.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_ESTADO_1']!,
              _purchasesDeliveryStatus1Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_ESTADO_2')) {
      context.handle(
          _purchasesDeliveryStatus2Meta,
          purchasesDeliveryStatus2.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_ESTADO_2']!,
              _purchasesDeliveryStatus2Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_ESTADO_3')) {
      context.handle(
          _purchasesDeliveryStatus3Meta,
          purchasesDeliveryStatus3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_ESTADO_3']!,
              _purchasesDeliveryStatus3Meta));
    }
    if (data.containsKey('IMAGEN_PRINCIPAL')) {
      context.handle(
          _principalImageMeta,
          principalImage.isAcceptableOrUnknown(
              data['IMAGEN_PRINCIPAL']!, _principalImageMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArticleDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      descriptionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      familyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID']),
      subfamilyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SUBFAMILIA_ID']),
      minimumSales: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}VENTA_MINIMO'])!,
      multipleSales: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}VENTA_MULTIPLO'])!,
      subboxUnits: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}UNIDADES_SUBCAJA'])!,
      boxUnits: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}UNIDADES_CAJA'])!,
      paletUnits: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}UNIDADES_PALET'])!,
      isActiveWeb: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ACTIVO_WEB'])!,
      isActiveApp: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ACTIVO_APP'])!,
      inCatalogue: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EN_CATALOGO'])!,
      discontinued: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCATALOGADO'])!,
      cataloguePage: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PAGINA_EN_CATALOGO']),
      cataloguePage2: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PAGINA_EN_CATALOGO2']),
      weightKg: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PESO_KG'])!,
      largeCm: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LARGO_CM'])!,
      widthCm: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}ANCHO_CM'])!,
      heightCm: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}ALTO_CM'])!,
      summaryES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_ES']),
      summaryEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_EN']),
      summaryFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_FR']),
      summaryDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_DE']),
      summaryCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_CA']),
      summaryGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_GB']),
      summaryHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_HU']),
      summaryIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_IT']),
      summaryNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_NL']),
      summaryPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_PL']),
      summaryPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_PT']),
      summaryRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_RO']),
      summaryRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_RU']),
      summaryCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_CN']),
      summaryEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_EL']),
      availableStock: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}STOCK_DISPONIBLE']),
      currentSales: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}VENTAS_ACTUAL']),
      previousSales: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}VENTAS_ANTERIOR']),
      purchasesDeliveryQuantity1: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_1']),
      purchasesDeliveryQuantity2: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_2']),
      purchasesDeliveryQuantity3: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_3']),
      purchasesDeliveryQuantityMore3: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_MAS_3']),
      purchasesDeliveryDate1: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}COMPRAS_ENTREGA_FECHA_1']),
      purchasesDeliveryDate2: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}COMPRAS_ENTREGA_FECHA_2']),
      purchasesDeliveryDate3: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}COMPRAS_ENTREGA_FECHA_3']),
      purchasesDeliveryStatus1: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}COMPRAS_ENTREGA_ESTADO_1']),
      purchasesDeliveryStatus2: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}COMPRAS_ENTREGA_ESTADO_2']),
      purchasesDeliveryStatus3: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}COMPRAS_ENTREGA_ESTADO_3']),
      principalImage: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}IMAGEN_PRINCIPAL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticleTableTable createAlias(String alias) {
    return $ArticleTableTable(attachedDatabase, alias);
  }
}

class ArticleComponentTableCompanion
    extends UpdateCompanion<ArticleComponentDTO> {
  final Value<String> articleId;
  final Value<String> articleComponentId;
  final Value<double> quantity;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticleComponentTableCompanion({
    this.articleId = const Value.absent(),
    this.articleComponentId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticleComponentTableCompanion.insert({
    required String articleId,
    required String articleComponentId,
    required double quantity,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articleId = Value(articleId),
        articleComponentId = Value(articleComponentId),
        quantity = Value(quantity),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticleComponentDTO> custom({
    Expression<String>? articleId,
    Expression<String>? articleComponentId,
    Expression<double>? quantity,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (articleComponentId != null)
        'ARTICULO_COMPONENTE_ID': articleComponentId,
      if (quantity != null) 'CANTIDAD': quantity,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticleComponentTableCompanion copyWith(
      {Value<String>? articleId,
      Value<String>? articleComponentId,
      Value<double>? quantity,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticleComponentTableCompanion(
      articleId: articleId ?? this.articleId,
      articleComponentId: articleComponentId ?? this.articleComponentId,
      quantity: quantity ?? this.quantity,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (articleComponentId.present) {
      map['ARTICULO_COMPONENTE_ID'] =
          Variable<String>(articleComponentId.value);
    }
    if (quantity.present) {
      map['CANTIDAD'] = Variable<double>(quantity.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleComponentTableCompanion(')
          ..write('articleId: $articleId, ')
          ..write('articleComponentId: $articleComponentId, ')
          ..write('quantity: $quantity, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticleComponentTableTable extends ArticleComponentTable
    with TableInfo<$ArticleComponentTableTable, ArticleComponentDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleComponentTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleComponentIdMeta =
      const VerificationMeta('articleComponentId');
  @override
  late final GeneratedColumn<String> articleComponentId =
      GeneratedColumn<String>('ARTICULO_COMPONENTE_ID', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [articleId, articleComponentId, quantity, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_COMPONENTES';
  @override
  String get actualTableName => 'ARTICULOS_COMPONENTES';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticleComponentDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('ARTICULO_COMPONENTE_ID')) {
      context.handle(
          _articleComponentIdMeta,
          articleComponentId.isAcceptableOrUnknown(
              data['ARTICULO_COMPONENTE_ID']!, _articleComponentIdMeta));
    } else if (isInserting) {
      context.missing(_articleComponentIdMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['CANTIDAD']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId, articleComponentId};
  @override
  ArticleComponentDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleComponentDTO(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      articleComponentId: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}ARTICULO_COMPONENTE_ID'])!,
      quantity: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}CANTIDAD'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticleComponentTableTable createAlias(String alias) {
    return $ArticleComponentTableTable(attachedDatabase, alias);
  }
}

class ArticleCompanyVatTableCompanion
    extends UpdateCompanion<ArticleCompanyVATDTO> {
  final Value<String> articleId;
  final Value<String> companyId;
  final Value<double> vat;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticleCompanyVatTableCompanion({
    this.articleId = const Value.absent(),
    this.companyId = const Value.absent(),
    this.vat = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticleCompanyVatTableCompanion.insert({
    required String articleId,
    required String companyId,
    required double vat,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articleId = Value(articleId),
        companyId = Value(companyId),
        vat = Value(vat),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticleCompanyVATDTO> custom({
    Expression<String>? articleId,
    Expression<String>? companyId,
    Expression<double>? vat,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (vat != null) 'IVA': vat,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticleCompanyVatTableCompanion copyWith(
      {Value<String>? articleId,
      Value<String>? companyId,
      Value<double>? vat,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticleCompanyVatTableCompanion(
      articleId: articleId ?? this.articleId,
      companyId: companyId ?? this.companyId,
      vat: vat ?? this.vat,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (vat.present) {
      map['IVA'] = Variable<double>(vat.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleCompanyVatTableCompanion(')
          ..write('articleId: $articleId, ')
          ..write('companyId: $companyId, ')
          ..write('vat: $vat, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticleCompanyVatTableTable extends ArticleCompanyVatTable
    with TableInfo<$ArticleCompanyVatTableTable, ArticleCompanyVATDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleCompanyVatTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String> companyId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _vatMeta = const VerificationMeta('vat');
  @override
  late final GeneratedColumn<double> vat = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [articleId, companyId, vat, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_EMPRESAS_IVA';
  @override
  String get actualTableName => 'ARTICULOS_EMPRESAS_IVA';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticleCompanyVATDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _vatMeta, vat.isAcceptableOrUnknown(data['IVA']!, _vatMeta));
    } else if (isInserting) {
      context.missing(_vatMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId, companyId};
  @override
  ArticleCompanyVATDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleCompanyVATDTO(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      companyId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      vat: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticleCompanyVatTableTable createAlias(String alias) {
    return $ArticleCompanyVatTableTable(attachedDatabase, alias);
  }
}

class ArticleSpareTableCompanion extends UpdateCompanion<ArticleSpareDTO> {
  final Value<String> articleId;
  final Value<String> id;
  final Value<String> description;
  final Value<double> quantity;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticleSpareTableCompanion({
    this.articleId = const Value.absent(),
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.quantity = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticleSpareTableCompanion.insert({
    required String articleId,
    required String id,
    required String description,
    required double quantity,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articleId = Value(articleId),
        id = Value(id),
        description = Value(description),
        quantity = Value(quantity),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticleSpareDTO> custom({
    Expression<String>? articleId,
    Expression<String>? id,
    Expression<String>? description,
    Expression<double>? quantity,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (id != null) 'RECAMBIO_ID': id,
      if (description != null) 'DESCRIPCION': description,
      if (quantity != null) 'CANTIDAD': quantity,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticleSpareTableCompanion copyWith(
      {Value<String>? articleId,
      Value<String>? id,
      Value<String>? description,
      Value<double>? quantity,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticleSpareTableCompanion(
      articleId: articleId ?? this.articleId,
      id: id ?? this.id,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (id.present) {
      map['RECAMBIO_ID'] = Variable<String>(id.value);
    }
    if (description.present) {
      map['DESCRIPCION'] = Variable<String>(description.value);
    }
    if (quantity.present) {
      map['CANTIDAD'] = Variable<double>(quantity.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleSpareTableCompanion(')
          ..write('articleId: $articleId, ')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('quantity: $quantity, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticleSpareTableTable extends ArticleSpareTable
    with TableInfo<$ArticleSpareTableTable, ArticleSpareDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleSpareTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'RECAMBIO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'DESCRIPCION', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [articleId, id, description, quantity, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_RECAMBIOS';
  @override
  String get actualTableName => 'ARTICULOS_RECAMBIOS';
  @override
  VerificationContext validateIntegrity(Insertable<ArticleSpareDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('RECAMBIO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['RECAMBIO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['DESCRIPCION']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['CANTIDAD']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId, id};
  @override
  ArticleSpareDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleSpareDTO(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RECAMBIO_ID'])!,
      description: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION'])!,
      quantity: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}CANTIDAD'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticleSpareTableTable createAlias(String alias) {
    return $ArticleSpareTableTable(attachedDatabase, alias);
  }
}

class ArticleSubstituteTableCompanion
    extends UpdateCompanion<ArticleSubstituteDTO> {
  final Value<String> articleId;
  final Value<String> articleSubstituteId;
  final Value<double> order;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticleSubstituteTableCompanion({
    this.articleId = const Value.absent(),
    this.articleSubstituteId = const Value.absent(),
    this.order = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticleSubstituteTableCompanion.insert({
    required String articleId,
    required String articleSubstituteId,
    required double order,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articleId = Value(articleId),
        articleSubstituteId = Value(articleSubstituteId),
        order = Value(order),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticleSubstituteDTO> custom({
    Expression<String>? articleId,
    Expression<String>? articleSubstituteId,
    Expression<double>? order,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (articleSubstituteId != null)
        'ARTICULO_ID_SUSTITUTIVO': articleSubstituteId,
      if (order != null) 'ORDEN': order,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticleSubstituteTableCompanion copyWith(
      {Value<String>? articleId,
      Value<String>? articleSubstituteId,
      Value<double>? order,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticleSubstituteTableCompanion(
      articleId: articleId ?? this.articleId,
      articleSubstituteId: articleSubstituteId ?? this.articleSubstituteId,
      order: order ?? this.order,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (articleSubstituteId.present) {
      map['ARTICULO_ID_SUSTITUTIVO'] =
          Variable<String>(articleSubstituteId.value);
    }
    if (order.present) {
      map['ORDEN'] = Variable<double>(order.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleSubstituteTableCompanion(')
          ..write('articleId: $articleId, ')
          ..write('articleSubstituteId: $articleSubstituteId, ')
          ..write('order: $order, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticleSubstituteTableTable extends ArticleSubstituteTable
    with TableInfo<$ArticleSubstituteTableTable, ArticleSubstituteDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleSubstituteTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleSubstituteIdMeta =
      const VerificationMeta('articleSubstituteId');
  @override
  late final GeneratedColumn<String> articleSubstituteId =
      GeneratedColumn<String>('ARTICULO_ID_SUSTITUTIVO', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<double> order = GeneratedColumn<double>(
      'ORDEN', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [articleId, articleSubstituteId, order, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_SUSTITUTIVOS';
  @override
  String get actualTableName => 'ARTICULOS_SUSTITUTIVOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticleSubstituteDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('ARTICULO_ID_SUSTITUTIVO')) {
      context.handle(
          _articleSubstituteIdMeta,
          articleSubstituteId.isAcceptableOrUnknown(
              data['ARTICULO_ID_SUSTITUTIVO']!, _articleSubstituteIdMeta));
    } else if (isInserting) {
      context.missing(_articleSubstituteIdMeta);
    }
    if (data.containsKey('ORDEN')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['ORDEN']!, _orderMeta));
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId, articleSubstituteId};
  @override
  ArticleSubstituteDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleSubstituteDTO(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      articleSubstituteId: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}ARTICULO_ID_SUSTITUTIVO'])!,
      order: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}ORDEN'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticleSubstituteTableTable createAlias(String alias) {
    return $ArticleSubstituteTableTable(attachedDatabase, alias);
  }
}

class ArticleRatePriceTableCompanion
    extends UpdateCompanion<ArticleRatePriceDTO> {
  final Value<String> articleId;
  final Value<String> rateId;
  final Value<String?> rateDescription;
  final Value<double> quantityFrom;
  final Value<double> price;
  final Value<double?> priceType;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticleRatePriceTableCompanion({
    this.articleId = const Value.absent(),
    this.rateId = const Value.absent(),
    this.rateDescription = const Value.absent(),
    this.quantityFrom = const Value.absent(),
    this.price = const Value.absent(),
    this.priceType = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticleRatePriceTableCompanion.insert({
    required String articleId,
    required String rateId,
    this.rateDescription = const Value.absent(),
    required double quantityFrom,
    required double price,
    this.priceType = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articleId = Value(articleId),
        rateId = Value(rateId),
        quantityFrom = Value(quantityFrom),
        price = Value(price),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticleRatePriceDTO> custom({
    Expression<String>? articleId,
    Expression<String>? rateId,
    Expression<String>? rateDescription,
    Expression<double>? quantityFrom,
    Expression<double>? price,
    Expression<double>? priceType,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (rateId != null) 'TARIFA_ID': rateId,
      if (rateDescription != null) 'TARIFA_DESCRIPCION': rateDescription,
      if (quantityFrom != null) 'CANTIDAD_DESDE': quantityFrom,
      if (price != null) 'PRECIO': price,
      if (priceType != null) 'TIPO_PRECIO': priceType,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticleRatePriceTableCompanion copyWith(
      {Value<String>? articleId,
      Value<String>? rateId,
      Value<String?>? rateDescription,
      Value<double>? quantityFrom,
      Value<double>? price,
      Value<double?>? priceType,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticleRatePriceTableCompanion(
      articleId: articleId ?? this.articleId,
      rateId: rateId ?? this.rateId,
      rateDescription: rateDescription ?? this.rateDescription,
      quantityFrom: quantityFrom ?? this.quantityFrom,
      price: price ?? this.price,
      priceType: priceType ?? this.priceType,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (rateId.present) {
      map['TARIFA_ID'] = Variable<String>(rateId.value);
    }
    if (rateDescription.present) {
      map['TARIFA_DESCRIPCION'] = Variable<String>(rateDescription.value);
    }
    if (quantityFrom.present) {
      map['CANTIDAD_DESDE'] = Variable<double>(quantityFrom.value);
    }
    if (price.present) {
      map['PRECIO'] = Variable<double>(price.value);
    }
    if (priceType.present) {
      map['TIPO_PRECIO'] = Variable<double>(priceType.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleRatePriceTableCompanion(')
          ..write('articleId: $articleId, ')
          ..write('rateId: $rateId, ')
          ..write('rateDescription: $rateDescription, ')
          ..write('quantityFrom: $quantityFrom, ')
          ..write('price: $price, ')
          ..write('priceType: $priceType, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticleRatePriceTableTable extends ArticleRatePriceTable
    with TableInfo<$ArticleRatePriceTableTable, ArticleRatePriceDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleRatePriceTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _rateIdMeta = const VerificationMeta('rateId');
  @override
  late final GeneratedColumn<String> rateId = GeneratedColumn<String>(
      'TARIFA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _rateDescriptionMeta =
      const VerificationMeta('rateDescription');
  @override
  late final GeneratedColumn<String> rateDescription = GeneratedColumn<String>(
      'TARIFA_DESCRIPCION', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _quantityFromMeta =
      const VerificationMeta('quantityFrom');
  @override
  late final GeneratedColumn<double> quantityFrom = GeneratedColumn<double>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'PRECIO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceTypeMeta = const VerificationMeta('priceType');
  @override
  late final GeneratedColumn<double> priceType = GeneratedColumn<double>(
      'TIPO_PRECIO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        articleId,
        rateId,
        rateDescription,
        quantityFrom,
        price,
        priceType,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_TARIFA_PRECIO';
  @override
  String get actualTableName => 'ARTICULOS_TARIFA_PRECIO';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticleRatePriceDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('TARIFA_ID')) {
      context.handle(_rateIdMeta,
          rateId.isAcceptableOrUnknown(data['TARIFA_ID']!, _rateIdMeta));
    } else if (isInserting) {
      context.missing(_rateIdMeta);
    }
    if (data.containsKey('TARIFA_DESCRIPCION')) {
      context.handle(
          _rateDescriptionMeta,
          rateDescription.isAcceptableOrUnknown(
              data['TARIFA_DESCRIPCION']!, _rateDescriptionMeta));
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _quantityFromMeta,
          quantityFrom.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _quantityFromMeta));
    } else if (isInserting) {
      context.missing(_quantityFromMeta);
    }
    if (data.containsKey('PRECIO')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['PRECIO']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _priceTypeMeta,
          priceType.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _priceTypeMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId, rateId, quantityFrom};
  @override
  ArticleRatePriceDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleRatePriceDTO(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      rateId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TARIFA_ID'])!,
      rateDescription: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TARIFA_DESCRIPCION']),
      quantityFrom: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      price: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO'])!,
      priceType: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TIPO_PRECIO']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticleRatePriceTableTable createAlias(String alias) {
    return $ArticleRatePriceTableTable(attachedDatabase, alias);
  }
}

class ArticleNetGroupPriceTableCompanion
    extends UpdateCompanion<ArticleNetGroupPriceDTO> {
  final Value<String> articleId;
  final Value<String> netGroupId;
  final Value<String?> netGroupDescription;
  final Value<double> quantityFrom;
  final Value<double> price;
  final Value<double?> priceType;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticleNetGroupPriceTableCompanion({
    this.articleId = const Value.absent(),
    this.netGroupId = const Value.absent(),
    this.netGroupDescription = const Value.absent(),
    this.quantityFrom = const Value.absent(),
    this.price = const Value.absent(),
    this.priceType = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticleNetGroupPriceTableCompanion.insert({
    required String articleId,
    required String netGroupId,
    this.netGroupDescription = const Value.absent(),
    required double quantityFrom,
    required double price,
    this.priceType = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articleId = Value(articleId),
        netGroupId = Value(netGroupId),
        quantityFrom = Value(quantityFrom),
        price = Value(price),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticleNetGroupPriceDTO> custom({
    Expression<String>? articleId,
    Expression<String>? netGroupId,
    Expression<String>? netGroupDescription,
    Expression<double>? quantityFrom,
    Expression<double>? price,
    Expression<double>? priceType,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (netGroupId != null) 'GRUPO_NETO_ID': netGroupId,
      if (netGroupDescription != null)
        'GRUPO_NETO_DESCRIPCION': netGroupDescription,
      if (quantityFrom != null) 'CANTIDAD_DESDE': quantityFrom,
      if (price != null) 'PRECIO': price,
      if (priceType != null) 'TIPO_PRECIO': priceType,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticleNetGroupPriceTableCompanion copyWith(
      {Value<String>? articleId,
      Value<String>? netGroupId,
      Value<String?>? netGroupDescription,
      Value<double>? quantityFrom,
      Value<double>? price,
      Value<double?>? priceType,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticleNetGroupPriceTableCompanion(
      articleId: articleId ?? this.articleId,
      netGroupId: netGroupId ?? this.netGroupId,
      netGroupDescription: netGroupDescription ?? this.netGroupDescription,
      quantityFrom: quantityFrom ?? this.quantityFrom,
      price: price ?? this.price,
      priceType: priceType ?? this.priceType,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (netGroupId.present) {
      map['GRUPO_NETO_ID'] = Variable<String>(netGroupId.value);
    }
    if (netGroupDescription.present) {
      map['GRUPO_NETO_DESCRIPCION'] =
          Variable<String>(netGroupDescription.value);
    }
    if (quantityFrom.present) {
      map['CANTIDAD_DESDE'] = Variable<double>(quantityFrom.value);
    }
    if (price.present) {
      map['PRECIO'] = Variable<double>(price.value);
    }
    if (priceType.present) {
      map['TIPO_PRECIO'] = Variable<double>(priceType.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleNetGroupPriceTableCompanion(')
          ..write('articleId: $articleId, ')
          ..write('netGroupId: $netGroupId, ')
          ..write('netGroupDescription: $netGroupDescription, ')
          ..write('quantityFrom: $quantityFrom, ')
          ..write('price: $price, ')
          ..write('priceType: $priceType, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticleNetGroupPriceTableTable extends ArticleNetGroupPriceTable
    with TableInfo<$ArticleNetGroupPriceTableTable, ArticleNetGroupPriceDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleNetGroupPriceTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _netGroupIdMeta = const VerificationMeta('netGroupId');
  @override
  late final GeneratedColumn<String> netGroupId = GeneratedColumn<String>(
      'GRUPO_NETO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _netGroupDescriptionMeta =
      const VerificationMeta('netGroupDescription');
  @override
  late final GeneratedColumn<String> netGroupDescription =
      GeneratedColumn<String>('GRUPO_NETO_DESCRIPCION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _quantityFromMeta =
      const VerificationMeta('quantityFrom');
  @override
  late final GeneratedColumn<double> quantityFrom = GeneratedColumn<double>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'PRECIO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceTypeMeta = const VerificationMeta('priceType');
  @override
  late final GeneratedColumn<double> priceType = GeneratedColumn<double>(
      'TIPO_PRECIO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        articleId,
        netGroupId,
        netGroupDescription,
        quantityFrom,
        price,
        priceType,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_GRUPOS_NETOS_PRECIO';
  @override
  String get actualTableName => 'ARTICULOS_GRUPOS_NETOS_PRECIO';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticleNetGroupPriceDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_ID')) {
      context.handle(
          _netGroupIdMeta,
          netGroupId.isAcceptableOrUnknown(
              data['GRUPO_NETO_ID']!, _netGroupIdMeta));
    } else if (isInserting) {
      context.missing(_netGroupIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_DESCRIPCION')) {
      context.handle(
          _netGroupDescriptionMeta,
          netGroupDescription.isAcceptableOrUnknown(
              data['GRUPO_NETO_DESCRIPCION']!, _netGroupDescriptionMeta));
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _quantityFromMeta,
          quantityFrom.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _quantityFromMeta));
    } else if (isInserting) {
      context.missing(_quantityFromMeta);
    }
    if (data.containsKey('PRECIO')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['PRECIO']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _priceTypeMeta,
          priceType.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _priceTypeMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleId, netGroupId, quantityFrom};
  @override
  ArticleNetGroupPriceDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleNetGroupPriceDTO(
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      netGroupId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}GRUPO_NETO_ID'])!,
      netGroupDescription: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}GRUPO_NETO_DESCRIPCION']),
      quantityFrom: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      price: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO'])!,
      priceType: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TIPO_PRECIO']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticleNetGroupPriceTableTable createAlias(String alias) {
    return $ArticleNetGroupPriceTableTable(attachedDatabase, alias);
  }
}

class StatsCustomerUserSalesTableCompanion
    extends UpdateCompanion<StatsCustomerUserSalesDTO> {
  final Value<double> year;
  final Value<double> month;
  final Value<String> customerId;
  final Value<String> articleId;
  final Value<double?> units;
  final Value<double?> amount;
  final Value<double?> cost;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const StatsCustomerUserSalesTableCompanion({
    this.year = const Value.absent(),
    this.month = const Value.absent(),
    this.customerId = const Value.absent(),
    this.articleId = const Value.absent(),
    this.units = const Value.absent(),
    this.amount = const Value.absent(),
    this.cost = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  StatsCustomerUserSalesTableCompanion.insert({
    required double year,
    required double month,
    required String customerId,
    required String articleId,
    this.units = const Value.absent(),
    this.amount = const Value.absent(),
    this.cost = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : year = Value(year),
        month = Value(month),
        customerId = Value(customerId),
        articleId = Value(articleId),
        lastUpdated = Value(lastUpdated);
  static Insertable<StatsCustomerUserSalesDTO> custom({
    Expression<double>? year,
    Expression<double>? month,
    Expression<String>? customerId,
    Expression<String>? articleId,
    Expression<double>? units,
    Expression<double>? amount,
    Expression<double>? cost,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (year != null) 'ANYO': year,
      if (month != null) 'MES': month,
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (units != null) 'UNIDADES': units,
      if (amount != null) 'IMPORTE': amount,
      if (cost != null) 'COSTE': cost,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  StatsCustomerUserSalesTableCompanion copyWith(
      {Value<double>? year,
      Value<double>? month,
      Value<String>? customerId,
      Value<String>? articleId,
      Value<double?>? units,
      Value<double?>? amount,
      Value<double?>? cost,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return StatsCustomerUserSalesTableCompanion(
      year: year ?? this.year,
      month: month ?? this.month,
      customerId: customerId ?? this.customerId,
      articleId: articleId ?? this.articleId,
      units: units ?? this.units,
      amount: amount ?? this.amount,
      cost: cost ?? this.cost,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (year.present) {
      map['ANYO'] = Variable<double>(year.value);
    }
    if (month.present) {
      map['MES'] = Variable<double>(month.value);
    }
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (units.present) {
      map['UNIDADES'] = Variable<double>(units.value);
    }
    if (amount.present) {
      map['IMPORTE'] = Variable<double>(amount.value);
    }
    if (cost.present) {
      map['COSTE'] = Variable<double>(cost.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatsCustomerUserSalesTableCompanion(')
          ..write('year: $year, ')
          ..write('month: $month, ')
          ..write('customerId: $customerId, ')
          ..write('articleId: $articleId, ')
          ..write('units: $units, ')
          ..write('amount: $amount, ')
          ..write('cost: $cost, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $StatsCustomerUserSalesTableTable extends StatsCustomerUserSalesTable
    with
        TableInfo<$StatsCustomerUserSalesTableTable,
            StatsCustomerUserSalesDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StatsCustomerUserSalesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<double> year = GeneratedColumn<double>(
      'ANYO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _monthMeta = const VerificationMeta('month');
  @override
  late final GeneratedColumn<double> month = GeneratedColumn<double>(
      'MES', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _unitsMeta = const VerificationMeta('units');
  @override
  late final GeneratedColumn<double> units = GeneratedColumn<double>(
      'UNIDADES', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'IMPORTE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _costMeta = const VerificationMeta('cost');
  @override
  late final GeneratedColumn<double> cost = GeneratedColumn<double>(
      'COSTE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        year,
        month,
        customerId,
        articleId,
        units,
        amount,
        cost,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ESTADISTICAS_VENTA';
  @override
  String get actualTableName => 'ESTADISTICAS_VENTA';
  @override
  VerificationContext validateIntegrity(
      Insertable<StatsCustomerUserSalesDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ANYO')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['ANYO']!, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('MES')) {
      context.handle(
          _monthMeta, month.isAcceptableOrUnknown(data['MES']!, _monthMeta));
    } else if (isInserting) {
      context.missing(_monthMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('UNIDADES')) {
      context.handle(_unitsMeta,
          units.isAcceptableOrUnknown(data['UNIDADES']!, _unitsMeta));
    }
    if (data.containsKey('IMPORTE')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['IMPORTE']!, _amountMeta));
    }
    if (data.containsKey('COSTE')) {
      context.handle(
          _costMeta, cost.isAcceptableOrUnknown(data['COSTE']!, _costMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {year, month, customerId, articleId};
  @override
  StatsCustomerUserSalesDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StatsCustomerUserSalesDTO(
      year: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}ANYO'])!,
      month: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}MES'])!,
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      units: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}UNIDADES']),
      amount: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IMPORTE']),
      cost: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}COSTE']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $StatsCustomerUserSalesTableTable createAlias(String alias) {
    return $StatsCustomerUserSalesTableTable(attachedDatabase, alias);
  }
}

class StatsLastPriceTableCompanion extends UpdateCompanion<StatsLastPriceDTO> {
  final Value<String> customerId;
  final Value<String> articleId;
  final Value<DateTime> date;
  final Value<double> divisaPrice;
  final Value<double> priceType;
  final Value<double> discount1;
  final Value<double> discount2;
  final Value<double> discount3;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const StatsLastPriceTableCompanion({
    this.customerId = const Value.absent(),
    this.articleId = const Value.absent(),
    this.date = const Value.absent(),
    this.divisaPrice = const Value.absent(),
    this.priceType = const Value.absent(),
    this.discount1 = const Value.absent(),
    this.discount2 = const Value.absent(),
    this.discount3 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  StatsLastPriceTableCompanion.insert({
    required String customerId,
    required String articleId,
    required DateTime date,
    required double divisaPrice,
    required double priceType,
    required double discount1,
    required double discount2,
    required double discount3,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        articleId = Value(articleId),
        date = Value(date),
        divisaPrice = Value(divisaPrice),
        priceType = Value(priceType),
        discount1 = Value(discount1),
        discount2 = Value(discount2),
        discount3 = Value(discount3),
        lastUpdated = Value(lastUpdated);
  static Insertable<StatsLastPriceDTO> custom({
    Expression<String>? customerId,
    Expression<String>? articleId,
    Expression<DateTime>? date,
    Expression<double>? divisaPrice,
    Expression<double>? priceType,
    Expression<double>? discount1,
    Expression<double>? discount2,
    Expression<double>? discount3,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (date != null) 'FECHA': date,
      if (divisaPrice != null) 'PRECIO_DIVISA': divisaPrice,
      if (priceType != null) 'TIPO_PRECIO': priceType,
      if (discount1 != null) 'DESCUENTO1': discount1,
      if (discount2 != null) 'DESCUENTO1': discount2,
      if (discount3 != null) 'DESCUENTO3': discount3,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  StatsLastPriceTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? articleId,
      Value<DateTime>? date,
      Value<double>? divisaPrice,
      Value<double>? priceType,
      Value<double>? discount1,
      Value<double>? discount2,
      Value<double>? discount3,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return StatsLastPriceTableCompanion(
      customerId: customerId ?? this.customerId,
      articleId: articleId ?? this.articleId,
      date: date ?? this.date,
      divisaPrice: divisaPrice ?? this.divisaPrice,
      priceType: priceType ?? this.priceType,
      discount1: discount1 ?? this.discount1,
      discount2: discount2 ?? this.discount2,
      discount3: discount3 ?? this.discount3,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (date.present) {
      map['FECHA'] = Variable<DateTime>(date.value);
    }
    if (divisaPrice.present) {
      map['PRECIO_DIVISA'] = Variable<double>(divisaPrice.value);
    }
    if (priceType.present) {
      map['TIPO_PRECIO'] = Variable<double>(priceType.value);
    }
    if (discount1.present) {
      map['DESCUENTO1'] = Variable<double>(discount1.value);
    }
    if (discount2.present) {
      map['DESCUENTO1'] = Variable<double>(discount2.value);
    }
    if (discount3.present) {
      map['DESCUENTO3'] = Variable<double>(discount3.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatsLastPriceTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('articleId: $articleId, ')
          ..write('date: $date, ')
          ..write('divisaPrice: $divisaPrice, ')
          ..write('priceType: $priceType, ')
          ..write('discount1: $discount1, ')
          ..write('discount2: $discount2, ')
          ..write('discount3: $discount3, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $StatsLastPriceTableTable extends StatsLastPriceTable
    with TableInfo<$StatsLastPriceTableTable, StatsLastPriceDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StatsLastPriceTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String> articleId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _divisaPriceMeta =
      const VerificationMeta('divisaPrice');
  @override
  late final GeneratedColumn<double> divisaPrice = GeneratedColumn<double>(
      'PRECIO_DIVISA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _priceTypeMeta = const VerificationMeta('priceType');
  @override
  late final GeneratedColumn<double> priceType = GeneratedColumn<double>(
      'TIPO_PRECIO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _discount1Meta = const VerificationMeta('discount1');
  @override
  late final GeneratedColumn<double> discount1 = GeneratedColumn<double>(
      'DESCUENTO1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _discount2Meta = const VerificationMeta('discount2');
  @override
  late final GeneratedColumn<double> discount2 = GeneratedColumn<double>(
      'DESCUENTO1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _discount3Meta = const VerificationMeta('discount3');
  @override
  late final GeneratedColumn<double> discount3 = GeneratedColumn<double>(
      'DESCUENTO3', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        articleId,
        date,
        divisaPrice,
        priceType,
        discount1,
        discount2,
        discount3,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ULTIMOS_PRECIOS';
  @override
  String get actualTableName => 'ULTIMOS_PRECIOS';
  @override
  VerificationContext validateIntegrity(Insertable<StatsLastPriceDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['FECHA']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('PRECIO_DIVISA')) {
      context.handle(
          _divisaPriceMeta,
          divisaPrice.isAcceptableOrUnknown(
              data['PRECIO_DIVISA']!, _divisaPriceMeta));
    } else if (isInserting) {
      context.missing(_divisaPriceMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _priceTypeMeta,
          priceType.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _priceTypeMeta));
    } else if (isInserting) {
      context.missing(_priceTypeMeta);
    }
    if (data.containsKey('DESCUENTO1')) {
      context.handle(_discount1Meta,
          discount1.isAcceptableOrUnknown(data['DESCUENTO1']!, _discount1Meta));
    } else if (isInserting) {
      context.missing(_discount1Meta);
    }
    if (data.containsKey('DESCUENTO1')) {
      context.handle(_discount2Meta,
          discount2.isAcceptableOrUnknown(data['DESCUENTO1']!, _discount2Meta));
    } else if (isInserting) {
      context.missing(_discount2Meta);
    }
    if (data.containsKey('DESCUENTO3')) {
      context.handle(_discount3Meta,
          discount3.isAcceptableOrUnknown(data['DESCUENTO3']!, _discount3Meta));
    } else if (isInserting) {
      context.missing(_discount3Meta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {
        customerId,
        articleId,
        date,
        divisaPrice,
        priceType,
        discount1,
        discount2,
        discount3
      };
  @override
  StatsLastPriceDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StatsLastPriceDTO(
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articleId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      date: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      divisaPrice: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO_DIVISA'])!,
      priceType: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TIPO_PRECIO'])!,
      discount1: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO1'])!,
      discount2: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO1'])!,
      discount3: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO3'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $StatsLastPriceTableTable createAlias(String alias) {
    return $StatsLastPriceTableTable(attachedDatabase, alias);
  }
}

class VisitTableCompanion extends UpdateCompanion<VisitDTO> {
  final Value<String> id;
  final Value<String> customerId;
  final Value<DateTime> date;
  final Value<String> numEmpl;
  final Value<String?> contact;
  final Value<String?> summary;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const VisitTableCompanion({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.date = const Value.absent(),
    this.numEmpl = const Value.absent(),
    this.contact = const Value.absent(),
    this.summary = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  VisitTableCompanion.insert({
    required String id,
    required String customerId,
    required DateTime date,
    required String numEmpl,
    this.contact = const Value.absent(),
    this.summary = const Value.absent(),
    required double latitude,
    required double longitude,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        customerId = Value(customerId),
        date = Value(date),
        numEmpl = Value(numEmpl),
        latitude = Value(latitude),
        longitude = Value(longitude),
        lastUpdated = Value(lastUpdated);
  static Insertable<VisitDTO> custom({
    Expression<String>? id,
    Expression<String>? customerId,
    Expression<DateTime>? date,
    Expression<String>? numEmpl,
    Expression<String>? contact,
    Expression<String>? summary,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'VISITA_ID': id,
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (date != null) 'FECHA': date,
      if (numEmpl != null) 'NUM_EMPL': numEmpl,
      if (contact != null) 'CONTACTO': contact,
      if (summary != null) 'RESUMEN': summary,
      if (latitude != null) 'LATITUD': latitude,
      if (longitude != null) 'LONGITUD': longitude,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  VisitTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? customerId,
      Value<DateTime>? date,
      Value<String>? numEmpl,
      Value<String?>? contact,
      Value<String?>? summary,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return VisitTableCompanion(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      date: date ?? this.date,
      numEmpl: numEmpl ?? this.numEmpl,
      contact: contact ?? this.contact,
      summary: summary ?? this.summary,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['VISITA_ID'] = Variable<String>(id.value);
    }
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (date.present) {
      map['FECHA'] = Variable<DateTime>(date.value);
    }
    if (numEmpl.present) {
      map['NUM_EMPL'] = Variable<String>(numEmpl.value);
    }
    if (contact.present) {
      map['CONTACTO'] = Variable<String>(contact.value);
    }
    if (summary.present) {
      map['RESUMEN'] = Variable<String>(summary.value);
    }
    if (latitude.present) {
      map['LATITUD'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['LONGITUD'] = Variable<double>(longitude.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VisitTableCompanion(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('date: $date, ')
          ..write('numEmpl: $numEmpl, ')
          ..write('contact: $contact, ')
          ..write('summary: $summary, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $VisitTableTable extends VisitTable
    with TableInfo<$VisitTableTable, VisitDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VisitTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'VISITA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _numEmplMeta = const VerificationMeta('numEmpl');
  @override
  late final GeneratedColumn<String> numEmpl = GeneratedColumn<String>(
      'NUM_EMPL', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _contactMeta = const VerificationMeta('contact');
  @override
  late final GeneratedColumn<String> contact = GeneratedColumn<String>(
      'CONTACTO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _summaryMeta = const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
      'RESUMEN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'LATITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'LONGITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        customerId,
        date,
        numEmpl,
        contact,
        summary,
        latitude,
        longitude,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'VISITAS';
  @override
  String get actualTableName => 'VISITAS';
  @override
  VerificationContext validateIntegrity(Insertable<VisitDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('VISITA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['VISITA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['FECHA']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('NUM_EMPL')) {
      context.handle(_numEmplMeta,
          numEmpl.isAcceptableOrUnknown(data['NUM_EMPL']!, _numEmplMeta));
    } else if (isInserting) {
      context.missing(_numEmplMeta);
    }
    if (data.containsKey('CONTACTO')) {
      context.handle(_contactMeta,
          contact.isAcceptableOrUnknown(data['CONTACTO']!, _contactMeta));
    }
    if (data.containsKey('RESUMEN')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['RESUMEN']!, _summaryMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['LATITUD']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['LONGITUD']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VisitDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VisitDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}VISITA_ID'])!,
      customerId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      date: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      numEmpl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NUM_EMPL'])!,
      contact: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CONTACTO']),
      summary: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN']),
      latitude: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD'])!,
      longitude: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LONGITUD'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $VisitTableTable createAlias(String alias) {
    return $VisitTableTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $LastSyncDateTableTable lastSyncDateTable =
      $LastSyncDateTableTable(this);
  late final $CountryTableTable countryTable = $CountryTableTable(this);
  late final $DivisaTableTable divisaTable = $DivisaTableTable(this);
  late final $SalesOrderStatusTableTable salesOrderStatusTable =
      $SalesOrderStatusTableTable(this);
  late final $SalesOrderTableTable salesOrderTable =
      $SalesOrderTableTable(this);
  late final $SalesOrderLineTableTable salesOrderLineTable =
      $SalesOrderLineTableTable(this);
  late final $CollectionTermTableTable collectionTermTable =
      $CollectionTermTableTable(this);
  late final $CollectionMethodTableTable collectionMethodTable =
      $CollectionMethodTableTable(this);
  late final $CustomerTableTable customerTable = $CustomerTableTable(this);
  late final $CustomerUserTableTable customerUserTable =
      $CustomerUserTableTable(this);
  late final $CustomerNetGroupTableTable customerNetGroupTable =
      $CustomerNetGroupTableTable(this);
  late final $FamilyTableTable familyTable = $FamilyTableTable(this);
  late final $SubfamilyTableTable subfamilyTable = $SubfamilyTableTable(this);
  late final $CustomerDiscountTableTable customerDiscountTable =
      $CustomerDiscountTableTable(this);
  late final $CustomerContactTableTable customerContactTable =
      $CustomerContactTableTable(this);
  late final $CustomerAddressTableTable customerAddressTable =
      $CustomerAddressTableTable(this);
  late final $CustomerPendingPaymentTableTable customerPendingPaymentTable =
      $CustomerPendingPaymentTableTable(this);
  late final $CustomerNetPriceTableTable customerNetPriceTable =
      $CustomerNetPriceTableTable(this);
  late final $CustomerRappelTableTable customerRappelTable =
      $CustomerRappelTableTable(this);
  late final $TopArticleTableTable topArticleTable =
      $TopArticleTableTable(this);
  late final $ArticleTableTable articleTable = $ArticleTableTable(this);
  late final $ArticleComponentTableTable articleComponentTable =
      $ArticleComponentTableTable(this);
  late final $ArticleCompanyVatTableTable articleCompanyVatTable =
      $ArticleCompanyVatTableTable(this);
  late final $ArticleSpareTableTable articleSpareTable =
      $ArticleSpareTableTable(this);
  late final $ArticleSubstituteTableTable articleSubstituteTable =
      $ArticleSubstituteTableTable(this);
  late final $ArticleRatePriceTableTable articleRatePriceTable =
      $ArticleRatePriceTableTable(this);
  late final $ArticleNetGroupPriceTableTable articleNetGroupPriceTable =
      $ArticleNetGroupPriceTableTable(this);
  late final $StatsCustomerUserSalesTableTable statsCustomerUserSalesTable =
      $StatsCustomerUserSalesTableTable(this);
  late final $StatsLastPriceTableTable statsLastPriceTable =
      $StatsLastPriceTableTable(this);
  late final $VisitTableTable visitTable = $VisitTableTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        lastSyncDateTable,
        countryTable,
        divisaTable,
        salesOrderStatusTable,
        salesOrderTable,
        salesOrderLineTable,
        collectionTermTable,
        collectionMethodTable,
        customerTable,
        customerUserTable,
        customerNetGroupTable,
        familyTable,
        subfamilyTable,
        customerDiscountTable,
        customerContactTable,
        customerAddressTable,
        customerPendingPaymentTable,
        customerNetPriceTable,
        customerRappelTable,
        topArticleTable,
        articleTable,
        articleComponentTable,
        articleCompanyVatTable,
        articleSpareTable,
        articleSubstituteTable,
        articleRatePriceTable,
        articleNetGroupPriceTable,
        statsCustomerUserSalesTable,
        statsLastPriceTable,
        visitTable
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
