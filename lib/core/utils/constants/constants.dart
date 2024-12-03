
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:task/core/utils/constants/translations.dart';



class AppStrings {
  AppStrings._();
  static Translations translations = const Translations();
}

class TranslationsConstants {
  static const String localeAR = 'ar';
  static const String localeEN = 'en';
  static bool isEnglish(BuildContext context) =>
      (context.locale.languageCode == TranslationsConstants.localeEN);

  static bool isLTR(BuildContext context) =>
      (context.locale.languageCode == TranslationsConstants.localeEN);

  static bool isContainsArabic(String text) {
    RegExp exp = RegExp(r"^[\u0621-\u064A]+");
    return exp.hasMatch(text);
  }
}
