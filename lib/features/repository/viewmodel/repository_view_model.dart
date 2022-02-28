import 'dart:async';

import '../../../core/extensions/app_extensions.dart';
import '../model/repository_model.dart';
import '../service/IRepositoryService.dart';
import '../service/repository_service.dart';

import '../../../core/base/viewmodel/base_view_model.dart';

class RepositoryViewModel extends BaseViewModel {
  late IRepositoryService repositoryService;
  List<RepositoryModel> repositoryModel = [];
  bool isLoad = false;

  @override
  void init() {
    Timer(context.durationSlow, loadScreen);
    repositoryService = RepositoryService(networkManager.dio);
  }

  void fetchAllRepositoryItems(String username) async {
    repositoryModel = await repositoryService.fetchAllRepositoryItems(username);
    setState();
  }

  void loadScreen() {
    isLoad = !isLoad;
    setState();
  }
}
