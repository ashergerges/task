import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../main_common.dart';
import '../cubit/tab_bar_cubit.dart';
import 'bottom_nav.dart';

@RoutePage()
class HomeBottomTabsScreen extends StatelessWidget {
  final int index;

  const HomeBottomTabsScreen({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TabBarCubit()..selectScreen(index)..getAllOrders(),
      child: BlocBuilder<TabBarCubit, TabBarState>(
        builder: (context, state) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
          return PopScope(
            canPop: state.activeScreen == 0 ? true : false,
            onPopInvokedWithResult: (didPop, result) async {
              if (state.activeScreen != 0) {
                getIt<AppRouter>().replaceAll([HomeBottomTabsRoute(index: 0)],
                    updateExistingRoutes: false);
              }
            },
            child: Scaffold(
              backgroundColor: AppColors.white,
              body: Stack(
                children: [
                  Positioned.fill(
                    child: Assets.images.background2.image(
                        fit: BoxFit.cover
                    ),
                  ),
                  context.read<TabBarCubit>().navScreens[state.activeScreen],
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: NavigationBarItems(
                        onTap: (index) {
                          context.read<TabBarCubit>().selectScreen(index);
                        },
                        activeScreen: state.activeScreen),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
