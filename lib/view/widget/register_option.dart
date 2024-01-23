import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class RegisterOptions extends StatelessWidget {
  RegisterOptions(
      {super.key, required this.image, required this.text,this.imageHeight,
        this.imageWidth,required this.onTap});
  final String  image;
  final String text;
  final  double? imageWidth;
  final double? imageHeight;
  final void Function(BuildContext) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 335,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: kGrey2Color),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Image.asset(
                    image,
                  height: imageHeight,
                  width: imageWidth,
                ),
              ),

              MyText(
                text: text,
                color: KTertiaryColor,
                fontFamily: AppFonts.OUTFit_DISPLAY,
                size: 16,
                weight: FontWeight.w500,
              ),
            ],
          ),
          onTap: () => this.onTap(context),
        ),
      ),
    );
  }
}
