import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/app_router.dart';
import 'package:flutter_task/presentation/resources/assets_manager.dart';
import 'package:flutter_task/presentation/resources/color_manager.dart';
import 'package:flutter_task/presentation/resources/constants_manager.dart';
import 'package:flutter_task/presentation/resources/strings_manager.dart';
import 'package:flutter_task/presentation/resources/values_manager.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: AppSize.s75,
          ),
          child: Image.asset(ImageAssets.logoSplash),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            bottom: AppSize.s20,
          ),
          child: RichText(
            text: TextSpan(
              text: AppStrings.wazeftak,
              style: Theme.of(context).textTheme.labelLarge,
              children: <TextSpan>[
                TextSpan(
                  text: AppStrings.andena,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: ColorManager.green),
                ),
              ],
            ),
          ),
        ),
        Image.asset(ImageAssets.backSplash),
        Container(
          height: MediaQuery.of(context).size.height/10,
          color: ColorManager.green,
        )
      ]),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
