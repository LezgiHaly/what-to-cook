

import 'package:equatable/equatable.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ToggleThemeEvent extends ThemeEvent {
  final bool isDark; // true для темной темы, false для светлой

  const ToggleThemeEvent(this.isDark);

  @override
  List<Object> get props => [isDark];
}