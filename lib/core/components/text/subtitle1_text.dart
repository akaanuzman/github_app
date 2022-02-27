import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class Subtitle1Text extends Text {
  Subtitle1Text({
    Key? key,
    required BuildContext context,
    required String data,
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    String? fontFamily
  }) : super(
          data,
          key: key,
          style: context.textTheme.subtitle1!.copyWith(
            color: color ?? context.textColor,
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: fontSize,
            fontFamily: fontFamily
          ),
        );
}
