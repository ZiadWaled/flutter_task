import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/presentation/widgets/main_button.dart';
import 'package:flutter_task/presentation/resources/app_router.dart';
import 'package:flutter_task/presentation/resources/assets_manager.dart';
import 'package:flutter_task/presentation/resources/color_manager.dart';
import 'package:flutter_task/presentation/resources/strings_manager.dart';
import 'package:flutter_task/presentation/resources/values_manager.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return _getContentWidget();
  }

  Widget _getContentWidget() {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.backLogin),
            const Spacer(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    AppStrings.login,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: AppSize.s16,
                  ),
                  // text form filed (email)
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p28, right: AppPadding.p28),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _userNameController,
                      decoration: const InputDecoration(
                        hintText: AppStrings.userName,
                        labelText: AppStrings.userName,
                        suffixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s16,
                  ),
                  // text form filed (password)

                  Container(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p28, right: AppPadding.p28),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,

                      decoration: const InputDecoration(

                        hintText: AppStrings.password,
                        labelText: AppStrings.password,
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                  // forgetPassword
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: AppPadding.p28, right: AppPadding.p28),
                      child: TextButton(
                        onPressed: () {
                          // GoRouter.of(context).push(AppRouter.kForgotPasswordView);
                        },
                        child: Text(
                          AppStrings.forgetPassword,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s16,
                  ),
                  // Button (login)
                  MainButton(text: AppStrings.login, onPressed: (){}
                  ),

                  // Button (create acc)

                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: AppSize.s20,
                      top: AppSize.s20,
                    ),
                    child: InkWell(
                      onTap: (){

                         GoRouter.of(context).push(AppRouter.kRegisterView);

                      },
                      child: RichText(
                        text: TextSpan(
                          text: AppStrings.registerText2,
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: <TextSpan>[
                            TextSpan(
                              text: AppStrings.registerText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: ColorManager.green),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Image.asset(ImageAssets.backLogin2),
          ],
        ),
      ),
    );
  }
}
