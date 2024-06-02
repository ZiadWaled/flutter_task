
import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/app_router.dart';
import 'package:flutter_task/presentation/resources/theme_manager.dart';

@immutable
class MyApp extends StatelessWidget {
  MyApp._internal();

  int? appState = 0;

  static final MyApp _instance =
      MyApp._internal();

  factory MyApp() =>
      _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,

      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      builder: (BuildContext context, Widget? child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      locale: const Locale('ar', ''), // لغة العربية
    );
  }
}