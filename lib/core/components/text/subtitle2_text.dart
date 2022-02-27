import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class Subtitle2Text extends Text {
  Subtitle2Text({
    Key? key,
    required BuildContext context,
    required String data,
    FontWeight? fontWeight,
    double? fontSize,
    String? fontFamily
  }) : super(
          data,
          key: key,
          style: context.textTheme.subtitle2!.copyWith(
            fontWeight: fontWeight ?? FontWeight.bold,
            fontSize: fontSize,
            fontFamily: fontFamily
          ),
        );
}
