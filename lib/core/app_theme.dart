import 'package:flutter/material.dart';
import 'package:levii/core/app_pallette.dart';

class AppTheme {
 static final  darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor:AppPallette.backgroundColor,
  appBarTheme: AppBarTheme(
    backgroundColor: AppPallette.backgroundColor,
  )
 );
}