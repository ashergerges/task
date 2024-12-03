import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:task/core/router/app_router.dart';
import 'package:task/core/utils/extensions/padding_extensions.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../gen/assets.gen.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  // late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      //duration: const Duration(milliseconds: 1500),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (context.mounted) {
          log("mounted11#1");
            context.router.replaceAll([ HomeBottomTabsRoute()]);
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: 20.padAll,
            child: Center(
              child: Lottie.asset(
                Assets.animations.splash,
                repeat: false, // Set to false to avoid looping
                controller: _animationController,
                onLoaded: (composition) {
                  // Configure the animation duration and forward it
                  _animationController
                    ..duration = composition.duration
                    ..forward();
                },

                // Callback for animation completion
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // AnimatedBuilder(
          //   builder: (BuildContext context, Widget? child) {
          //
          //     return ScaleTransition(
          //       scale: _animationController.drive(0.8.tweenTo(1.5)),
          //       child: FadeTransition(
          //         opacity:_animationController..drive(1.0.tweenTo(0.0)),
          //         child: child!,
          //       ),
          //     );
          //   },
          //   animation: _animationController,
          //   child:  Center(child:
          //   SvgPicture.asset(
          //     Assets.svg.cleanWizardLogo.path,
          //     fit: BoxFit.fitWidth,
          //   ), ),
          // )
        );
      }),
    );
  }
}
