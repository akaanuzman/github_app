import 'dart:async';

import '../../../../core/extensions/app_extensions.dart';

import '../../../../core/base/viewmodel/base_view_model.dart';
import '../model/following_model.dart';
import '../service/IFollowingService.dart';
import '../service/following_service.dart';

class FollowingViewModel extends BaseViewModel {
  late IFollowingService followingService;
  List<FollowingModel> followingModel = [];
  bool isLoad = false;

  @override
  void init() {
    Timer(context.durationSlow, loadScreen);
    followingService = FollowingService(networkManager.dio);
  }

  void fetchAllFollowing(String username) async {
    followingModel = await followingService.fetchAllFollowing(username);
    setState();
  }

  void loadScreen() {
    isLoad = !isLoad;
    setState();
  }
}
