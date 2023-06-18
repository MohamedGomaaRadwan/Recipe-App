import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, this.rating, this.ratings});

  final double? rating;
  final double? ratings;

  @override
  Widget build(BuildContext context) {
    return rating != null
        ? Row(
            children: [
              AppText(
                  text: '(',
                  fontWeight: FontWeight.w200,
                  color: AppColors.textColor),
              AppText(
                  text: ratings!.toInt().toString(),
                  fontWeight: FontWeight.w300,
                  color: AppColors.textColor),
              4.widthBox,
              AppText(
                  text: AppStrings.ratings,
                  fontWeight: FontWeight.w300,
                  color: AppColors.textColor),
              AppText(
                  text: ')',
                  fontWeight: FontWeight.w300,
                  color: AppColors.textColor),
              4.widthBox,
              const Icon(Icons.star, color: Colors.yellow, size: 20),
              4.widthBox,
              AppText(text: rating.toString())
            ],
          )
        : Container();
  }
}
