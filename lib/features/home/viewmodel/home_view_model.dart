import 'dart:async';
import 'package:flutter/material.dart';
import '../../../core/extensions/app_extensions.dart';
import '../../../core/base/viewmodel/base_view_model.dart';
import '../service/IUserService.dart';
import '../service/user_service.dart';

import '../model/user_model.dart';

class HomeViewModel extends BaseViewModel {
  late IUserService userService;
  late UserModel userModel;
  bool isLoad = false;
  bool isShowProfile = false;

  @override
  void init() {
    Timer(context.durationSlow, loadScreen);
    userService = UserService(networkManager.dio);
  }

  void fetchUserItems(String username) async {
    userModel = await userService.fetchUserItems(username);
    if (userModel.name != null) {
      isShowProfile = true;
      setState();
    }
    setState();
  }

  void loadScreen() {
    isLoad = !isLoad;
    setState();
  }
}
