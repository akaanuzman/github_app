// ignore_for_file: file_names

import 'package:dio/dio.dart';
import '../model/followers_model.dart';

abstract class IFollowersService {
  final Dio dio;

  IFollowersService(this.dio);

  Future<List<FollowersModel>> fetchAllFollowers(String username);
}
