import 'package:flutter/material.dart';

import '../../../core/extensions/app_extensions.dart';
import 'special_image.dart';

class ResponsiveImage extends AspectRatio {
  ResponsiveImage({
    Key? key,
    required String url,
    required BuildContext context,
  }) : super(
          key: key,
          aspectRatio: 1.75,
          child: Center(
            child: Material(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: context.highBorderRadius * 3,
              child: SpecialImage(url: url),
            ),
          ),
        );
}