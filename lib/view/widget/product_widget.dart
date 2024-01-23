import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/star_rating.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.image,
      required this.catagoryText,
      required this.titleText,
      required this.rating,
      required this.numberSold,
      required this.userReactImage,
      required this.productPrice});
  final String image;
  final String catagoryText;
  final String titleText;
  final double rating;
  final double numberSold;
  final String userReactImage;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.topLeft,
        children: [
          CommonImageView(
            imagePath: image,
          ),
          Positioned(
            top: 7.5,
            left: 8,
            child: Container(
              alignment: Alignment.center,
              height: 12,
              width: 31,
              decoration: BoxDecoration(
                color: KSecondaryColor,
                borderRadius: BorderRadius.circular(21.54),
              ),
              child: MyText(
                text: catagoryText,
                size: 5.41,
                weight: FontWeight.w500,
                fontFamily: AppFonts.OUTFit_DISPLAY,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      ),
      title: MyText(
        text: titleText,
        size: 14,
        weight: FontWeight.w500,
        fontFamily: AppFonts.OUTFit_DISPLAY,
      ),
      subtitle: Row(
        children: [
          StarRating(
            rating: rating,
          ),
          MyText(
            text: '$rating',
            size: 12,
            color: KSecondaryColor,
            weight: FontWeight.w300,
          ),
          MyText(
            text: '${((numberSold))}',
            size: 12,
            color: kQuarternaryColor,
            weight: FontWeight.w300,
          ),
        ],
      ),
      trailing: SizedBox(
        height: 100,
        width: 120,
        child: Column(
          children: [
            CommonImageView(
              imagePath: userReactImage,
              height: 11.87,
              width: 13.33,
            ),
            Row(
              children: [
                MyText(
                  text: '\$${productPrice}',
                  weight: FontWeight.w500,
                  color: KSecondaryColor,
                  fontFamily: AppFonts.OUTFit_DISPLAY,
                  size: 20,
                ),
                MyText(
                  text: '\$${productPrice}',
                  weight: FontWeight.w300,
                  color: kQuarternaryColor,
                  fontFamily: AppFonts.OUTFit_DISPLAY,
                  size: 9.74,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
