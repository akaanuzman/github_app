// ignore_for_file: file_names

import 'package:dio/dio.dart';

import '../model/following_model.dart';

abstract class IFollowingService {
  final Dio dio;

  IFollowingService(this.dio);

  Future<List<FollowingModel>> fetchAllFollowing(String username);
}
