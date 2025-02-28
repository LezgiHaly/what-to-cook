import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(LightThemeState()) {
    on<ToggleThemeEvent>(_onToggleTheme);
  }

  void _onToggleTheme(ToggleThemeEvent event, Emitter<ThemeState> emit) {
    if (event.isDark) {
      emit(DarkThemeState()); // Переключаемся на темную тему
      print('Switched to Dark Theme');
    } else {
      emit(LightThemeState()); // Переключаемся на светлую тему
      print('Switched to Light Theme');
    }
  }
}
