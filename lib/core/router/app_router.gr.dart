// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChartRoute.name: (routeData) {
      final args = routeData.argsAs<ChartRouteArgs>(
          orElse: () => const ChartRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChartScreen(key: args.key),
      );
    },
    HomeBottomTabsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeBottomTabsRouteArgs>(
          orElse: () => const HomeBottomTabsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeBottomTabsScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    StatisticsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StatisticsScreen(),
      );
    },
  };
}

/// generated route for
/// [ChartScreen]
class ChartRoute extends PageRouteInfo<ChartRouteArgs> {
  ChartRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChartRoute.name,
          args: ChartRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChartRoute';

  static const PageInfo<ChartRouteArgs> page = PageInfo<ChartRouteArgs>(name);
}

class ChartRouteArgs {
  const ChartRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ChartRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomeBottomTabsScreen]
class HomeBottomTabsRoute extends PageRouteInfo<HomeBottomTabsRouteArgs> {
  HomeBottomTabsRoute({
    Key? key,
    int index = 0,
    List<PageRouteInfo>? children,
  }) : super(
          HomeBottomTabsRoute.name,
          args: HomeBottomTabsRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeBottomTabsRoute';

  static const PageInfo<HomeBottomTabsRouteArgs> page =
      PageInfo<HomeBottomTabsRouteArgs>(name);
}

class HomeBottomTabsRouteArgs {
  const HomeBottomTabsRouteArgs({
    this.key,
    this.index = 0,
  });

  final Key? key;

  final int index;

  @override
  String toString() {
    return 'HomeBottomTabsRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StatisticsScreen]
class StatisticsRoute extends PageRouteInfo<void> {
  const StatisticsRoute({List<PageRouteInfo>? children})
      : super(
          StatisticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
