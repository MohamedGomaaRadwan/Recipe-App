import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class IngredientsList extends StatelessWidget {
  IngredientsList({this.ingredientsList, Key? key}) : super(key: key);
  List<String>? ingredientsList = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
            ingredientsList!.length,
            (index) => _IngredientsItem(
                  ingredient: ingredientsList![index],
                )),
      ),
    );
  }
}

class _IngredientsItem extends StatelessWidget {
  const _IngredientsItem({Key? key, required this.ingredient})
      : super(key: key);
  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: ingredient),
        4.heightBox,
        const Divider(),
        4.heightBox,
      ],
    );
  }
}
