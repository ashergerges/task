import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:task/features/splash/ui/splash_screen.dart';

import '../../features/Tabs/ui/home_bottom_tabs_screen.dart';
import '../../features/statistics/ui/screens/chart_screen.dart';
import '../../features/statistics/ui/screens/statistics_screen.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          type: RouteType.custom(
            transitionsBuilder: (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
          ),
        ),
    AutoRoute(page: ChartRoute.page),
    AutoRoute(page: StatisticsRoute.page),
    AutoRoute(page: HomeBottomTabsRoute.page),


      ];
}
