import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class Headline4Text extends Text {
  Headline4Text({
    Key? key,
    required BuildContext context,
    required String data,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          data,
          key: key,
          style: context.textTheme.headline4!.copyWith(
            color: color ?? context.textColor,
            fontWeight: fontWeight ?? FontWeight.bold,
          ),
        );
}
