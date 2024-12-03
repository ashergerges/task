import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/extensions/padding_extensions.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../gen/assets.gen.dart';

class NavigationBarItems extends StatelessWidget {
  final int activeScreen;
  final Function(int) onTap;

  const NavigationBarItems(
      {super.key, required this.activeScreen, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration:  BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20.r)
      ),
      margin: 10.padAll,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => onTap(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.statistic.image(
                      height: 25.h,),
                  2.verticalSpace,
                  Text("Metrics",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: activeScreen == 0
                              ? AppColors.primary
                              : AppColors.white)),
                ],
              ),
            ),
          ),
          10.horizontalSpace,
          Expanded(
            child: GestureDetector(
              onTap: () => onTap(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.chart.image(
                      height: 25.h,
                  ),
                  2.verticalSpace,
                  Text("Chart",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: activeScreen == 1
                              ? AppColors.primary
                              : AppColors.white)),
                ],
              ),
            ),
          ),
          10.horizontalSpace,
        ],
      ),
    );
  }
}
