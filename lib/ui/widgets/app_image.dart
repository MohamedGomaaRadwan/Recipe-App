import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/ui/helper/context_extensions.dart';
import 'package:recipe_app/ui/resources/app_images.dart';
import 'package:recipe_app/ui/widgets/loading.dart';

class AppNetworkImage extends StatelessWidget {
  final String? imagePath;
  final BoxFit? boxFit;
  final String? errorIconPath;
  final bool isCircular;
  const AppNetworkImage({
    super.key,
    this.isCircular=true,
    this.boxFit,
    this.imagePath,
    this.errorIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return isCircular? ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: _buildCachedNetworkImage(),
    ):_buildCachedNetworkImage();
  }

  CachedNetworkImage _buildCachedNetworkImage() {
    return CachedNetworkImage(
      imageUrl: imagePath??"",
      imageBuilder: (context, provider) => Container(
        decoration: const BoxDecoration(shape: BoxShape.circle),
        width: context.sw,
        height: context.sh,
        child: Image(fit: boxFit ?? BoxFit.cover, image: provider),
      ),
      placeholder: (context, url) => _buildSizedWidget(
        child: SizedBox(
          width: context.sw,
          height: context.sh,
          child: const Center(child: AppLoading()),
        ),
      ),
      errorWidget: ((context, url, error) => _buildSizedWidget(
          child: Image.asset(AppImages.defaultImage,
              width: context.sw, height: context.sh, fit: BoxFit.cover))),
    );
  }

  _buildSizedWidget({required Widget child}) {
    return SizedBox(
      child: Center(child: child),
    );
  }
}
