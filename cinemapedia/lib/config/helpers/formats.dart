import 'package:intl/intl.dart';

class Formats {
  static String number(double number, [int decimals = 0]) {
    int replace = int.parse(number.toString().replaceAll('.', ''));
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: decimals,
      symbol: '',
      locale: 'en',
    ).format(replace);
    return formattedNumber;
  }
}
