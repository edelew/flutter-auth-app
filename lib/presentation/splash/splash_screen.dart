import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/router/app_router.gr.dart';
import 'package:flutter_auth_app/core/utils/animations.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/core/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _logoLontroller;

  double textOpacity = 0.0;

  @override
  void initState() {
    super.initState();

    _logoLontroller = AnimationController(vsync: this);

    changeOpacity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AppImages.wheel),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset(
                    AppAnimation.logo,
                    width: 200.w,
                    repeat: false,
                    onLoaded: (composition) {
                      _logoLontroller
                        ..duration = composition.duration
                        ..forward().whenComplete(
                          () => AutoRouter.of(context).pushAndPopUntil(
                            const AuthRoute(),
                            predicate: (route) => false,
                          ),
                        );
                    },
                  ),
                  AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: textOpacity,
                    child: Text(
                      'AutomApp',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w500,
                        height: 47.h / 40.sp,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeOpacity() async {
    await Future.delayed(const Duration(milliseconds: 500));

    setState(() {
      textOpacity = 1.0;
    });
  }
}
