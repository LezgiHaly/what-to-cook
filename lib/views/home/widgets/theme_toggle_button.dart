
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_to_cook/blocs/theme/theme_event.dart';
import 'package:what_to_cook/blocs/theme/theme_state.dart';
import '../../../blocs/theme/theme_bloc.dart';

class ThemeToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeBloc>().state is DarkThemeState;

    return ElevatedButton(
      onPressed: () async {
        // Добавляем задержку перед отправкой события
        await Future.delayed(Duration(milliseconds: 500)); // Задержка 500 мс
        context.read<ThemeBloc>().add(ToggleThemeEvent(!isDark));
      },
      child: Text(isDark ? 'Switch to Light Theme' : 'Switch to Dark Theme'),
    );
  }
}