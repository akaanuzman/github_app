import 'package:flutter/material.dart';

import '../../extensions/app_extensions.dart';

class PrimaryColorText extends Text {
  PrimaryColorText({
    Key? key,
    required String data,
    required BuildContext context,
  }) : super(
          data,
          key: key,
          style: TextStyle(
            color: context.primaryColor,
            fontWeight: FontWeight.w600
          ),
        );
}
