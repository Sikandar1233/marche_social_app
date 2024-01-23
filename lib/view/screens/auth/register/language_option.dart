import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/generated/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_textformfield.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';


class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  TextEditingController searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonImageView(svgPath: Assets.imagesBack),
            MyText(
              text: 'Choose the language',
              size:24,
              weight: FontWeight.w500,
              color: KTertiaryColor ,
            ),
            SizedBox(height:40,),
            MyText(
              text: 'Don’t worry! It happens. Please enter the email associated with your account.',
              size:24,
              weight: FontWeight.w500,
              color: kQuarternaryColor,
            ),
            SizedBox(height:20,),
            CustomTextField(controller:searchController,
              hintText:'Search',
            hintTextFontSize: 16,
            hintTextFontColor: kQuarternaryColor,
            prefixIcon: '$Icon(Icons.search)',
              radius:10,
              borderColor: kQuarternaryColor,
            ),
              SizedBox(height:20,),


              CustomTextField(controller:searchController,
                hintText:'Search',
                hintTextFontSize: 16,
                hintTextFontColor: kQuarternaryColor,
                prefixIcon: '$Icon(Icons.search)',
                radius:10,
                borderColor: kQuarternaryColor,
              ),
            CustomTextField(controller:searchController,
              hintText: '',
              hintTextFontSize: 1,
              radius:10,
              borderColor: kQuarternaryColor,
            ),


            MyButton(buttonText:'Continue',onTap:(){} ,backgroundColor: KSecondaryColor,
                fontColor:kWhiteColor ,fontSize:16 ,fontWeight:FontWeight.w500 ,radius:40),


          ],
        ),

      ),
    );
  }
}
