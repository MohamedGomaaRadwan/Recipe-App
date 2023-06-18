import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/infrastructure/dependencies/dependency_init.dart';
import 'package:recipe_app/features/favorite/presentaion/view_model/favorite_button/favorite_button_cubit.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/ui/resources/app_icons.dart';
import 'package:recipe_app/ui/widgets/app_svg_image.dart';
import 'package:recipe_app/ui/widgets/loading.dart';

class FavoriteIcon extends StatelessWidget {
  FavoriteIcon({Key? key, required this.recipeModel}) : super(key: key);
  final RecipeModel recipeModel;
  final FavoriteButtonCubit _favoriteButtonCubit = getIt<FavoriteButtonCubit>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocProvider(
        create: (context) =>
            _favoriteButtonCubit..favoriteInitState(recipeModel),
        child: BlocBuilder<FavoriteButtonCubit, FavoriteButtonState>(
          builder: (context, state) {
            if (state.isLoading) return const AppLoading();
            return InkWell(
                onTap: () => _favoriteButtonCubit.addToFavorites(recipeModel),
                child: AppSVGImage(
                        image: AppIcons.heart,
                        color: state.isFavorite ?Colors.red:Colors.white,
                        width: 25,
                        height: 25));
          },
        ),
      ),
    );
  }
}
