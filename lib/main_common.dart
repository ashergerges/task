// ignore_for_file: depend_on_referenced_packages
import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:task/core/utils/constants/constants.dart';
import 'package:task/main_common.config.dart';

final getIt = GetIt.instance;

const double loadingIndicatorSize = 70.0;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies() => $initGetIt(getIt);



Future<Widget> initMain(Widget child) async {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();


  return   EasyLocalization(
    supportedLocales: [
      Locale(AppStrings.translations.localeAr),
      Locale(AppStrings.translations.localeEN),
    ],
    path: 'assets/translations',
    startLocale: Locale(AppStrings.translations.localeDefault),
    fallbackLocale: Locale(AppStrings.translations.localeDefault),
    useOnlyLangCode: true,
    child:  ScreenUtilInit(
      designSize: const Size(360, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: child,
    ),
  );
}
