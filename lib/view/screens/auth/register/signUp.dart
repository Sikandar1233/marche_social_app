import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/generated/assets.dart';
import 'package:marche_social_app/view/widget/custom_textformfield.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      MyText(
                        text: 'Sign up',
                        onTap: () {},
                        size: 24,
                        weight: FontWeight.w500,
                        color: KTertiaryColor,
                      ),
                  SizedBox(
                    height: 10),
                  MyText(
                    text: 'Please Enter your details to continue',
                    size: 16,
                    weight: FontWeight.w300,
                    color: kQuarternaryColor,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    controller: emailController,
                    isUseLebelText: true,
                    labelText: 'Email',
                    hintText: 'example@gmail.com',
                    borderRadius: 10,
                    hintTextFontSize: 12,
                  ),
                  CustomTextField(
                      controller: emailController,
                      isUseLebelText: true,
                      labelText: 'Create a password',
                      hintText: 'must be 8 characters',
                      borderRadius: 10,
                      // prefixIconNeed: true,
                      // prefixIcon: Assets.imagesHeart,
                      hintTextFontSize: 12,
                      suffixIconNeed:true,
                      suffixIcon:Assets.imagesVisiableIcon,
                       iconScale: 0.8,

                  ),


                  CustomTextField(
                    controller: emailController,
                    hintText: 'must be 8 characters',
                    isUseLebelText:true ,
                    labelText: 'Confirm password',
                    borderRadius: 10,
                    hintTextFontSize: 12,
                    suffixIcon:Assets.imagesVisiableIcon,
                    iconScale: 0.4,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      MyText(
                        text: 'I accept the terms and privacy policy',
                        size: 14,
                        weight: FontWeight.w300,
                        color: KTertiaryColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MyButton(
                      buttonText: 'Register',
                      onTap: () {},
                      backgroundColor: KSecondaryColor,
                      fontColor: kWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      radius: 40),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        MyText(
                          text: 'Already have an account?',
                          size: 14,
                          weight: FontWeight.w300,
                          color: KTertiaryColor,
                        ),
                        MyText(
                          text: 'Log in',
                          onTap: () {},
                          size: 14,
                          weight: FontWeight.w300,
                          color:KSecondaryColor,
                        ),
                      ],
                    ),

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







