// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_fonts.dart';
// import 'package:marche_social_app/constants/app_sizes.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';

// class UserRegistrationOptionsScreen extends StatefulWidget {
//   const UserRegistrationOptionsScreen({super.key});

//   @override
//   State<UserRegistrationOptionsScreen> createState() =>
//       _UserRegistrationOptionsScreenState();
// }

// class _UserRegistrationOptionsScreenState
//     extends State<UserRegistrationOptionsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: Padding(
//         padding: AppSizes.DEFAULT,
//         child: Column(
//           children: [
//             Spacer(),
//             MyText(
//               text: 'Explore the app',
//               color: KTertiaryColor,
//               fontFamily: AppFonts.OUTFit_DISPLAY,
//               size: 24,
//               weight: FontWeight.w500,
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: MyText(
//                 text: 'Now your Shopping and Social media at one\nplace',
//                 color: kQuarternaryColor,
//                 fontFamily: AppFonts.OUTFit_DISPLAY,
//                 size: 16,
//                 weight: FontWeight.w300,
//               ),
//             ),
//             CommonImageView(
//               svgPath: Assets.imagesUserRegisterationOptions,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 MyText(
//                   text: 'Already have an account?',
//                   color: KTertiaryColor,
//                   fontFamily: AppFonts.OUTFit_DISPLAY,
//                   size: 14,
//                   weight: FontWeight.w300,
//                 ),
//                 MyText(
//                   text: 'Log in',
//                   onTap: () {},
//                   color: KSecondaryColor,
//                   fontFamily: AppFonts.OUTFit_DISPLAY,
//                   size: 14,
//                   weight: FontWeight.w300,
//                 ),
//               ],
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }
