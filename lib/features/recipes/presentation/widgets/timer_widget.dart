import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_icons.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_svg_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key, required this.period, this.isColored = false});

  final String? period;
  final bool isColored;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSVGImage(
            image: AppIcons.timer,
            color: isColored ? AppColors.primaryColor : AppColors.white),
        8.widthBox,
        Row(
          children: [
            AppText(
                text: AppStrings.getPeriod(period),
                color: isColored ? AppColors.primaryColor : AppColors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300),
            2.widthBox,
            AppText(
                text: AppStrings.min,
                color: isColored ? AppColors.primaryColor : AppColors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ],
        )
      ],
    );
  }
}
