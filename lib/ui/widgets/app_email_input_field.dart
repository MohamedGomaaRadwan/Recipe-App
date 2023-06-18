import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/widgets/app_input_text_field.dart';
import 'package:recipe_app/ui/widgets/app_svg_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class AppEmailInputField extends StatelessWidget {
  const AppEmailInputField({
    required this.labelText,
    this.focusNode,
    this.autofocus = false,
    this.hintText,
    this.controller,
    this.enabled = true,
    this.validator,
    this.prefix,
    this.maxLines,
    this.onFieldSubmitted,
    this.minLines,
    this.style,
    this.suffixSvg,
    this.suffix,
    this.onChanged,
    this.suffixIcon,
    this.errorMessage,
    this.readOnly = false,
    this.expands = false,
    this.textAlignVertical,
  });

  final String? hintText;
  final String labelText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
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
  final String? errorMessage;
  final ValueChanged<String>? onChanged;

  final TextStyle? style;
  final ValueChanged<String>? onFieldSubmitted;
  final TextAlignVertical? textAlignVertical;

  @override
  Widget build(BuildContext context) {
    return buildAppFormField(context);
  }

  Widget buildAppFormField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: labelText,color: AppColors.white),
        12.heightBox,
        AppFormField(
          autofocus: autofocus,
          readOnly: readOnly,
          expands: expands,
          style: style,
          errorMessage: errorMessage,
          enabled: enabled,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: maxLines,
          onChanged: onChanged,
          minLines: minLines,
          hintText: hintText,
          suffix: suffix,
          suffixIcon: _buildSuffixIcon(),
          prefix: prefix,
          controller: controller,
          focusNode: focusNode,
          textAlignVertical: textAlignVertical,
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
