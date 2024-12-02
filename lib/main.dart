import 'package:flutter/material.dart';
import 'package:task/app.dart';
import 'package:task/core/utils/app_config.dart';
import 'package:task/main_common.dart';

void main() async {
  final appConfig = AppConfig( baseAPI: ''
    // baseAPI: AppStrings.endpoints.baseDevAPI
  );

  runApp(await initMain(App(appConfig: appConfig,)));

}