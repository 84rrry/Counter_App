import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  //Light theme Colors
  static Color lightBgColor = Color.fromARGB(255, 168, 168, 168);
  static Color lightPrimaryColor = Color(0xff9f0fef);
  static Color lightAccentColor = Color(0xff6a5287);
  static Color lightParticlesColor = Color(0xff6a5287);
  const AppTheme._();
  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor:Colors.transparent,
      elevation: 0.0,
      shadowColor: Colors.transparent,
      ),
    scaffoldBackgroundColor: lightBgColor,
    primaryColor: lightPrimaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: lightAccentColor,
      brightness: Brightness.light,
    ),
    backgroundColor: lightBgColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );


  //Dark theme Colors
  static Color darkBgColor = Color.fromARGB(255, 19, 3, 37);
  static Color darkPrimaryColor = Color.fromARGB(255, 50, 5, 75);
  static Color darkAccentColor = Color.fromARGB(255, 19, 13, 26);
  static Color darkParticlesColor = Color.fromARGB(255, 36, 0, 80);
  static final darkTheme = ThemeData(
        appBarTheme: AppBarTheme(
      backgroundColor:Colors.transparent,
      elevation: 0.0,
      shadowColor: Colors.transparent,
      ),
    scaffoldBackgroundColor: darkBgColor,
    primaryColor: darkPrimaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: darkAccentColor,
      brightness: Brightness.dark,
    ),
    backgroundColor: darkBgColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static setStatusBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: themeMode==ThemeMode.light ? Brightness.dark:Brightness.light,
      statusBarColor: Colors.transparent,

    ));
  }
  static Brightness get currentSystemBrightness =>  SchedulerBinding.instance.window.platformBrightness;
}
extension ThemeExtras on ThemeData{
  Color get  particlesColor=>brightness==Brightness.light ? AppTheme.lightParticlesColor : AppTheme.darkParticlesColor;}