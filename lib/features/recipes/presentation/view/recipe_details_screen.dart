import 'package:flutter/material.dart';
import 'package:recipe_app/core/infrastructure/dependencies/dependency_init.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/dark_layer.dart';
import 'package:recipe_app/features/favorite/presentaion/widget/favorite_icon.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/ingredients_list.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/macronutrients_row.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/rating_widget.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/timer_widget.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class RecipeDetailsScreen extends StatelessWidget {
  RecipeDetailsScreen({Key? key}) : super(key: key);
  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    final RecipeModel recipeModel =
        ModalRoute.of(context)?.settings.arguments as RecipeModel;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildNetworkImage(recipeModel),
          _buildHeader(recipeModel, context),
          DraggableScrollableSheet(
            maxChildSize: 0.8,
            initialChildSize: 0.50,
            minChildSize: 0.15,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: _buildRecipeDetails(context, recipeModel),
              );
            },
          ),
        ],
      ),
    );
  }

  Container _buildRecipeDetails(BuildContext context, RecipeModel recipeModel) {
    return Container(
      width: context.sw,
      height: context.sh * 0.8,
      decoration: _buildBoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              10.heightBox,
              AppText(text: AppStrings.ingredients, fontSize: 30),
              20.heightBox,
              _buildRatings(recipeModel),
              20.heightBox,
              MacronutrientsRow(
                  calories: recipeModel.calories,
                  fats: recipeModel.fats,
                  carbs: recipeModel.carbos,
                  proteins: recipeModel.proteins),
              20.heightBox,
              IngredientsList(ingredientsList: recipeModel.ingredients),
              20.heightBox,
              AppText(text: AppStrings.description, fontSize: 18),
              12.heightBox,
              AppText(
                  text: recipeModel.description, fontWeight: FontWeight.w300)
            ],
          ),
        ),
      ),
    );
  }

  Row _buildRatings(RecipeModel recipeModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TimerWidget(period: recipeModel.time, isColored: true),
        RatingWidget(rating: recipeModel.rating, ratings: recipeModel.ratings),
      ],
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return const BoxDecoration(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      color: Colors.white,
    );
  }

  Stack _buildNetworkImage(RecipeModel recipeModel) {
    return Stack(
      children: [
        AppNetworkImage(imagePath: recipeModel.image, isCircular: false),
        const DarkLayer(),
      ],
    );
  }

  Padding _buildHeader(RecipeModel recipeModel, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          60.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () => _navigationService.pop(),
                  child: const Icon(Icons.arrow_back_outlined,
                      color: AppColors.primaryColor)),
              FavoriteIcon(recipeModel: recipeModel),
            ],
          ),
        ],
      ),
    );
  }
}
