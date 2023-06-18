import 'package:flutter/cupertino.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_icons.dart';
import 'package:recipe_app/ui/resources/app_images.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_svg_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sw,
      height: context.sh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.empty),
          20.heightBox,
          AppText(
              text: AppStrings.yourCartIsEmpty,
              color: AppColors.primaryColor,
              fontSize: 20),
          10.heightBox,
          AppText(
              text: AppStrings.addSomeProducts,
              color: AppColors.textColor,
              fontSize: 16)
        ],
      ),
    );
  }
}
