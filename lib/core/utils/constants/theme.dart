import 'package:task/core/utils/constants/app_colors.dart';
import 'package:task/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData get appTheme => ThemeData.from(
    colorScheme: lightColorScheme,
    useMaterial3: true,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontFamily: FontFamily.notoSans),
      displayMedium: TextStyle(fontFamily: FontFamily.notoSans),
      displaySmall: TextStyle(fontFamily: FontFamily.notoSans),
      headlineLarge: TextStyle(fontFamily: FontFamily.notoSans),
      headlineMedium: TextStyle(fontFamily: FontFamily.notoSans),
      headlineSmall: TextStyle(fontFamily: FontFamily.notoSans),
      titleMedium: TextStyle(fontFamily: FontFamily.notoSans),
      titleLarge: TextStyle(fontFamily: FontFamily.notoSans),
      titleSmall: TextStyle(fontFamily: FontFamily.notoSans),
      labelLarge: TextStyle(fontFamily: FontFamily.notoSans),
      labelMedium: TextStyle(fontFamily: FontFamily.notoSans),
      labelSmall: TextStyle(fontFamily: FontFamily.notoSans),
      bodyLarge: TextStyle(fontFamily: FontFamily.notoSans),
      bodyMedium: TextStyle(fontFamily: FontFamily.notoSans),
      bodySmall: TextStyle(fontFamily: FontFamily.notoSans),
    ).apply(
      //apparently not working!!
      fontFamily: FontFamily.notoSans,
      displayColor: Colors.black,
      bodyColor: Colors.black,
    ))
    .copyWith(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      backgroundColor: AppColors.white,
      centerTitle: true,
      elevation: 0,
      iconTheme:  IconThemeData(color: Colors.black),
    ),
      scaffoldBackgroundColor: AppColors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))))
  // fontFamily: 'notoSans-Regular',
);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF263572),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer:Color(0xFFFFFFFF),
  onPrimaryContainer: Color(0xFF001F25),
  secondary: Color(0xFFFBBC15),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFFFDEA1),
  onSecondaryContainer: Color(0xFF261900),
  tertiary: Color(0xFF006874),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF97F0FF),
  onTertiaryContainer: Color(0xFF001F24),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFFFF),
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFDBE4E6),
  onSurfaceVariant: Color(0xFF3F484A),
  outline: Color(0xFF6F797B),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFF51D7EF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF263572),
  outlineVariant: Color(0xFFBFC8CA),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF51D7EF),
  onPrimary: Color(0xFF00363E),
  primaryContainer: Color(0xFF004E59),
  onPrimaryContainer: Color(0xFFA1EFFF),
  secondary: Color(0xFFFBBC15),
  onSecondary: Color(0xFF402D00),
  secondaryContainer: Color(0xFF5C4300),
  onSecondaryContainer: Color(0xFFFFDEA1),
  tertiary: Color(0xFF4FD8EB),
  onTertiary: Color(0xFF00363D),
  tertiaryContainer: Color(0xFF004F58),
  onTertiaryContainer: Color(0xFF97F0FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F25),
  onBackground: Color(0xFFA6EEFF),
  surface: Color(0xFF001F25),
  onSurface: Color(0xFFA6EEFF),
  surfaceVariant: Color(0xFF3F484A),
  onSurfaceVariant: Color(0xFFBFC8CA),
  outline: Color(0xFF899295),
  onInverseSurface: Color(0xFF001F25),
  inverseSurface: Color(0xFFA6EEFF),
  inversePrimary: Color(0xFF263572),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF51D7EF),
  outlineVariant: Color(0xFF3F484A),
  scrim: Color(0xFF000000),
);

extension TextThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

