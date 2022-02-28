import 'package:flutter/material.dart';

import '../../extensions/app_extensions.dart';
import '../../init/network/network_manager.dart';
import '../../utils/app_validators.dart';

abstract class BaseViewModel extends ChangeNotifier {
  late BuildContext context;

  NetworkManager get networkManager => NetworkManager.instance;
  AppValidators get appValidator => AppValidators.instance;


  void setState() {
    notifyListeners();
  }

  void setContext(BuildContext context) {
    this.context = context;
  }

  void init() {}

  TextStyle normalText(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w600,
        color: context.textColor,
      );

  TextStyle normalColorText(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w600,
        color: context.primaryColor,
      );
}
