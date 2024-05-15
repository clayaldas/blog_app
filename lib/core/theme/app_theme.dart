import 'package:blog_app/core/theme/app_color_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // static final _border = OutlineInputBorder(
  //   borderSide: const BorderSide(
  //     color: AppColorPallete.borderColor,
  //     width: 3,
  //   ),
  //   borderRadius: BorderRadius.circular(10),
  // );

  static _border([Color color = AppColorPallete.borderColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColorPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(25),
      enabledBorder: _border(),
      focusedBorder: _border(AppColorPallete.gradient2),
    ),
  );
}
