import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/presentation/auth/activation%20_code/widget/activation_code_widget.dart';
import 'package:flutter_task/presentation/resources/color_manager.dart';
import 'package:flutter_task/presentation/resources/values_manager.dart';

class ActivationCodePage extends StatelessWidget {
  const ActivationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppSize.s100,
            right: AppSize.s14,
            left: AppSize.s14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: AppSize.s40, bottom: AppSize.s40),
                child: Text('acivation_code'),
              ),
              const Text('enter_code'),
              const SizedBox(
                height: AppSize.s100,
              ),
              ConfirmationCodeInput(),
              const SizedBox(
                height: AppSize.s60,
              ),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const SelectUserTypePage(),
                  //     ));
                },
                // color: ColorManager.black,
                // borderRadius: AppSize.s60,
                child: const Text(
                  'resend_code',
                  // style: ,
                  // textAlign: TextAlign.center,
                  // color: ColorManager.white,
                  // fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
