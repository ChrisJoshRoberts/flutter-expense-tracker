import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      home: Expenses(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, 
        primarySwatch: Colors.amber,
        dialogTheme: DialogThemeData(backgroundColor: Colors.white),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.amber[900],
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.amber[900],
          ),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
      ),
    ),
  );
}