import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/infrastructure/dependencies/dependency_init.dart';
import 'package:recipe_app/features/favorite/presentaion/view_model/favorite/favorite_bloc.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/empty_widget.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/recipe_item.dart';
import 'package:recipe_app/features/recipes/presentation/widgets/recipe_loading_widget.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);
  final FavoriteBloc _favoriteBloc = getIt<FavoriteBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) =>
              _favoriteBloc..add(FavoriteEvent.fetchFavorites()),
          child: BlocBuilder<FavoriteBloc, FavoriteState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    40.heightBox,
                    AppText(
                        text: AppStrings.yourFavorites,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                    20.heightBox,
                    state.recipes.isNotEmpty
                        ? _buildRecipesList(state, context)
                        : const EmptyWidget(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRecipesList(FavoriteState state, BuildContext context) {
    return state.isLoading
        ? const RecipeLoadingWidget()
        : Column(
            children: [
              Row(
                children: [
                  AppText(text: state.recipes.length.toString()),
                  2.widthBox,
                  AppText(text: AppStrings.recipes),
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
                      onRecipeTap: (recipe) {
                        _favoriteBloc.add(FavoriteEvent.routToRecipeDetails(
                            recipeModel: recipe));
                      },
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
