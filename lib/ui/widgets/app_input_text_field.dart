import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_styles.dart';
import 'package:recipe_app/ui/widgets/app_svg_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class AppTextInputField extends StatelessWidget {
  const AppTextInputField({
    super.key,
    required this.labelText,
    this.focusNode,
    this.autofocus = false,
    this.hintText,
    this.controller,
    this.enabled = true,
    this.obscureText = false,
    this.validator,
    this.prefix,
    this.maxLines,
    this.onFieldSubmitted,
    this.minLines,
    this.style,
    this.suffixSvg,
    this.focusColor,
    this.suffix,
    this.suffixIcon,
    this.errorMessage,
    this.readOnly = false,
    this.expands = false,
    this.keyboardType = TextInputType.text,
    this.textAlignVertical,
    this.onChange,
  });

  final Color? focusColor;
  final String? hintText;
  final String? errorMessage;
  final String labelText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? suffixSvg;
  final Widget? prefix;
  final bool readOnly;
  final bool enabled;
  final bool autofocus;
  final bool expands;
  final int? maxLines;
  final int? minLines;

  final bool obscureText;
  final TextStyle? style;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChange;
  final TextAlignVertical? textAlignVertical;

  @override
  Widget build(BuildContext context) {
    return buildAppFormField(context);
  }

  Widget buildAppFormField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: labelText,color:Colors.white,),
        12.heightBox,
        AppFormField(
          autofocus: autofocus,
          focusColor: focusColor,
          readOnly: readOnly,
          expands: expands,
          style: style,
          errorMessage: errorMessage,
          obscureText: obscureText,
          enabled: enabled,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: maxLines,
          minLines: minLines,
          keyboardType: keyboardType,
          hintText: hintText,
          suffix: suffix,
          suffixIcon: _buildSuffixIcon(),
          prefix: prefix,
          controller: controller,
          focusNode: focusNode,
          textAlignVertical: textAlignVertical,
          onChanged: onChange,
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon() {
    if (suffixIcon != null) return suffixIcon;
    if (suffixSvg != null) return AppSVGImage(image: suffixSvg!);

    return null;
  }
}

class AppFormField extends StatelessWidget {
  AppFormField({
    Key? key,
    this.autofocus = false,
    this.readOnly = false,
    this.expands = false,
    this.style,
    this.obscureText = false,
    this.enabled = true,
    this.validator,
    this.onFieldSubmitted,
    this.maxLines,
    this.minLines,
    this.keyboardType,
    this.decoration,
    this.focusColor,
    this.fillColor,
    this.hintText,
    this.suffix,
    this.suffixIcon,
    this.prefix,
    this.suffixWidthConstraints = 30,
    this.prefixWidthConstraints = 30,
    this.controller,
    this.focusNode,
    this.labelText,
    this.contentPadding,
    this.onChanged,
    this.errorMessage,
    this.textAlignVertical,
  }) : super(key: key);
  final String? errorMessage;
  final String? labelText;
  final bool autofocus;
  final bool readOnly;
  final bool expands;
  final TextStyle? style;
  final bool obscureText;
  final bool enabled;
  final Color? focusColor;
  final Color? fillColor;
  final EdgeInsets? contentPadding;
  final TextAlignVertical? textAlignVertical;
  final double suffixWidthConstraints;
  final double prefixWidthConstraints;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final String? hintText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefix;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;

  final InputBorder inputBorder = OutlineInputBorder(
    borderSide: const BorderSide(),
    borderRadius: AppCorners.xl3gBorder,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
          autofocus: autofocus,
          readOnly: readOnly,
          expands: expands,
          style: style ??
              const TextStyle(color: AppColors.white, fontSize: 12),
          obscureText: obscureText,
          enabled: enabled,
          onChanged: onChanged,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: maxLines,
          minLines: minLines,
          keyboardType: keyboardType,

          decoration: decoration ??
              InputDecoration(

                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                hintStyle: const TextStyle(color: AppColors.white),
                hintText: hintText,
                suffix: suffix,
                errorMaxLines: 2,
                suffixIcon: suffixIcon,
                prefixIcon: prefix,
                prefixIconConstraints: BoxConstraints(
                    maxHeight: 24, maxWidth: prefixWidthConstraints),
                suffixIconConstraints:
                    const BoxConstraints(maxHeight: 24, maxWidth: 60),
                labelStyle:  const TextStyle(color: AppColors.white),
                alignLabelWithHint: true,
                enabledBorder:const UnderlineInputBorder(
                  borderSide: BorderSide(color:AppColors.white),
                ),focusedBorder:const UnderlineInputBorder(
                  borderSide: BorderSide(color:AppColors.white),
                ),
                // filled: true,
              ),
          controller: controller,
          focusNode: focusNode,
        ),
        if (errorMessage != null) ...[
          4.heightBox,
          AppText(text: errorMessage ?? '',color: AppColors.white,fontSize: 12)
        ]
      ],
    );
  }
}
