import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';

class WrapIconText extends Wrap {
  WrapIconText({
    Key? key,
    required BuildContext context,
    required IconData icon,
    required String title,
    double? fontSize,
  }) : super(
          key: key,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: context.lowValue,
          children: [
            Icon(icon),
            FittedBox(
              child: Text(
                title,
                style: context.textTheme.subtitle2!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: fontSize),
                maxLines: 2,
              ),
            ),
          ],
        );
}
