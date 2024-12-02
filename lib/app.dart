import 'package:task/core/utils/constants/theme.dart';
import 'package:task/main_common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'core/router/app_router.dart';
import 'core/utils/app_config.dart';

class App extends StatelessWidget {
  const App({super.key, required this.appConfig});

  final AppConfig appConfig;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,

      builder: EasyLoading.init(),
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
