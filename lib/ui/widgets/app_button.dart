import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_styles.dart';
import 'package:recipe_app/ui/widgets/app_svg_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';
import 'package:recipe_app/ui/widgets/loading.dart';

enum ButtonType {
  active,
  text,
  disabled,
}

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.type,
    this.textColor,
    this.onTap,
    this.padding,
    this.center = false,
    this.isLoading = false,
    this.leadingIcon,
    this.trailingIcon,
    this.textStyle,
    this.buttonColor,
    this.borderColor,
  });
  final bool center;
  final String text;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final ButtonType type;
  final GestureTapCallback? onTap;
  final bool isLoading;
  final String? leadingIcon;
  final String? trailingIcon;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    if (isLoading) return const AppLoading();
    return InkWell(
      onTap: type != ButtonType.disabled ? onTap : null,
      child: Container(
          padding: padding ?? const EdgeInsets.symmetric(vertical: 18, horizontal:16),
          decoration: BoxDecoration(
            color: buttonColor ?? type.getFilledColor(context),
            borderRadius: AppCorners.xl3gBorder,
            border: Border.all(color: borderColor ?? type.getBorderColor(context)),
          ),
          child: _buildLayout(context)),
    );
  }

  Widget _buildLayout(BuildContext context) {
    if (trailingIcon != null || leadingIcon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (leadingIcon != null) _buildIcon(leadingIcon!),
          4.widthBox,
          _buildText(context),
          4.widthBox,
          if (trailingIcon != null) _buildIcon(trailingIcon!),
        ],
      );
    }
    return Center(
      child: _buildText(context),
    );
  }

  AppSVGImage _buildIcon(String icon) => AppSVGImage(
    image: icon,
    width:  20,
    height: 20,
  );

  AppText _buildText(BuildContext context) {
    return AppText(
      text: text,
      textAlign: center ? TextAlign.center : TextAlign.start,
      textStyle: getTextStyle(context),
    );
  }

  TextStyle getTextStyle(BuildContext context) {
    if (textStyle != null) return textStyle!;

    return const TextStyle(fontSize: 18,fontWeight: FontWeight.w400) ;
  }
}

extension ButtonTypeExtension on ButtonType {
  Color getFilledColor(BuildContext context) {
    switch (this) {
      case ButtonType.active:
        return AppColors.primaryColor;
      case ButtonType.text:
        return Colors.transparent;
      case ButtonType.disabled:
        return AppColors.disabledColor;
    }
  }

  Color getBorderColor(BuildContext context) {
    switch (this) {
      case ButtonType.active:
        return AppColors.primaryColor;
      case ButtonType.text:
        return Colors.transparent;
      case ButtonType.disabled:
        return AppColors.disabledColor;
    }
  }

  Color? getTextColor(BuildContext context) {
    switch (this) {
      case ButtonType.active:
        return AppColors.primaryColor;
      case ButtonType.text:
        return null;
      case ButtonType.disabled:
        return AppColors.disabledColor;
    }
  }
}


