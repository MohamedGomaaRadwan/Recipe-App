import 'package:flutter/material.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/dark_layer.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/timer_widget.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/widgets/app_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem(
      {Key? key, required this.recipeModel, required this.onRecipeTap})
      : super(key: key);
  final RecipeModel recipeModel;
  final Function(RecipeModel) onRecipeTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onRecipeTap(recipeModel),
      child: Container(
        width: context.sw * 0.6,
        height: context.sh * 0.6,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Stack(
          children: [
            AppNetworkImage(imagePath: recipeModel.image),
            const DarkLayer(),
            _buildRecipeDetails(recipeModel),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipeDetails(RecipeModel recipeModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          AppText(
              text: recipeModel.name,
              color: AppColors.white,
              fontSize: 25,
              fontWeight: FontWeight.w400),
          20.heightBox,
          TimerWidget(period: recipeModel.time),
          40.heightBox,
        ],
      ),
    );
  }
}
