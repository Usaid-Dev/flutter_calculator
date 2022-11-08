import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator.dart';
import 'package:flutter_calculator/provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Calculator',
        home: const CalculatorApp());
  }
}
