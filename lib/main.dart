import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.amber.shade900);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Colors.amber,
);

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode theme = ThemeMode.light;
    void _changeTheme() {
    setState(() {
      theme = theme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Expenses(_changeTheme),
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kColorScheme.primaryContainer,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
        ),
        cardTheme: CardThemeData().copyWith(color: kColorScheme.surfaceBright),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardThemeData().copyWith(
          color: kDarkColorScheme.surfaceBright,
        ),
        dropdownMenuTheme: DropdownMenuThemeData().copyWith(
          textStyle: TextStyle(color: kDarkColorScheme.onSurface),
          menuStyle: MenuStyle().copyWith(
            backgroundColor: WidgetStatePropertyAll(
              kDarkColorScheme.surfaceBright,
            ),
            surfaceTintColor: WidgetStatePropertyAll(
              kDarkColorScheme.surfaceTint,
            ),
          ),
        ),
      ),
      themeMode: theme,
    );
  }
}