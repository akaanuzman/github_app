import 'package:flutter/material.dart';
import '../../../core/extensions/app_extensions.dart';

class SpecialIconButton extends IconButton {
  SpecialIconButton({
    Key? key,
    required BuildContext context,
    required IconData icon,
    void Function()? onTap,
  }) : super(
            icon: Icon(
              icon,
              color: context.secondaryTextColor,
            ),
            onPressed: onTap ?? () {},
            key: key);
}
