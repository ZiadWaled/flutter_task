//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_task/presentation/resources/color_manager.dart';
// import 'package:flutter_task/presentation/resources/strings_manager.dart';
// import 'package:flutter_task/presentation/resources/values_manager.dart';
//
// class TouristRigesterPage extends StatefulWidget {
//   const TouristRigesterPage({super.key});
//
//   @override
//   State<TouristRigesterPage> createState() => _TouristRigesterPageState();
// }
//
// class _TouristRigesterPageState extends State<TouristRigesterPage> {
//   bool _agreedToTerms = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(
//             top: AppSize.s60,
//             right: AppSize.s14,
//             left: AppSize.s14,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                     top: AppSize.s40, bottom: AppSize.s40),
//                 child: Text('new_account'),
//               ),
//               Text('enter_account_data'),
//               SizedBox(
//                 height: AppSize.s40,
//               ),
//               TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration:  InputDecoration(
//                   hintText: AppStrings.email,
//                   labelText: AppStrings.email,
//
//                 ),
//               ),
//               TextFormField(
//
//                 hint: 'enter_data'.tr,
//                 label: 'user_name'.tr,
//                 unfocusWhenTapOutside: true,
//                 keyboardType: TextInputType.name,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   top: AppSpacing.s30,
//                   bottom: AppSpacing.s30,
//                 ),
//                 child: MainTextField(
//                   hint: 'enter_data'.tr,
//                   label: 'user_photo'.tr,
//                   suffixIcon: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20.0, top: 13, bottom: 13),
//                     child: SvgPicture.asset(AssetsManager.gallary),
//                   ),
//                   unfocusWhenTapOutside: true,
//                   keyboardType: TextInputType.name,
//                 ),
//               ),
//               MainTextField(
//                 hint: 'enter_data'.tr,
//                 label: 'e_mail'.tr,
//                 unfocusWhenTapOutside: true,
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   top: AppSpacing.s30,
//                   bottom: AppSpacing.s30,
//                 ),
//                 child: MainTextField(
//                   hint: 'enter_data'.tr,
//                   label: 'city'.tr,
//                   suffixIcon: const Icon(
//                     Icons.arrow_drop_down,
//                     size: 40,
//                   ),
//                   unfocusWhenTapOutside: true,
//                   keyboardType: TextInputType.name,
//                 ),
//               ),
//               Row(
//                 children: [
//                   Checkbox(
//                     value: _agreedToTerms,
//                     onChanged: (bool? value) {
//                       setState(() {
//                         _agreedToTerms = value!;
//                       });
//                     },
//                   ),
//                   Text(
//                     'agree_term',
//                   ),
//                 ],
//               ),
//               TextButton(
//                 onPressed: () {
//
//                 },
//                 // color: ColorManager.black,
//                 // borderRadius: AppSize.s60,
//                 child: Text(
//                   'login',
//                   textAlign: TextAlign.center,
//                   // color: ColorManager.white,
//                   // fontSize: 14,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
