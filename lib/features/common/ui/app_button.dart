import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/extensions/padding_extensions.dart';

import '../../../core/utils/constants/app_colors.dart';
import 'custom_marquee_widget.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final double? height;
  final double? width;
  final double? radius;
  final Function()? onTap;
  final Color? background;
  final Color? textColor;
  final BoxBorder? border;
  final bool iconIsPre;
  final double? textSize;

  const AppButton({
    super.key,
    this.text,
    this.icon,
    this.height,
    this.width,
    this.radius,
    this.onTap,
    this.background,
    this.textColor,
    this.border, this.iconIsPre=false, this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: height,
        padding: 10.padAll,
        decoration: BoxDecoration(
            color: background ?? AppColors.primary,
            border: border,
            borderRadius: BorderRadius.circular(radius ?? 50.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            iconIsPre?icon??SizedBox():SizedBox(),
            text==null?const SizedBox():Expanded(
              child: Center(
                child: CustomMarquee(
                  child: Text(
                    text??"",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize:textSize?? 16.sp,
                        color: textColor ?? AppColors.white),
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            iconIsPre?SizedBox():icon ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}