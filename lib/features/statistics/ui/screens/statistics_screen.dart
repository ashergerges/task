import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/constants/app_colors.dart';
import 'package:task/core/utils/constants/app_text_them.dart';
import 'package:task/core/utils/extensions/padding_extensions.dart';
import 'package:task/gen/assets.gen.dart';
import '../../../Tabs/cubit/tab_bar_cubit.dart';
import '../../../common/ui/fade_in_slide.dart';
import '../../cubits/statistics_cubit.dart';

@RoutePage()
class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBarCubit, TabBarState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInSlide(
                duration: 0.6,
                direction: FadeSlideDirection.ltr,
                child: StatisticContainer(
                  title: "Total Count",
                  value: "${state.orders.length}",
                ),
              ),
              FadeInSlide(
                duration: 0.7,
                direction: FadeSlideDirection.ltr,
                child: StatisticContainer(
                  title: "Returns Number",
                  value: "${state.returnsNum}",
                ),
              ),
              FadeInSlide(
                duration: 0.8,
                direction: FadeSlideDirection.ltr,
                child: StatisticContainer(
                  title: "Average Price",
                  value: "${state.avgPrice.toStringAsFixed(5)}",
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}

class StatisticContainer extends StatelessWidget {
  const StatisticContainer({
    super.key, required this.title, required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 20.padAll,
      margin: 20.padAll,
      decoration: BoxDecoration(
          color: AppColors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15.r)

      ),
      child: Column(
        children: [
          Text(value, style: AppTextTheme.headingLarge.copyWith(
            color: AppColors.white
          ),),
          Text(title, style: AppTextTheme.bodyMedium.copyWith(
              color: AppColors.white
          ),),
        ],
      ),
    );
  }
}
