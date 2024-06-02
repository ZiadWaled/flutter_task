// import 'package:challenge/core/constants/app_image.dart';
// import 'package:challenge/core/constants/app_space.dart';
// import 'package:challenge/core/ys_localizations/ys_localizations.dart';
// import 'package:challenge/views/auth/rigester/provider_rigester_page.dart';
// import 'package:challenge/views/auth/rigester/tourist_rigester_page.dart';
// import 'package:challenge/views/widgets/back_button.dart';
// import 'package:challenge/views/widgets/main_scaffold.dart';
// import 'package:challenge/views/widgets/main_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class SelectUserTypePage extends StatelessWidget {
//   const SelectUserTypePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MainScaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(
//             top: AppSpacing.s100,
//             right: AppSpacing.s14,
//             left: AppSpacing.s14,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const MainBackButton(),
//               Padding(
//                 padding: EdgeInsets.only(
//                     top: AppSpacing.s30, bottom: AppSpacing.s30),
//                 child: MainText.heading('membership_type'.tr),
//               ),
//               MainText.subHeading('choose_membership'.tr),
//               SizedBox(
//                 height: AppSpacing.s100,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 120, left: 120),
//                 child: Column(
//                   children: [
//                     GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       const TouristRigesterPage()));
//                         },
//                         child: SvgPicture.asset(AssetsManager.tourist)),
//                     Padding(
//                       padding: EdgeInsets.only(
//                           top: AppSpacing.s30, bottom: AppSpacing.s30),
//                       child: MainText.subHeading('tourist'.tr),
//                     ),
//                     GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       const ProviderRigesterPage()));
//                         },
//                         child: SvgPicture.asset(AssetsManager.provider)),
//                     Padding(
//                       padding: EdgeInsets.only(
//                           top: AppSpacing.s30, bottom: AppSpacing.s30),
//                       child: MainText.subHeading('service_provider'.tr),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
