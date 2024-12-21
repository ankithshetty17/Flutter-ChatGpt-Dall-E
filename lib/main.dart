import 'package:flutter/material.dart';
import 'package:levii/core/app_theme.dart';
import 'package:levii/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Levii',
      theme: AppTheme.darkTheme,
      home: HomeScreen(),
    );
  }
}

