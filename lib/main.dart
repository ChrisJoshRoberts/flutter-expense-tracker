import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      home: Expenses(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, 
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
      ),
    ),
  );
}