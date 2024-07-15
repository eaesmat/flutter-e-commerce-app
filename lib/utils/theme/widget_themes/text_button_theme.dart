import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TTextButtonTheme {
  TTextButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lighTTextButtonTheme = TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.light,
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.darkGrey,
      disabledBackgroundColor: TColors.buttonDisabled,
      side: const BorderSide(color: TColors.primary),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.textWhite, fontWeight: FontWeight.w600),
    ),
  );

  /* -- Dark Theme -- */
  static final darkTextButtonTheme = TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.light,
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.darkGrey,
      disabledBackgroundColor: TColors.darkerGrey,
      side: const BorderSide(color: TColors.primary),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.textWhite, fontWeight: FontWeight.w600),
    ),
  );
}
