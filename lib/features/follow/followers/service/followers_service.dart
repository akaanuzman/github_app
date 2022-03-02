import 'dart:io';

import 'package:dio/dio.dart';

import '../model/followers_model.dart';
import 'IFollowersService.dart';
import 'followers_service_end_points.dart';

class FollowersService extends IFollowersService {
  FollowersService(Dio dio) : super(dio);

  @override
  Future<List<FollowersModel>> fetchAllFollowers(String username) async {
    final String rawValue =
        FollowersServiceEndPoints.FOLLOWERS.rawValue(username);
    final response = await dio.get(rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => FollowersModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
