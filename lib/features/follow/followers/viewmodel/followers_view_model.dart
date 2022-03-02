import 'dart:async';

import '../../../../core/extensions/app_extensions.dart';

import '../../../../core/base/viewmodel/base_view_model.dart';
import '../model/followers_model.dart';
import '../service/IFollowersService.dart';
import '../service/followers_service.dart';

class FollowersViewModel extends BaseViewModel {
  late IFollowersService followersService;
  List<FollowersModel> followersModel = [];
  bool isLoad = false;

  @override
  void init() {
    Timer(context.durationSlow, loadScreen);
    followersService = FollowersService(networkManager.dio);
  }

  void fetchAllFollowers(String username) async {
    followersModel = await followersService.fetchAllFollowers(username);
    setState();
  }

  void loadScreen() {
    isLoad = !isLoad;
    setState();
  }
}
