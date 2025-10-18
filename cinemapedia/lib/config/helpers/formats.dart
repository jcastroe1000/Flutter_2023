import 'package:intl/intl.dart';

class Formats {
  static String number(double number) {
    int replace = int.parse(number.toString().replaceAll('.', ''));
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
      locale: 'en',
    ).format(replace);
    return formattedNumber;
  }
}
