import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class MacronutrientsRow extends StatelessWidget {
  const MacronutrientsRow(
      {Key? key, this.calories, this.fats, this.proteins, this.carbs})
      : super(key: key);
  final String? calories;
  final String? fats;
  final String? proteins;
  final String? carbs;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _MacronutrientsItem(
            title: AppStrings.calories, value: calories, unit: AppStrings.kcal),
        _buildDivider(),
        _MacronutrientsItem(
            title: AppStrings.fats, value: fats, unit: AppStrings.gm),
        _buildDivider(),
        _MacronutrientsItem(
            title: AppStrings.carbs, value: carbs, unit: AppStrings.gm),
        _buildDivider(),
        _MacronutrientsItem(
            title: AppStrings.proteins, value: proteins, unit: AppStrings.gm),
      ],
    );
  }

  SizedBox _buildDivider() {
    return const SizedBox(height: 60, child: VerticalDivider(width: 3));
  }
}

class _MacronutrientsItem extends StatelessWidget {
  const _MacronutrientsItem({Key? key, this.title, this.value, this.unit})
      : super(key: key);
  final String? title;
  final String? value;
  final String? unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
            text: title,
            fontWeight: FontWeight.w400,
            color: AppColors.textColor),
        4.heightBox,
        AppText(text: AppStrings.getPeriod(value)),
        4.heightBox,
        AppText(
            text: unit,
            fontWeight: FontWeight.w200,
            color: AppColors.textColor),
      ],
    );
  }
}
