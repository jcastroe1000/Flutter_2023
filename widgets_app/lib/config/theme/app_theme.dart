import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.teal,
  Colors.orange,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
    : assert(selectColor >= 0, 'Selected color must be greather then 0');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectColor],
    appBarTheme: const AppBarTheme(centerTitle: true),
  );
}
