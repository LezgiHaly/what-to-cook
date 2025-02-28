import 'package:flutter/material.dart';
import 'colors.dart'; // Ваши цвета
import 'text_styles.dart'; // Ваши текстовые стили

class AppThemes {
  // Светлая тема с Material 3
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Включаем Material 3
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary, // Основной цвет
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      displayLarge: AppTextStyles.headline1,
      displayMedium: AppTextStyles.headline2,
      bodyLarge: AppTextStyles.bodyText1,
      bodyMedium: AppTextStyles.bodyText2,
      labelLarge: AppTextStyles.button,
    ),
  );

  // Темная тема с Material 3
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true, // Включаем Material 3
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary, // Основной цвет
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      displayLarge:
          AppTextStyles.headline1.copyWith(color: AppColors.background),
      displayMedium:
          AppTextStyles.headline2.copyWith(color: AppColors.background),
      bodyLarge: AppTextStyles.bodyText1.copyWith(color: AppColors.background),
      bodyMedium: AppTextStyles.bodyText2.copyWith(color: AppColors.background),
      labelLarge: AppTextStyles.button.copyWith(color: AppColors.background),
    ),
  );
}
