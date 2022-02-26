import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class Headline5Text extends Text {
  Headline5Text({
    Key? key,
    required BuildContext context,
    required String data,
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
  }) : super(
          data,
          key: key,
          style: context.textTheme.headline5!.copyWith(
            color: color ?? context.textColor,
            fontWeight: fontWeight ?? FontWeight.w800,
            fontSize: fontSize
          ),
        );
}
