import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class BodyText1Text extends Text {
  BodyText1Text({
    Key? key,
    required BuildContext context,
    required String data,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          data,
          key: key,
          style: context.textTheme.bodyText1!.copyWith(
            color: color ?? context.textColor,
            fontWeight: fontWeight ?? FontWeight.bold,
          ),
        );
}
