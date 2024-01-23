import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/register_option.dart';

class UserRegistrationOptionsScreen extends StatefulWidget {
  const UserRegistrationOptionsScreen({super.key});

  @override
  State<UserRegistrationOptionsScreen> createState() =>
      _UserRegistrationOptionsScreenState();
}

class _UserRegistrationOptionsScreenState
    extends State<UserRegistrationOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            Spacer(),
            MyText(
              text: 'Explore the app',
              color: KTertiaryColor,
              fontFamily: AppFonts.OUTFit_DISPLAY,
              size: 24,
              weight: FontWeight.w500,
            ),
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.center,
              child: MyText(
                text: 'Now your Shopping and Social media at one\nplace',
                color: kQuarternaryColor,
                fontFamily: AppFonts.OUTFit_DISPLAY,
                size: 16,
                weight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 25,),
           RegisterOptions(image: 'assets/images/phone_image.png',
                imageHeight: 16,
                imageWidth: 16,
                text: 'Continue with Phone Number', onTap: (context){}),
            SizedBox(height:15,),
            RegisterOptions(image:'assets/images/gologo.png',
                imageHeight:20 ,
                imageWidth:20 ,
                     text: 'Continue with Google', onTap: (context){}),
            SizedBox(height:15,),
            RegisterOptions(image:'assets/images/apple.png' ,
                imageHeight: 20,
                imageWidth: 20,
                text: 'Continue with Apple', onTap: (context){}),
            SizedBox(height:15,),
            RegisterOptions(image:'assets/images/email_icon.png' ,
                imageHeight: 14.82,
                imageWidth: 18,
                text: 'Continue with Email', onTap: (context){}),
            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: 'Already have an account?',
                  color: KTertiaryColor,
                  fontFamily: AppFonts.OUTFit_DISPLAY,
                  size: 14,
                  weight: FontWeight.w300,
                ),
                MyText(
                  text: ' Log in',
                  onTap: () {},
                  color: KSecondaryColor,
                  fontFamily: AppFonts.OUTFit_DISPLAY,
                  size: 16,
                  weight: FontWeight.w300,
                ),
              ],
            ),
            SizedBox(height: 90,)
          ],
        ),
      ),
    );
  }

}
