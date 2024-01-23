// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_sizes.dart';
// import 'package:marche_social_app/view/widget/custom_textformfield.dart';
// import 'package:marche_social_app/view/widget/my_button_widget.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';

// class LoginwithPhoneNumberScreen extends StatefulWidget {
//   const LoginwithPhoneNumberScreen({super.key});

//   @override
//   State<LoginwithPhoneNumberScreen> createState() => _LoginwithPhoneNumberScreenState();
// }

// class _LoginwithPhoneNumberScreenState extends State<LoginwithPhoneNumberScreen> {
//   TextEditingController countryNameFlagController =TextEditingController();
//   TextEditingController phoneNumberController =TextEditingController();
//   bool isSwitched =false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: Padding(
//         padding: AppSizes.DEFAULT,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [

//             MyText(
//               text: 'Login',
//               size: 24,
//               weight: FontWeight.w500,
//               color: KTertiaryColor,
//             ),
//             MyText(
//               text: 'Please enter your country code and enter your phone number.',
//               size: 16,
//               weight: FontWeight.w500,
//               color:kQuarternaryColor,
//             ),
//             CustomTextField(
//               controller: countryNameFlagController,
//               backgroundColor: kWhiteColor,
//               borderColor: kQuarternaryColor,
//               hintText:'Country and flag',
//             ),
//             CustomTextField(
//               controller: phoneNumberController,
//               backgroundColor: kWhiteColor,
//               borderColor: kQuarternaryColor,
//               hintText:'+33 | 0 00 00 00 00',
//               hintTextFontSize:16,
//             ),
//             SizedBox(height:30,),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 MyText(
//                   text: 'Sync Contacts',
//                   size: 16,
//                   weight: FontWeight.w300,
//                   color: KTertiaryColor,
//                 ),
//                 Switch(value: isSwitched,
//                     activeColor: kBlueColor,
//                     onChanged: (value){
//                       setState(() {
//                         isSwitched=value;
//                       });
//                     })

//               ],
//             ),
//             MyButton(buttonText:'Continue',onTap:(){} ,backgroundColor: KSecondaryColor,
//                 fontColor:kWhiteColor ,fontSize:16 ,fontWeight:FontWeight.w500 ,radius:40),




//           ],
//         ),
//       ),
//     );
//   }
// }