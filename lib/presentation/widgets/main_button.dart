import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/color_manager.dart';
import 'package:flutter_task/presentation/resources/strings_manager.dart';
import 'package:flutter_task/presentation/resources/values_manager.dart';

class MainButton extends StatelessWidget {

  final String text;
  final void Function()? onPressed;
   const MainButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.only(
        left: AppPadding.p28,
        right: AppPadding.p40,
      ),
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s40),
        ),
      ),
      child: TextButton(
          onPressed:onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          )),
    );
  }
}
