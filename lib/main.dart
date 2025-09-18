import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.amber.shade900);

void main() {
  runApp(
    MaterialApp(
      home: Expenses(),
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kColorScheme.primaryContainer,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
        ),
        cardTheme: CardThemeData().copyWith(
          color: kColorScheme.surfaceBright,
        )
    ),
  ),
  );
}