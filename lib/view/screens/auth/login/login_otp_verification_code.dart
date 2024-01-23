// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_sizes.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// class LoginOtpCodeverficationScreen extends StatefulWidget {
//   const LoginOtpCodeverficationScreen({super.key});
//
//   @override
//   State<LoginOtpCodeverficationScreen> createState() => _OtpCodeverficationScreenState();
// }
//
// class _OtpCodeverficationScreenState extends State<LoginOtpCodeverficationScreen> {
//
//   TextEditingController pinCodeController =TextEditingController();
//   StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
//   String currentText = "";
//   late final BuildContext appContext;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: Padding(
//         padding: AppSizes.DEFAULT,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CommonImageView(svgPath: Assets.imagesBack),
//             MyText(
//               text: 'Enter code',
//               size: 16,
//               weight: FontWeight.w300,
//               color: KTertiaryColor ,
//             ),
//             MyText(
//               text: 'We’ve sent an SMS with an activation code to your phone ',
//               size: 16,
//               weight: FontWeight.w300,
//               color: kQuarternaryColor,
//             ),
//
//             PinCodeTextField(
//               appContext:context,
//               length: 6,
//               obscureText: false,
//               animationType: AnimationType.fade,
//               pinTheme: PinTheme(
//                 shape: PinCodeFieldShape.box,
//                 borderRadius: BorderRadius.circular(5),
//                 fieldHeight: 50,
//                 fieldWidth: 40,
//                 activeFillColor: Colors.white,
//               ),
//               animationDuration: Duration(milliseconds: 300),
//               backgroundColor: Colors.blue.shade50,
//               enableActiveFill: true,
//               errorAnimationController: errorController,
//               controller: pinCodeController,
//               onCompleted: (v) {
//                 print("Completed");
//               },
//               onChanged: (value) {
//                 print(value);
//                 setState(() {
//                   currentText = value;
//                 });
//               },
//               beforeTextPaste: (text) {
//                 print("Allowing to paste $text");
//                 //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//                 //but you can show anything you want here, like your pop up saying wrong paste format or etc
//                 return true;
//               },
//             ),
//
//             SizedBox(height: 20,),
//             MyText(
//               text: 'Wrong code, please try again',
//               size: 16,
//               weight: FontWeight.w300,
//               color: kQuarternaryColor,
//             ),
//             SizedBox(height: 30,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 MyText(text:'Send code again',size: 16,color:KSecondaryColor,weight: FontWeight.w500,),
//                 MyText(text:'00:20',size: 16,color:kQuarternaryColor,weight: FontWeight.w300,),
//
//               ],
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
