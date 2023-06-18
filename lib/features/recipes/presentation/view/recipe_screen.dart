import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/infrastructure/dependencies/dependency_init.dart';
import 'package:recipe_app/features/recipes/presentation/view_model/recipe_bloc.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/empty_widget.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/recipe_item.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/recipe_loading_widget.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({Key? key}) : super(key: key);
  final RecipeBloc _recipeBloc = getIt<RecipeBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => _recipeBloc..add(RecipeEvent.fetchRecipes()),
          child: BlocBuilder<RecipeBloc, RecipeState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    40.heightBox,
                    AppText(
                        text: AppStrings.whatDoYouWantToCook,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                    20.heightBox,
                    state.isLoading
                        ? const RecipeLoadingWidget()
                        : _buildRecipesList(state,context),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRecipesList(RecipeState state, BuildContext context) {
    return state.recipes.isEmpty
        ? const EmptyWidget()
        : Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AppText(text: state.recipes.length.toString()),
                      2.widthBox,
                      AppText(text: AppStrings.recipes)
                    ],
                  ),
                  InkWell(
                      onTap: () =>
                          _recipeBloc.add(RecipeEvent.navigateToFavorites()),
                      child: AppText(
                          text: AppStrings.favoritesList,
                          color: AppColors.primaryColor,
                          decoration: TextDecoration.underline))
                ],
              ),
              20.heightBox,
              SizedBox(
                height: context.sh * 0.65,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                      state.recipes.length,
                      (index) => RecipeItem(
                            recipeModel: state.recipes[index],
                            onRecipeTap: (recipe) => _recipeBloc.add(
                                RecipeEvent.navigateToRecipeDetails(
                                    recipeModel: recipe)),
                          )),
                ),
              ),
            ],
          );
  }
}
