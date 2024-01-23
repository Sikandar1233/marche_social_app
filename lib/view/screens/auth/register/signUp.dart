// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_sizes.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
// import 'package:marche_social_app/view/widget/custom_textformfield.dart';
// import 'package:marche_social_app/view/widget/my_button_widget.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   TextEditingController emailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: Padding(
//         padding: AppSizes.DEFAULT,
//         child: Column(
//           children: [
//             MyText(
//               text: 'Sign up',
//               onTap: () {},
//               size: 24,
//               weight: FontWeight.w500,
//               color: KTertiaryColor,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             MyText(
//               text: 'Please Enter your details to continue',
//               size: 16,
//               weight: FontWeight.w300,
//               color: kQuarternaryColor,
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             CustomTextField(
//               controller: emailController,
//               isUseLebelText: true,
//               labelText: 'Email',
//               hintText: 'example@gmail.com',
//               backgroundColor: kWhiteColor,
//               borderColor: kQuarternaryColor,
//               borderRadius: 10,
//               hintTextFontSize: 12,
//             ),
//             CustomTextField(
//               controller: emailController,
//               isUseLebelText: true,
//               labelText: 'Create a password',
//               hintText: 'must be 8 characters',
//               backgroundColor: kWhiteColor,
//               borderColor: kQuarternaryColor,
//               borderRadius: 10,
//               prefixIconNeed: true,
//               prefixIcon: Assets.imagesHeart,
//               hintTextFontSize: 12,
//               suffixIcon: Assets.imagesVisableIcon,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 MyText(
//                   text: 'Confirm password',
//                   size: 14,
//                   weight: FontWeight.w300,
//                   color: KTertiaryColor,
//                 ),
//                 CustomTextField(
//                   controller: emailController,
//                   hintText: 'repeat password',
//                   backgroundColor: kWhiteColor,
//                   borderColor: kQuarternaryColor,
//                   borderRadius: 10,
//                   hintTextFontSize: 12,
//                   suffixIcon: Assets.imagesVisableIcon,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Row(
//               children: [
//                 CommonImageView(
//                   svgPath: Assets.imagesCheckBox,
//                 ),
//                 MyText(
//                   text: 'I accept the terms and privacy policy',
//                   size: 14,
//                   weight: FontWeight.w300,
//                   color: KTertiaryColor,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             MyButton(
//                 buttonText: 'Register',
//                 onTap: () {},
//                 backgroundColor: KSecondaryColor,
//                 fontColor: kWhiteColor,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 radius: 40),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               children: [
//                 MyText(
//                   text: 'Already have an account?',
//                   size: 14,
//                   weight: FontWeight.w300,
//                   color: KTertiaryColor,
//                 ),
//                 MyText(
//                   text: 'Log in',
//                   onTap: () {},
//                   size: 14,
//                   weight: FontWeight.w300,
//                   color: KTertiaryColor,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
