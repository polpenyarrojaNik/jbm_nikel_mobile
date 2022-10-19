import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

extension MoneyParsing on String {
  Money toMoney({String? currencyId}) {
    final euroCurrency = Currency.create('EU', 2,
        symbol: '€', invertSeparators: true, pattern: 'S#.##0,##');

    Currencies().registerList(
      [
        euroCurrency,
        Currency.create('RMB', 2, symbol: '¥', pattern: 'S#,##0.00'),
        Currency.create('HUF', 2,
            symbol: 'Ft', invertSeparators: true, pattern: 'S#.##0,00'),
        Currency.create('MXP', 2, invertSeparators: true, pattern: 'S#.##0,00'),
        Currency.create('PLN', 2,
            symbol: 'zł', invertSeparators: true, pattern: 'S#.##0,00'),
        Currency.create('CLP', 2, invertSeparators: true, pattern: 'S#.##0,##'),
        Currency.create('USD', 2, pattern: 'S#,##0.00'),
      ],
    );

    final currency = (currencyId != null)
        ? Currencies().find(currencyId) ?? euroCurrency
        : euroCurrency;

    try {
      return Money.parseWithCurrency(this, currency);
    } on MoneyParseException {
      return Money.fromIntWithCurrency(0, currency);
    }
  }

  Money toMoneyWithoutDecimal(String currencyId) {
    final euroCurrency = Currency.create('EU', 1,
        symbol: '€', invertSeparators: true, pattern: 'S#.##0');

    Currencies().registerList(
      [
        euroCurrency,
        Currency.create('RMB', 1, symbol: '¥', pattern: 'S#,##0'),
        Currency.create('HUF', 1,
            symbol: 'Ft', invertSeparators: true, pattern: 'S#.##0'),
        Currency.create('MXP', 1, invertSeparators: true, pattern: 'S#.##0'),
        Currency.create('PLN', 1,
            symbol: 'zł', invertSeparators: true, pattern: 'S#.##0'),
        Currency.create('CLP', 1, invertSeparators: true, pattern: 'S#.##0'),
        Currency.create('USD', 1, pattern: 'S#,##0'),
      ],
    );

    final currency = Currencies().find(currencyId) ?? euroCurrency;

    try {
      return Money.parseWithCurrency(this, currency);
    } on MoneyParseException {
      return Money.fromIntWithCurrency(0, currency);
    }
  }
}

extension MoneyParsingDouble on num {
  Money toMoney({String? currencyId}) {
    final euroCurrency = Currency.create('EU', 2,
        symbol: '€', invertSeparators: true, pattern: 'S#.##0,00');

    Currencies().registerList(
      [
        euroCurrency,
        Currency.create('RMB', 2, symbol: '¥', pattern: 'S#,##0.00'),
        Currency.create('HUF', 2,
            symbol: 'Ft', invertSeparators: true, pattern: 'S#.##0,00'),
        Currency.create('MXP', 2, invertSeparators: true, pattern: 'S#.##0,00'),
        Currency.create('PLN', 2,
            symbol: 'zł', invertSeparators: true, pattern: 'S#.##0,00'),
        Currency.create('CLP', 2, invertSeparators: true, pattern: 'S#.##0,##'),
        Currency.create('USD', 2, pattern: 'S#,##0.00'),
      ],
    );

    final currency = (currencyId != null)
        ? Currencies().find(currencyId) ?? euroCurrency
        : euroCurrency;

    NumberFormat formatter = NumberFormat.decimalPattern('es');

    final importeStr = formatter.format(this);

    try {
      return Money.parseWithCurrency(importeStr, currency);
    } on MoneyParseException {
      return Money.fromIntWithCurrency(0, currency);
    }
  }
}
