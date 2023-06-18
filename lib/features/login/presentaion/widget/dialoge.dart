import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

Future<void> showMyDialog(BuildContext context, String message) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: AppText(text: AppStrings.loginAlert, fontSize: 20),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[AppText(text: message, fontSize: 14)],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: AppText(
                text: AppStrings.ok,
                color: AppColors.primaryColor,
                fontSize: 16),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}
