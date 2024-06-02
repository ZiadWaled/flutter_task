

import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/color_manager.dart';
import 'package:flutter_task/presentation/resources/font_manager.dart';
import 'package:flutter_task/presentation/resources/styles_manager.dart';
import 'package:flutter_task/presentation/resources/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary, // ripple effect color
    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.gray,
      elevation: AppSize.s4,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s0,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: 16,
        )),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.primary,
      disabledColor: ColorManager.gray,
      splashColor: ColorManager.lightPrimary, // ripple effect color
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      textStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),
      backgroundColor: ColorManager.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)),
    )),

    // text theme
    textTheme: TextTheme(
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGray, fontSize: FontSize.s16), //head line 1
      titleMedium: getRegularStyle(
          color: ColorManager.black, fontSize: FontSize.s30), //sup title 1
      labelLarge:getBoldStyle(color: ColorManager.primary,fontSize: FontSize.s40),//button
      bodyLarge: getRegularStyle(color: ColorManager.black,fontSize: AppSize.s20), //caption
      bodySmall: getRegularStyle(color: ColorManager.gray), //bodyText1
      titleSmall: getBoldStyle(
          color: ColorManager.white, fontSize: FontSize.s18,), //bodyText1
      labelSmall: getBoldStyle(
          color: ColorManager.green, fontSize: FontSize.s16), //bodyText1
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(
        color: ColorManager.gray,
        fontSize: FontSize.s14,
      ),
      // label style
      labelStyle: getRegularStyle(
        color: ColorManager.gray,
        fontSize: FontSize.s14,
      ),
      // error style
      errorStyle: getRegularStyle(
        color: ColorManager.error,
        fontSize: FontSize.s14,
      ),
      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s40)),
      ),

      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.gray,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s40)),
      ),

      // error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s40)),
      ),

      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
