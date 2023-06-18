import 'package:flutter/material.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_images.dart';

class AppScaffoldImage extends StatelessWidget {
  const AppScaffoldImage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.sw,
        height: context.sh,
        decoration: _buildBoxDecoration(),
        child: Center(child: child),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
        image: DecorationImage(
            image: const ExactAssetImage(AppImages.background),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken)),
      );
  }
}
