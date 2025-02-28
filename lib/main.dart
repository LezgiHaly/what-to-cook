import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_to_cook/constants/themes.dart';
import 'blocs/blocs.dart';
import 'views/home/home.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state is DarkThemeState
            ? AppThemes.darkTheme
            : AppThemes.lightTheme;

        return AnimatedTheme(
          data: theme,
          duration: const Duration(seconds: 8),
          child: MaterialApp(
            title: 'What to Cook',
            theme: theme,

            // AppThemes.lightTheme, // Светлая тема
            // darkTheme: AppThemes.darkTheme, // Темная тема
            // themeMode: state is DarkThemeState
            //     ? ThemeMode.dark
            //     : ThemeMode.light, // Текущая тема

            // ThemeData(
            //   colorScheme: ColorScheme.fromSeed(
            //     seedColor: AppColors.primary, // Основной цвет
            //     brightness: Brightness.light,
            //   ),
            //   useMaterial3: true,
            // ),
            home:
                // const Center(
                //   child: Text('data'),
                // )
                const HomeScreen(),
          ),
        );
      },
    );
  }
}
