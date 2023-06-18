import 'package:flutter/cupertino.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';

class DarkLayer extends StatelessWidget {
  const DarkLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        width: context.sw,
        height: context.sh,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: AppColors.black.withOpacity(0.5)),
      ),
    );
  }
}
