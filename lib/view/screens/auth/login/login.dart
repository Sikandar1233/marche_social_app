import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/generated/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_textformfield.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MyText(
                  text: 'Hi, Welcome!',
                  size:24,
                  weight: FontWeight.w500,
                  color: KTertiaryColor ,
                ),
                CommonImageView(svgPath: Assets.imagesHiImage,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Email address',
                      size: 14,
                      weight: FontWeight.w300,
                      color:KTertiaryColor,
                    ),
                    CustomTextField(controller:emailController,hintText:'Your email',
                      backgroundColor:kWhiteColor,
                      borderColor: kQuarternaryColor,borderRadius:10,hintTextFontSize:12,),

                  ],
                ),
                SizedBox(height:20,),
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: 'Password',
            size: 14,
            weight: FontWeight.w300,
            color:KTertiaryColor,
          ),
          CustomTextField(controller:emailController,hintText:'Password',
            backgroundColor:kWhiteColor,
            borderColor: kQuarternaryColor,borderRadius:10,hintTextFontSize:12,
             hintTextFontColor: Colors.black.withOpacity(0.5),
            suffixIcon: '$Icon(Icons.visibility)',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonImageView(svgPath: Assets.imagesCheckBox,),
              MyText(
                text: 'Remember me',
                size:14 ,
                weight:FontWeight.w300 ,
              ),
              MyText(
                text: 'Forgot password?',
                onTap: (){},
                size:14 ,
                weight:FontWeight.w300 ,
              )
            ],
          ),
          SizedBox(height:20,),
          MyButton(
            onTap:(){} ,
            buttonText:'login',
            backgroundColor:KSecondaryColor,
            fontColor:kWhiteColor,
            fontSize:16,
            fontWeight:FontWeight.w500,
            radius:60,),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           MyText(text: 'Don’t have an account?',color: Colors.black.withOpacity(0.7)),
              MyText(text: 'Register',onTap: (){

              },)
            ],
          ),

        ],
      ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
