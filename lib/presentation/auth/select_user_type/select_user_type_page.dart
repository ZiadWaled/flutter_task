
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/presentation/resources/values_manager.dart';

class SelectUserTypePage extends StatelessWidget {
  const SelectUserTypePage({super.key});

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
             IconButton(onPressed: (){ Navigator.pop(context);

             }, icon: const Icon(Icons.arrow_back)),
              const Padding(
                padding: EdgeInsets.only(
                    top: AppSize.s20, bottom: AppSize.s20),
                child: Text('membership_type'),
              ),
              const Text('choose_membership'),
              const SizedBox(
                height: AppSize.s100,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 120, left: 120),
                child: Column(
                  children: [

                    Padding(
                      padding: EdgeInsets.only(
                          top: AppSize.s20, bottom: AppSize.s20),
                      child: Text('tourist'),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                          top: AppSize.s20, bottom: AppSize.s20),
                      child: Text('service_provider'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
