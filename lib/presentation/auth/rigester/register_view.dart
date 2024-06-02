import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/resources/assets_manager.dart';
import 'package:flutter_task/presentation/resources/color_manager.dart';
import 'package:flutter_task/presentation/resources/strings_manager.dart';
import 'package:flutter_task/presentation/resources/values_manager.dart';
import 'package:flutter_task/presentation/widgets/main_button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _agreedToTerms = false;
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p28,
              right: AppPadding.p28,
              top: AppPadding.p60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppStrings.registerText,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: AppSize.s40,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: AppStrings.name3,
                    labelText: AppStrings.name3,
                  ),
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: AppStrings.userName,
                    labelText: AppStrings.userName,
                    suffixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: AppStrings.phone,
                    labelText: AppStrings.phone,
                    suffixIcon: Icon(Icons.phone_outlined),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    hintText: AppStrings.password,
                    labelText: AppStrings.password,
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    hintText: AppStrings.confirmPassword,
                    labelText: AppStrings.confirmPassword,
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                Row(
                  children: [
                    Text(
                      AppStrings.registrationType,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(width: AppSize.s16),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(right: AppSize.s16),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(AppSize.s40)),
                            border: Border.all(color: ColorManager.primary)),
                        child: DropdownButton<String>(
                          value: _selectedOption,
                          hint: Text(
                            AppStrings.company,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(color: Colors.grey),
                          ),
                          items: <String>['z', 'y', 'x'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(color: Colors.grey),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedOption = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: ColorManager.white,
                        activeColor: ColorManager.primary,
                        value: _agreedToTerms,
                        onChanged: (bool? value) {
                          setState(() {
                            _agreedToTerms = value!;
                          });
                        },
                      ),

                      // اوافق على / الشروط والاحكام / و /سياسة الخصوصية

                      RichText(
                        maxLines: 2,
                        text: TextSpan(
                          text: AppStrings.agree,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                              text: AppStrings.conditions,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      color: ColorManager.primary, fontSize: 14),
                            ),
                            TextSpan(
                              text: AppStrings.and,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(fontSize: 13),
                            ),
                            TextSpan(
                              text: AppStrings.privacy,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                      color: ColorManager.primary, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.s14,),
                MainButton(
                  text: AppStrings.login,
                  onPressed: () {},
                ),

              ],
            ),
          ),
          Spacer(),
          Image.asset(ImageAssets.backLogin2),
        ],
      ),
    );
  }
}
