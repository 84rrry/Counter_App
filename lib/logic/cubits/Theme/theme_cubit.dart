import 'package:bloc/bloc.dart';
import 'package:counter_app/core/themes/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.light)){
updateAppThemeMode();
  }
void updateAppThemeMode(){
final Brightness currentBrightness=AppTheme.currentSystemBrightness;
currentBrightness==Brightness.light ? _setTheme(ThemeMode.light):_setTheme(ThemeMode.dark);
}
void changeAppThemeMode(){
state.themeMode==ThemeMode.dark ? _setTheme(ThemeMode.light):_setTheme(ThemeMode.dark);
}
void _setTheme(ThemeMode themeMode){
  AppTheme.setStatusBarColor(themeMode);
  emit(ThemeState(themeMode: themeMode));
}
}
