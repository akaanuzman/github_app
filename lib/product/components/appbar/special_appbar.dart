import 'package:flutter/material.dart';
import '../../../core/components/text/headline6_text.dart';

class SpeacialAppBar extends AppBar {
  SpeacialAppBar({
    Key? key,
    required BuildContext context,
    required String title,
    IconThemeData? iconThemeData,
  }) : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          title: Headline6Text(context: context, data: title),
          iconTheme: iconThemeData,
          key: key,
        );
}
