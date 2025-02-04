import 'package:flutter/material.dart';

final darkThem = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 34, 33, 33),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 34, 33, 33),
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
  dividerColor: Colors.grey,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: Colors.white54,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      )),
  useMaterial3: true,
);
