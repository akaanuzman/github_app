import 'package:flutter/material.dart';

import '../../extensions/app_extensions.dart';

class SkeletonContainer extends AspectRatio {
  SkeletonContainer({
    Key? key,
    required double aspectRaito,
    required BuildContext context,
  }) : super(
          key: key,
          aspectRatio: aspectRaito,
          child: Container(
            decoration: BoxDecoration(
              color: context.secondaryTextColor.withOpacity(0.5),
              borderRadius: context.lowBorderRadius,
            ),
          ),
        );
}
