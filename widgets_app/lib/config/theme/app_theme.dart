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
  final bool isDarkMode;

  AppTheme({this.selectColor = 0, this.isDarkMode = false})
    : assert(selectColor >= 0, 'Selected color must be greather then 0');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectColor],
    appBarTheme: const AppBarTheme(centerTitle: true),
  );
}
