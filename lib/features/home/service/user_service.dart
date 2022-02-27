import 'dart:io';

import 'package:dio/dio.dart';
import '../model/user_model.dart';
import 'user_service_end_points.dart';

import 'IUserService.dart';

class UserService extends IUserService {
  UserService(Dio dio) : super(dio);
  @override
  Future<UserModel> fetchUserItems(String username) async {
    final String rawValue = UserServiceEndPoints.USER.rawValue(username);

    final response = await dio.get(rawValue);

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      print(data['login']);
      return UserModel(
          login: data['login'],
          avatar_url: data['avatar_url'],
          url: data['url'],
          html_url: data['html_url'],
          name: data['name'],
          company: data['company'],
          blog: data['blog'],
          location: data['location'],
          email: data['email'],
          bio: data['bio'],
          twitter_username: data['twitter_username'],
          public_repos: data['public_repos'],
          followers: data['followers'],
          following: data['following']);
    }

    return UserModel();
  }
}
