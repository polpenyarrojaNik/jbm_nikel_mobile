import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

final currencies = [
  Currency.create(
    'EU',
    2,
    symbol: '€',
    decimalSeparator: ',',
    groupSeparator: '.',
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'RMB',
    2,
    symbol: '¥',
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'HUF',
    2,
    symbol: 'Ft',
    decimalSeparator: ',',
    groupSeparator: '.',
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'MXP',
    2,
    decimalSeparator: ',',
    groupSeparator: '.',
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'PLN',
    2,
    symbol: 'zł',
    decimalSeparator: ',',
    groupSeparator: '.',
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'CLP',
    2,
    decimalSeparator: ',',
    groupSeparator: '.',
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'USD',
    2,
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'CLP',
    2,
    decimalSeparator: ',',
    groupSeparator: '.',
    pattern: 'S#,##0.##',
  ),
  Currency.create(
    'MAD',
    2,
    symbol: 'DH',
    decimalSeparator: ',',
    groupSeparator: '.',
    pattern: 'S#,##0.##',
  ),
  Currency.create('GB', 2,
      symbol: '£',
      groupSeparator: ',',
      decimalSeparator: '.',
      pattern: 'S#.##0,##'),
];

extension MoneyParsing on String {
  Money parseMoney(String currencyId) {
    final Currency currency = Currencies().find(currencyId) ?? currencies[0];

    try {
      return Money.parseWithCurrency(this, currency);
    } on MoneyParseException {
      return Money.fromIntWithCurrency(0, currency);
    }
  }

  Money parseMoneyWithoutDecimal(String currencyId) {
    final Currency currency = Currencies().find(currencyId) ?? currencies[0];

    try {
      return Money.parseWithCurrency(this, currency);
    } on MoneyParseException {
      return Money.fromIntWithCurrency(0, currency);
    }
  }

  Money toMoneyWithoutDecimal(String currencyId) {
    final Currency currency = Currencies().find(currencyId) ?? currencies[0];

    try {
      return Money.parseWithCurrency(this, currency);
    } on MoneyParseException {
      return Money.fromIntWithCurrency(0, currency);
    }
  }
}

extension MoneyParsingDouble on num {
  Money toMoney({String? currencyId}) {
    final Currency currency =
        Currencies().find(currencyId ?? 'EU') ?? currencies[0];

    NumberFormat formatter = NumberFormat.decimalPattern('es');

    final importeStr = formatter.format(this);

    try {
      return Money.parseWithCurrency(importeStr, currency);
    } on MoneyParseException {
      if (isNegative) {
        try {
          return Money.fromNumWithCurrency(this, currency);
        } on MoneyParseException {
          return Money.fromNumWithCurrency(0, currency);
        }
      } else {
        return Money.fromNumWithCurrency(0, currency);
      }
    }
  }
}
