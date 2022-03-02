import 'dart:io';

import 'package:dio/dio.dart';

import '../model/following_model.dart';
import 'IFollowingService.dart';
import 'following_service_end_points.dart';

class FollowingService extends IFollowingService {
  FollowingService(Dio dio) : super(dio);

  @override
  Future<List<FollowingModel>> fetchAllFollowing(String username) async {
    final String rawValue =
        FollowingServiceEndPoints.FOLLOWING.rawValue(username);
    final response = await dio.get(rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => FollowingModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
