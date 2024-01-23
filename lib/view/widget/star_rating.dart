import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;

  StarRating({required this.rating, this.starCount = 5, this.size = 12.0});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    double remainingRating = rating - fullStars;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        if (index < fullStars) {
          // Full star
          return Icon(
            Icons.star_rate_rounded,
            size: size,
            color: kYellowColor,
          );
        } else if (index == fullStars && remainingRating > 0) {
          // Partial star
          return Icon(
            Icons.star_half_rounded,
            size: size,
            color: kGrayColor,
          );
        } else {
          // Empty star
          return Icon(
            Icons.star_rate_rounded,
            weight: 0.25,
            size: size,
            color: kGrayColor,
          );
        }
      }),
    );
  }
}
