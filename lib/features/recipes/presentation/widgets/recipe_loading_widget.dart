import 'package:flutter/cupertino.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:skeleton_text/skeleton_text.dart';

class RecipeLoadingWidget extends StatelessWidget {
  const RecipeLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTitle(),
                _buildTitle(),
              ],
            ),
          ),
          20.heightBox,
          SizedBox(
            height: context.sh * 0.65,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: List.generate(
                3,
                (index) => Container(
                    width: context.sw * 0.6,
                    height: context.sh * 0.6,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.textColor.withOpacity(0.4))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildTitle() {
    return Container(
      width: 80,
      height: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.textColor.withOpacity(0.4)),
    );
  }
}
